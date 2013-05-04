/*
 * fclose.c
 */

#include "stdioint.h"

/*@
 requires file != \null;
 requires valid_IO_file_pvt(stdio_pvt(file));

 // fflush assigns something..
 assigns stdio_pvt(file)->next->prev, stdio_pvt(file)->prev->next;
 
 ensures \result == 0 || \result -1; // depends of close syscall, maybe create 2 behaviors here?
 // como dizer que f esta free'd?
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
