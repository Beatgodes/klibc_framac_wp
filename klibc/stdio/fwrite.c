/*
 * fwrite.c
 */

#include <string.h>
#include "stdioint.h"

/*@
	requires count >= 0;
	requires \valid(((char*)buf)+(0..count-1));
	requires valid_IO_file_pvt(f);
	assigns f->pub._IO_error, f->pub._IO_eof, f->obytes, f->buf[..];
	ensures \result >= 0;
	
@*/
static size_t fwrite_noflush(const void *buf, size_t count,
			     struct _IO_file_pvt *f)
{
	size_t bytes = 0;
	size_t nb;
	const char *p = buf;
	ssize_t rv;


	/*@
		loop invariant rv == -1 ==> (errno == EINTR || errno == EAGAIN);
		loop invariant -1 <= rv;
		loop invariant 0 <= nb <= count;
		loop invariant \base_addr(p) == \base_addr((char*)buf);
		loop invariant \at((char*)buf, Pre) <= p <= \at((char*)buf, Pre) + \at(count, Pre);
		loop invariant 0 <= \at(count, Here) <= \at(count, Pre);
		loop assigns count, rv, errno, f->pub._IO_error, f->pub._IO_eof, p, bytes, nb, f->obytes;
		loop variant count;
	@*/
	while (count) {
		if (f->ibytes || f->obytes >= f->bufsiz)
			if (__fflush(f))
				break;

		if (f->obytes == 0 && count >= f->bufsiz) {
			/*
			 * The buffer is empty and the write is large,
			 * so bypass the buffering entirely.
			 */
			rv = write(f->pub._IO_fileno, p, count);
			if (rv == -1) {
				if (errno == EINTR || errno == EAGAIN)
					continue;
				f->pub._IO_error = true;
				break;
			} else if (rv == 0) {
				/* EOF on output? */
				f->pub._IO_eof = true;
				break;
			}

			p += rv;
			bytes += rv;
			count -= rv;
		} else {
			nb = f->bufsiz - f->obytes;
			nb = (count < nb) ? count : nb;
			if (nb) {
				memcpy(f->buf+f->obytes, p, nb);
				p += nb;
				f->obytes += nb;
				count -= nb;
				bytes += nb;
			}
		}
	}
	return bytes;
}
/*@
	requires file == &(stdio_pvt(file)->pub);
	requires valid_IO_file_pvt(stdio_pvt(file));
	requires \valid(((char*)buf)+(0..count-1));
	requires count >= 0;

	behavior iofbf:
		assumes stdio_pvt(file)->bufmode == _IOFBF;

	behavior iolbf:
		assumes stdio_pvt(file)->bufmode == _IOLBF;

	behavior ionbf:
		assumes stdio_pvt(file)->bufmode == _IONBF;

	behavior def:
		assumes stdio_pvt(file)->bufmode != _IOFBF &&
				stdio_pvt(file)->bufmode != _IOLBF &&
				stdio_pvt(file)->bufmode != _IONBF;

	complete behaviors;
	disjoint behaviors;

@*/
size_t _fwrite(const void *buf, size_t count, FILE *file)
{
	struct _IO_file_pvt *f = stdio_pvt(file);
	size_t bytes = 0;
	size_t pf_len, pu_len;
	const char *p = buf;

	/* We divide the data into two chunks, flushed (pf)
	   and unflushed (pu) depending on buffering mode
	   and contents. */

	switch (f->bufmode) {
	case _IOFBF:
		pf_len = 0;
		pu_len = count;
		break;

	case _IOLBF:
		pf_len = count;
		pu_len = 0;

		/*@
			loop invariant \forall integer i; pf_len < i <= count ==> p[i-1] != '\n';
			loop invariant 0 <= pf_len <= count;
			loop invariant 0 <= pu_len <= count;
			loop invariant pu_len == count - pf_len;
			loop assigns pf_len, pu_len;
			loop variant pf_len;
		@*/
		while (pf_len && p[pf_len-1] != '\n') {
			pf_len--;
			pu_len++;
		}
		break;

	case _IONBF:
	default:
		pf_len = count;
		pu_len = 0;
		break;
	}

	if (pf_len) {
		bytes = fwrite_noflush(p, pf_len, f);
		p += bytes;

		//@ assert \valid(f);
		//@ assert f->bufsiz == 16384;
		//@ assert 0 <= f->ibytes < f->bufsiz;
		//@ assert 0 <= f->obytes < f->bufsiz;
		//@ assert valid_FILE(&(f->pub));
		//@ assert \separated(f, f->next, f->prev, f->buf+(0..(f->bufsiz+32-1)));
		//@ assert f->buf <= f->data < f->buf + f->bufsiz + 32;
		//@ assert stdio_pvt(&(f->pub)) == f;
		//@ assert valid_IO_file_pvt_norec(f->next) && f->next->prev == f;
		//@ assert \base_addr(f->data) == \base_addr(f->buf);
		//@ assert valid_IO_file_pvt_norec(f->prev) && f->prev->next == f;
		//@ assert \valid(f->buf+(0..(f->bufsiz+32-1)));

		if (__fflush(f) || bytes != pf_len)
			return bytes;
	}

	if (pu_len)
		bytes += fwrite_noflush(p, pu_len, f);

	return bytes;
}
