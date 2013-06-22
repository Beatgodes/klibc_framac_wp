/*
 * fflush.c
 */

#include "stdioint.h"

/*@
	requires valid_IO_file_pvt(f);
	//assigns f->ibytes, f->pub._IO_eof, f->pub._IO_error, f->obytes, errno;
	ensures \result >= -1;

@*/
int __fflush(struct _IO_file_pvt *f)
{
	ssize_t rv;
	char *p;

	/*
	 * Flush any unused input data.  If there is input data, there
	 * won't be any output data.
	 */
	if (__unlikely(f->ibytes))
		return fseek(&f->pub, 0, SEEK_CUR);

	// assert \valid(f->buf+(0..(f->bufsiz+32-1)));
	p = f->buf;
	// assert \valid(f->buf+(0..(f->bufsiz+32-1)));
	// assert \valid(p+(0..(f->bufsiz+32-1)));
	// assert 0 <= f->obytes < f->bufsiz;

	rv = -1; // inserted code
	/*@
		loop invariant 0 <= f->obytes;
		loop invariant \base_addr(p) == \base_addr(f->buf);
		loop invariant -1 <= rv <= f->obytes;
		loop invariant \base_addr(f->buf) == \base_addr(f->data) == \base_addr(p);
		loop invariant f->buf <= p < f->buf + f->bufsiz + 32;
		loop invariant \valid(p+(0..f->obytes-1));
		loop assigns f->obytes, p, f->pub._IO_eof, f->pub._IO_error, rv, errno;
		loop variant f->obytes;
	@*/
	while (f->obytes) {
		rv = write(f->pub._IO_fileno, p, f->obytes);
		if (rv == -1) {
			if (errno == EINTR || errno == EAGAIN)
				continue;
			f->pub._IO_error = true;
			return EOF;
		} else if (rv == 0) {
			/* EOF on output? */
			f->pub._IO_eof = true;
			return EOF;
		}

		p += rv;
		f->obytes -= rv;
	}

	return 0;
}

/*@
	requires file == \null || file == &(stdio_pvt(file)->pub);
	requires valid_IO_file_pvt(stdio_pvt(file));
	assigns stdio_pvt(file)->ibytes, stdio_pvt(file)->pub._IO_eof, stdio_pvt(file)->pub._IO_error, stdio_pvt(file)->obytes, errno;
@*/
int fflush(FILE *file)
{
	struct _IO_file_pvt *f;

	if (__likely(file)) {
		f = stdio_pvt(file);
		return __fflush(f);
	} else {
		int err = 0;

		/*@
			loop invariant valid_IO_file_pvt(f);
			loop invariant f != &__stdio_headnode;
			loop assigns f, err;
		*/
		for (f = __stdio_headnode.next;
		     f != &__stdio_headnode;
		     f = f->next) {
			if (f->obytes)
				err |= __fflush(f);
		}
		return err;
	}
}


