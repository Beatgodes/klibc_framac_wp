/*
 * ungetc.c
 */

#include "stdioint.h"

/*@
	requires file == &(stdio_pvt(file)->pub);
	requires valid_IO_file_pvt(stdio_pvt(file));
	requires -128 <= c <= 127;
	
	behavior fail:
		assumes stdio_pvt(file)->obytes != 0 || stdio_pvt(file)->data <= stdio_pvt(file)->buf;
		assigns \nothing;
		ensures \result == EOF;

	behavior success:
		assumes stdio_pvt(file)->obytes == 0 && stdio_pvt(file)->data > stdio_pvt(file)->buf;
		assigns stdio_pvt(file)->ibytes, stdio_pvt(file)->data, *(\at(stdio_pvt(file)->data, Pre)-1); 
		ensures stdio_pvt(file)->ibytes == \at(stdio_pvt(file)->ibytes, Pre) + 1;
		ensures stdio_pvt(file)->data == \at(stdio_pvt(file)->data, Pre) -1;
		ensures *(stdio_pvt(file)->data) == c;
		ensures \result == c;

	complete behaviors;
	disjoint behaviors;
@*/
int ungetc(int c, FILE *file)
{
	struct _IO_file_pvt *f = stdio_pvt(file);

	if (f->obytes || f->data <= f->buf)
		return EOF;

	*(--f->data) = c;
	//@ assert f->data == \at(f->data, Pre) -1;
	f->ibytes++;
	//@ assert f->ibytes == \at(f->ibytes, Pre) + 1;
	return c;
}
