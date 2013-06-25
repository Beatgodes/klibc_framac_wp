/*
 * strpbrk
 */

#include <string.h>

#include "strxspn.h"

/*@
	requires \exists integer i; Length_of_str_is(s, i);
	requires \exists integer i; Length_of_str_is(accept, i);
	requires \separated(s+(0..Length(s)), accept+(0..Length(accept)));
	assigns \nothing;

	behavior exists:
		assumes \exists integer i; 0 <= i < Length(s) && char_in_str(accept, s[i]);
		ensures \forall integer i; 0 <= i < (\result - s) ==> !char_in_str(accept, s[i]);
		ensures char_in_str(accept, *\result);
		ensures s <= \result < s + Length(s);
		ensures \exists integer i; 0 <= i < Length(s) && char_in_str(accept, s[i]) && \result == s + i 
				&& (\forall integer j; 0 <= j < i ==> !char_in_str(accept, s[j]));
		ensures \base_addr(s) == \base_addr(\result);

	behavior not_exists:
		assumes \forall integer i; 0 <= i < Length(s) ==> !char_in_str(accept, s[i]);
		ensures \result == \null;

	complete behaviors;
	disjoint behaviors;

@*/
char *strpbrk(const char *s, const char *accept)
{
	const char *ss = s + __strxspn(s, accept, 1);
	//@ assert \base_addr(ss) == \base_addr(s);
	//@ assert s <= ss <= s + Length(s);
	return *ss ? (char *)ss : NULL;
}
