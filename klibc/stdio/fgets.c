/*
 * fgets.c
 */

#include <stdio.h>

/*@
	requires valid_FILE(f);
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
