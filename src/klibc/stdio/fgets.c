/*
 * fgets.c
 */

#include <stdio.h>

#include <stdioint.h>


/*@
	requires valid_FILE(f);
	requires f != \null;
	requires f == &(stdio_pvt(f)->pub);
	requires valid_IO_file_pvt(stdio_pvt(f));
	ensures \result == s;
@*/
char *fgets(char *s, int n, FILE *f)
{
	int ch;
	char *p = s;

	/*@
		loop invariant \base_addr(p) == \base_addr(s);
		loop invariant p <= s <= p + \at(n, Pre);
		loop assigns n, ch, p, p[0..(\at(n, Pre) - \at(n, Here) - 1)];
		loop variant n;
	@*/
	while (n > 1) {
		ch = getc(f);
		if (ch == EOF) {
			s = NULL;
			break;
		}
		*p++ = ch;
		n--;
		if (ch == '\n')
			break;
	}
	if (n)
		*p = '\0';

	return s;
}
