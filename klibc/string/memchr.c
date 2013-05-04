/*
 * memchr.c
 */

#include <stddef.h>
#include <string.h>


/*@
	requires n > 0;
	requires -128 <= c <= 127;
	requires \valid(((char*)s)+(0..n-1));
	assigns \nothing;

	behavior found:
		assumes \exists integer i; 0 <= i < n && ((char*)s)[i] == (char)c;
		ensures \exists integer i; Exists_first_occurence_of_char((char*)s, c, i) && ((char*)\result) == ((char*)s)+i;
		ensures *((char*)\result) == (char)c;

	behavior not_found:
		assumes \forall integer i; 0 <= i < n ==> ((char*)s)[i] != (char)c;
		ensures \result == \null;

	complete behaviors;
	disjoint behaviors;
@*/
void *memchr(const void *s, int c, size_t n)
{
	const /*unsigned*/ char *sp = s;

	/*@
		loop invariant (char*)s <= sp <= ((char*)s) + \at(n, Pre);
		loop invariant sp == ((char*)s) + (\at(n, Pre) - n);
		loop invariant 0 <= n <= \at(n, Pre);
		loop invariant \forall integer i; 0 <= i < (\at(n, Pre) - n) ==> ((char*)s)[i] != (char)c;
		loop assigns sp, n;
		loop variant n;
	@*/
	while (n/*n--*/) {
		if (*sp == (/*unsigned*/ char)c)
			return (void *)sp;
		sp++;

		n--; // inserted code
	}

	return NULL;
}
