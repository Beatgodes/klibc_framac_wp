/*
 * strncpy.c
 */

#include <string.h>


/*@
	requires n >= 0;
	requires \exists integer i; Length_of_str_is(src, i);
	requires \valid(dst+(0..n-1));
	requires \separated(src+(0..n-1), dst+(0..n-1));
	assigns dst[0..n-1];

@*/
char *strncpy(char *dst, const char *src, size_t n)
{
	char *q = dst;
	const char *p = src;
	char ch;

	/*@
		loop invariant \at(n, Here) != \at(n, Pre) ==> ch != 0;
		loop invariant \base_addr(q) == \base_addr(dst);
		loop invariant \base_addr(p) == \base_addr(src);
		loop invariant src <= p <= src + \at(n, Pre);
		loop invariant dst <= q <= dst + \at(n, Pre);
		loop invariant p == src + (\at(n, Here) - \at(n, Pre));
		loop invariant q == dst + (\at(n, Here) - \at(n, Pre));
		loop invariant 0 <= \at(n, Here) <= \at(n, Pre);
		loop assigns n, q, ch, p, dst[0..(\at(n, Here) - \at(n, Pre))];
		loop variant n;
	@*/
	while (n) {
		n--;
		*q++ = ch = *p++;
		if (!ch)
			break;
	}

	/* The specs say strncpy() fills the entire buffer with NUL.  Sigh. */
	memset(q, 0, n);

	return dst;
}
