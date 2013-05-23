/*
 * fdopen.c
 *
 * Common code between fopen(), fdopen() and the standard descriptors.
 */

#include "stdioint.h"

FILE *stdin, *stdout, *stderr;

/* Doubly-linked list of all stdio structures */
struct _IO_file_pvt __stdio_headnode =
{
	.prev = &__stdio_headnode,
	.next = &__stdio_headnode,
};

/*@
	requires mode == \null || \exists integer i; Length_of_str_is(mode, i);
	requires fd >= 0;
	requires \valid(&__stdio_headnode);
	requires \valid(&(__stdio_headnode.prev));
	requires \valid(&(__stdio_headnode.next));
	assigns errno, __stdio_headnode.next;
	ensures \result != \null ==> valid_IO_file_pvt(stdio_pvt(\result));
	ensures \result != \null ==> \result == &(stdio_pvt(\result)->pub);
	ensures \result != \null ==> \result->_IO_fileno == fd;
	ensures \result != \null ==> stdio_pvt(\result)->bufmode == _IOLBF || stdio_pvt(\result)->bufmode == _IOFBF;
	ensures \result == \null ==> errno == ENOMEM;
@*/
FILE *fdopen(int fd, const char *mode)
{
	struct _IO_file_pvt *f;
	const size_t bufoffs =
		(sizeof *f + 4*sizeof(void *) - 1) &
		~(4*sizeof(void *) - 1);

	(void)mode;

	f = zalloc(bufoffs + BUFSIZ + _IO_UNGET_SLOP);
	if (!f)
		goto err;

	

	// assert \valid(f);
	// assert \valid(f+(0..bufoffs+BUFSIZ+_IO_UNGET_SLOP-1));
	// assert \forall integer i; 0 <= i < (bufoffs + BUFSIZ + _IO_UNGET_SLOP) ==> \valid(f+i);

	// start constructing a valid io_file_pvt
	f->data = f->buf = (char *)f + bufoffs;
	//@ assert f->buf <= f->data < f->buf + f->bufsiz + 32;
	//@ assert f->data == f->buf;
	//@ assert \valid(f->buf+(0..(16384+32-1)));
	//@ assert \base_addr(f->buf) == \base_addr(f->data);

	f->pub._IO_fileno = fd;
	// assert \valid(&(f->pub));
	// assert (f->pub)._IO_fileno >= 0;
	// assert (f->pub)._IO_fileno == fd;

	f->bufsiz = BUFSIZ;
	// assert f->bufsiz == BUFSIZ;
	// assert f->bufsiz == 16384;
	f->bufmode = isatty(fd) ? _IOLBF : _IOFBF;

	// assert f->bufmode == _IOLBF || f->bufmode == _IOFBF; // useless?
	/* Insert into linked list */
	f->prev = &__stdio_headnode;
	f->next = __stdio_headnode.next;
	//@ assert \separated(mode, f, f->next, f->prev, f->buf+(0..(f->bufsiz+32-1)));
	f->next->prev = f;
	__stdio_headnode.next = f;

	// assert 0 <= f->ibytes < f->bufsiz;
	// assert 0 <= f->obytes < f->bufsiz;
	// assert \separated(f, f->next, f->prev, f->buf+(0..(f->bufsiz+32-1)));
	// assert \separated(f, &__stdio_headnode);

	// assert valid_IO_file_pvt_norec(f->next) && f->next->prev == f;
	// assert valid_IO_file_pvt_norec(f->prev) && f->prev->next == f;
	// f->next e f->prev alguma vez ficam a NULL?
	// assert (f->next != NULL ==> (valid_IO_file_pvt_norec(f->next) && f->next->prev == f));
	// assert (f->prev != NULL ==> (valid_IO_file_pvt_norec(f->prev) && f->prev->next == f));


	return &f->pub;

err:
	if (f)
		free(f);
	errno = ENOMEM;
	return NULL;
}

/*@
	assigns stdin, stdout, stderr, stdio_pvt(stderr)->bufmode;
	ensures valid_FILE(stdin) && valid_FILE(stdout) && valid_FILE(stderr);
	ensures stdin->_IO_fileno == 0;
	ensures stdout->_IO_fileno == 1;
	ensures stderr->_IO_fileno == 2;
	ensures stdio_pvt(stderr)->bufmode == _IONBF;
@*/
void __init_stdio(void)
{
	stdin  = fdopen(0, NULL);
	stdout = fdopen(1, NULL);
	stderr = fdopen(2, NULL);
	stdio_pvt(stderr)->bufmode = _IONBF;
}
