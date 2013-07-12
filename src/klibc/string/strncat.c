/*
 * strncat.c
 */

#include <string.h>
#include <klibc/compiler.h>

/*@
	requires n >= 0;
	requires \exists integer i; 0 <= i < n && Length_of_str_is(dst, i);

	behavior larger:
		assumes n >= Length(src);
		assumes \valid(dst + (0..(n-1+Length(src))));
		assumes \separated(src + (0..n-1+Length(src)), dst + (0..n-1));
		assumes \exists integer i; 0 <= i < n && Length_of_str_is(src, i);
		assigns dst[n..(Length(dst)-1+Length(src))];
		ensures \result == dst;
		ensures \forall integer i; Length(\old(dst)) <= i < Length(\old(dst)+Length(src)) ==> src[i] == dst[n+i];

	behavior smaller:
		assumes n < Length(src);
		assumes \valid(dst + (0..(n-1+n)));
		assumes \separated(src + (0..n-1+n), dst + (0..n-1));
		assumes \exists integer i; 0 <= i < n && Length_of_str_is(src, i);
		assigns dst[Length(dst)..(Length(dst)-1+n)];
		ensures \result == dst;
		ensures \forall integer i; Length(\old(dst)) <= i < Length(\old(dst))+n ==> src[i] == dst[n+i];

	complete behaviors;
	disjoint behaviors;
@*/
char *strncat(char *dst, const char *src, size_t n)
{
	char *q = strchr(dst, '\0');
	const char *p = src;
	char ch;

	/*@
		loop invariant 0 <= n <= \at(n,Pre);
     	loop invariant p == src+(\at(n, Pre) - n);
     	loop invariant q == dst + Length(\at(dst,Pre)) + (\at(n, Pre) - n);
     	loop invariant dst+\at(n,Pre) <= q <= dst + Length(\at(dst,Pre)) + \at(n,Pre);
     	loop invariant src <= p <= src+\at(n,Pre);
     	loop invariant \forall integer i; Length(\at(dst,Pre)) <= i < Length(\at(dst,Pre)) + (\at(n, Pre) - n) ==> dst[Length(\at(dst,Pre))+i] == src[i];
     	loop assigns p, q, ch, n, dst[Length(\at(dst,Pre))..Length(\at(dst,Pre))+\at(n,Pre)-n-1];
     	loop variant n;
	@*/
	while (/*n--*/n) {
		*q++ = ch = *p++;
		if (!ch)
			return dst;

		n--; // inserted code
	}
	*q = '\0';

	return dst;
}
