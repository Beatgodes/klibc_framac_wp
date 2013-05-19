/*
 * fclose.c
 */

#include "stdioint.h"

/*@
	requires file == &(stdio_pvt(file)->pub);
	requires valid_IO_file_pvt(stdio_pvt(file));
	assigns stdio_pvt(file)->next->prev, stdio_pvt(file)->prev->next;
 	ensures \result == 0 || \result -1;
 @*/
int fclose(FILE *file)
{
	struct _IO_file_pvt *f = stdio_pvt(file);
	int rv;

	fflush(file);

	rv = close(f->pub._IO_fileno);

	/* Remove from linked list */
	f->next->prev = f->prev;
	f->prev->next = f->next;

	free(f);
	return rv;
}
