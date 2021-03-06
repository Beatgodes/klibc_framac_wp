#include "stdioint.h"

/*@
	requires valid_FILE(file);
	requires file == &(stdio_pvt(file)->pub);
	requires valid_IO_file_pvt(stdio_pvt(file));
	assigns errno;
	ensures \result == -1 || \result <= 0 || \result >= ((int)stdio_pvt(file)->obytes - (int)stdio_pvt(file)->ibytes);
@*/
off_t ftell(FILE *file)
{
	struct _IO_file_pvt *f = stdio_pvt(file);
	off_t pos = lseek(f->pub._IO_fileno, 0, SEEK_CUR);
	//@ assert valid_IO_file_pvt(stdio_pvt(file));
	if (pos >= 0)
		pos += (int)f->obytes - (int)f->ibytes;

	return pos;
}
