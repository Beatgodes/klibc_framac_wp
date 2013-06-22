/*
 * fseek.c
 */

#include "stdioint.h"

/*@
	requires file == &(stdio_pvt(file)->pub);
	requires valid_IO_file_pvt(stdio_pvt(file));
	requires whence == SEEK_SET || whence == SEEK_CUR || whence == SEEK_END;
	requires where >= 0;

	//assigns stdio_pvt(file)->ibytes, stdio_pvt(file)->pub._IO_eof, stdio_pvt(file)->pub._IO_error, 
	//		stdio_pvt(file)->obytes, file->_IO_eof, file->_IO_error;
	ensures \result == 0 || \result == -1;

@*/
__extern int fseek(FILE *file, off_t where, int whence)
{
	struct _IO_file_pvt *f = stdio_pvt(file);
	off_t rv;
	// assert file == &(stdio_pvt(file)->pub);
	// assert &(f->pub) == file; 

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
