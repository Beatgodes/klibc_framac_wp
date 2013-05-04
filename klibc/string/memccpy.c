/*
 * memccpy.c
 *
 * memccpy()
 */

#include <stddef.h>
#include <string.h>

/*@
	requires n > 0;
	requires -128 <= c <= 127;
	requires \separated(((char*)src)+(0..n-1), ((char*)dst)+(0..n-1));
    requires \valid(((char*)dst)+(0..n-1));
    requires \valid(((char*)src)+(0..n-1));

	behavior exists_c:
		assumes \exists integer i; 0 <= i < n && ((char*)src)[i] == (char)c;
		assigns ((char*)dst)[0..PosOfChar((char*)src, c)];
    	ensures \exists integer i; 0 <= i < n && ((char*)src)[i] == (char)c && 
    			\result == ((char*)dst)+i+1 &&
            	(\forall integer j; 0 <= j < i ==> ((char*)src)[j] != (char)c) &&
            	(\forall integer j; 0 <= j <= i ==> ((char*)src)[j] == ((char*)dst)[j]);

	behavior not_exists_c:
		assumes \forall integer i; 0 <= i < n ==> ((char*)src)[i] != (char)c;
		assigns ((char*)dst)[0..n-1];
		ensures \result == \null;
		ensures \forall integer i; 0 <= i < n ==> ((char*)dst)[i] == ((char*)src)[i];

	complete behaviors;
	disjoint behaviors;
@*/
void *memccpy(void *dst, const void *src, int c, size_t n)
{
	char *q = dst;
	const char *p = src;
	char ch;

	/*@
		loop invariant 0 <= n <= \at(n, Pre);
		loop invariant (char*)dst <= q <= ((char*)dst)+\at(n,Pre);
		loop invariant q == (char*)dst + (\at(n,Pre) - n);
		loop invariant (char*)src <= p <= ((char*)src)+\at(n,Pre);
		loop invariant p == (char*)src + (\at(n,Pre) - n);
		loop invariant \forall integer i; 0 <= i < (\at(n,Pre) - n) ==> ((char*)dst)[i] != (char)c;
		loop invariant \forall integer i; 0 <= i < (\at(n,Pre) - n) ==> ((char*)dst)[i] == ((char*)src)[i];
		loop assigns q, ch, p, n, ((char*)dst)[0..(\at(n,Pre)- n - 1)];
		loop variant n;
	@*/
	while (n/*n--*/) {
		*q++ = ch = *p++;
		if (ch == (char)c)
			return q;

		n--; //inserted code
	}

	return NULL;		/* No instance of "c" found */
}
