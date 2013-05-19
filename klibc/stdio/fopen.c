/*
 * fopen.c
 */

#include "stdioint.h"

/*@
	requires \exists integer i; Length_of_str_is(mode, i);
	assigns \nothing;
@*/
static int __parse_open_mode(const char *mode)
{
	int rwflags = O_RDONLY;
	int crflags = 0;
	int eflags  = 0;

	/*@
		loop invariant \base_addr(\at(mode, Pre)) == \base_addr(\at(mode, Here));
		loop invariant \forall integer i; 0 <= i < \at(mode, Here) - \at(mode, Pre) ==> \at(mode[i], Pre) != 0;
		loop invariant \at(mode, Pre) <= \at(mode, Here) <= \at(mode, Pre) + Length(\at(mode, Pre));
		loop invariant \at(mode, Here) == \at(mode, Pre) + (\at(mode, Here) - \at(mode, Pre));
		loop assigns rwflags, crflags, eflags, mode;
		loop variant Length(\at(mode, Pre)) - (\at(mode, Here) - \at(mode, Pre));
	@*/
	while (*mode) {
		switch (*mode++) {
		case 'r':
			rwflags = O_RDONLY;
			crflags = 0;
			break;
		case 'w':
			rwflags = O_WRONLY;
			crflags = O_CREAT | O_TRUNC;
			break;
		case 'a':
			rwflags = O_WRONLY;
			crflags = O_CREAT | O_APPEND;
			break;
		case 'e':
			eflags |= O_CLOEXEC;
			break;
		case 'x':
			eflags |= O_EXCL;
			break;
		case '+':
			rwflags = O_RDWR;
			break;
		}
	}

	return rwflags | crflags | eflags;
}

/*@
	requires \exists integer i; Length_of_str_is(file, i);
	requires \exists integer i; Length_of_str_is(mode, i);
	assigns errno, __stdio_headnode.next;
	ensures \result == \null || (valid_FILE(\result) && valid_IO_file_pvt(stdio_pvt(\result)));

@*/
FILE *fopen(const char *file, const char *mode)
{
	int flags = __parse_open_mode(mode);
	int fd, err;
	FILE *f;

	fd = open(file, flags, 0666);
	if (fd < 0)
		return NULL;

	f = fdopen(fd, mode);
	if (!f) {
		err = errno;
		close(fd);
		errno = err;
	}
	return f;
}
