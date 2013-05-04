/*
 * memrchr.c
 */

#include <stddef.h>
#include <string.h>

/*@
	requires \valid(((char*)s)+(0..n-1));
	requires -128 <= c < 127;
	requires n >= 0;
	assigns \nothing;

	behavior not_exists:
		assumes \forall integer i; 0 <= i < n ==> ((char*)s)[i] != c;
		ensures \result == \null;

	behavior exists:
		assumes \exists integer i; 0 <= i < n && ((char*)s)[i] == c;
		ensures \exists integer i; 0 <= i < n ==> ((char*)s)[i] == c &&
				\result == s+i &&
				\forall integer j; i < j < n ==> ((char*)s)[i] != c;

	complete behaviors;
	disjoint behaviors;

@*/
void *memrchr(const void *s, int c, size_t n)
{
	const /*unsigned*/ char *sp = (const /*unsigned*/ char *)s + n - 1;


	/*@
		loop invariant sp == (char*)s + n - 1;
		loop invariant 0 <= n <= \at(n, Pre);
		loop invariant \forall integer i; n <= i < \at(n, Pre) ==> ((char*)s)[i] != c;
		loop assigns n, sp;
		loop variant n;
	@*/
	while (n/*n--*/) {
		if (*sp == (/*unsigned*/ char)c)
			return (void *)sp;
		sp--;
		n--; //inserted code
	}

	return NULL;
}
