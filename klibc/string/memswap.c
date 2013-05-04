/*
 * memswap()
 *
 * Swaps the contents of two nonoverlapping memory areas.
 * This really could be done faster...
 */

#include <string.h>

/*@
	requires n >= 0;
	requires \valid(((char*)m1)+(0..n-1));
	requires \valid(((char*)m2)+(0..n-1));
	requires \separated(((char*)m1)+(0..n-1), ((char*)m2)+(0..n-1));
	assigns ((char*)m1)[0..n-1];
	assigns ((char*)m2)[0..n-1];
	ensures \forall integer i; 0 <= i < n ==> ((char*)m1)[i] == \old(((char*)m2)[i]);
	ensures \forall integer i; 0 <= i < n ==> ((char*)m2)[i] == \old(((char*)m1)[i]);
@*/
void memswap(void *m1, void *m2, size_t n)
{
	char *p = m1;
	char *q = m2;
	char tmp;

	/*@
		loop invariant 0 <= n <= \at(n, Pre);
		loop invariant p == m1+(\at(n, Pre) - n);
		loop invariant q == m2+(\at(n, Pre) - n);
  		loop invariant \forall integer i; 0 <= i < (\at(n, Pre) - n) ==> ((char*)m2)[i] == \at(((char*)m1)[i], Pre);
   		loop invariant \forall integer i; 0 <= i < (\at(n, Pre) - n) ==> ((char*)m1)[i] == \at(((char*)m2)[i], Pre);
    	loop invariant \forall integer i; (\at(n, Pre) - n) <= i < \at(n, Pre) ==> ((char*)m1)[i] == \at(((char*)m1)[i], Pre);
    	loop invariant \forall integer i; (\at(n, Pre) - n) <= i < \at(n, Pre) ==> ((char*)m2)[i] == \at(((char*)m2)[i], Pre);
    	loop assigns n, tmp, ((char*)m1)[0..(\at(n, Pre) - n - 1)], ((char*)m2)[0..(\at(n, Pre) - n - 1)], p, q;
		loop variant n;
	@*/
	while (/*n--*/ n) {
		tmp = *p;
		*p = *q;
		*q = tmp;

		p++;
		q++;

		n--; // inserted code
	}
}
