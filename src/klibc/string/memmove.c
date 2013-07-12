/*
 * memmove.c
 */

#include <string.h>

/*@
	requires n >= 0;
	requires \valid(((char*)dst)+(0..n-1));
	requires \valid(((char*)src)+(0..n-1));
	// this function does not requires \separate. refer to manpages

	assigns ((char*)dst)[0..n-1];
	ensures \forall integer i; 0 <= i < n ==> ((char*)dst)[i] == \old(((char*)src)[i]);
	ensures \result == dst;
@*/
void *memmove(void *dst, const void *src, size_t n)
{
	const char *p = src;
	char *q = dst;

/*
#if defined(__i386__) || defined(__x86_64__)
	if (q < p) {
		asm volatile("cld; rep; movsb"
			     : "+c" (n), "+S"(p), "+D"(q));
	} else {
		p += (n - 1);
		q += (n - 1);
		asm volatile("std; rep; movsb; cld"
			     : "+c" (n), "+S"(p), "+D"(q));
	}
#else
*/
	if (q < p) {
		/*@
			loop invariant \base_addr(p) == \base_addr(src);
			loop invariant \base_addr(q) == \base_addr(dst);
			loop invariant q < p;
			loop invariant 0 <= n <= \at(n, Pre);
			loop invariant p == ((char*)src)+(\at(n, Pre) - n);
			loop invariant q == ((char*)dst)+(\at(n, Pre) - n);
			loop invariant (char*)src <= p <= (char*)src+\at(n, Pre);
			loop invariant (char*)dst <= q <= (char*)dst+\at(n, Pre);
			loop invariant \forall integer i; 0 <= i < (\at(n, Pre) - n) ==> ((char*)dst)[i] == \at(((char*)src)[i], Pre);
			loop invariant \forall integer i; (\at(n, Pre) - n) <= i < \at(n, Pre) ==> ((char*)dst)[i] == \at(((char*)dst)[i], Pre);
			loop assigns p, q, n, ((char*)dst)[0..(\at(n, Pre) - n -1)];
			loop variant n;
		@*/
		while (/*n--*/n) {
			*q++ = *p++;
			n--; // inserted code
		}
	} else {
		p += n;
		q += n;

		/*@
			loop invariant \base_addr(p) == \base_addr(src);
			loop invariant \base_addr(q) == \base_addr(dst);
			loop invariant 0 <= n <= \at(n, Pre);
			loop invariant p == ((char*)src) + n;
			loop invariant q == ((char*)dst) + n;
			loop invariant (char*)src <= p <= (char*)src+\at(n, Pre);
			loop invariant (char*)dst <= q <= (char*)dst+\at(n, Pre);
			loop invariant \forall integer i; n <= i < \at(n, Pre) ==> ((char*)dst)[i] == \at(((char*)src)[i], Pre);
			loop invariant \forall integer i; 0 <= i < n ==> ((char*)dst)[i] == \at(((char*)dst)[i], Pre);
			loop assigns p, q, n, ((char*)dst)[n..(\at(n, Pre)-1)];
			loop variant n;
		@*/
		while (/*n--*/n) {
			*--q = *--p;
			n--; // inserted code
		}
	}
//#endif

	return dst;
}
