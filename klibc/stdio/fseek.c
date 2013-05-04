/*
 * fseek.c
 */

#include "stdioint.h"

/*@
	requires file != \null;
	requires whence == SEEK_SET || whence == SEEK_CUR || whence == SEEK_END;
	requires valid_IO_file_pvt(stdio_pvt(file));

	behavior obyte_error:
		assumes stdio_pvt(file)->obytes != 0;
		assigns \nothing; // false.. fflush assigns stuff
		ensures \result == -1;

	behavior other:
		assumes stdio_pvt(file)->obytes == 0;
		assigns stdio_pvt(file)->ibytes, stdio_pvt(file)->pub._IO_eof, stdio_pvt(file)->pub._IO_error;
		ensures \result == 0 || \result == -1;
    ensures (stdio_pvt(file)->pub._IO_eof == 0 && stdio_pvt(file)->ibytes == 0) || (stdio_pvt(file)->pub._IO_error == 1); // isto nao deveria ser valid? :/ // adicionar outro behavior que depende do return value de lseek
	complete behaviors;
	disjoint behaviors;
@*/
__extern int fseek(FILE *file, off_t where, int whence)
{
	struct _IO_file_pvt *f = stdio_pvt(file);
	off_t rv;

	if (f->obytes)
		if (__fflush(f))
			return -1;

	if (whence == SEEK_CUR)
		where -= f->ibytes;

	rv = lseek(f->pub._IO_fileno, where, whence);
	if (__likely(rv >= 0)) {
		f->pub._IO_eof = false;
		f->ibytes = 0;
		return 0;
	} else {
		f->pub._IO_error = true;
		return -1;
	}
}
