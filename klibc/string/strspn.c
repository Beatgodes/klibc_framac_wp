/*
 * strspn
 */

#include <string.h>

#include "strxspn.h"

/*@
	requires \exists integer i; Length_of_str_is(s,i);
	requires \exists integer i; Length_of_str_is(accept,i);
	requires \separated(s+(0..Length(s)), accept+(0..Length(accept)));
	assigns \nothing;
	ensures \forall integer i; 0 <= i < \result ==> char_in_str(accept, s[i]);
	ensures !char_in_str(accept, s[\result]);
	ensures 0 <= \result <= Length(s);
@*/
size_t strspn(const char *s, const char *accept)
{
	return __strxspn(s, accept, 0);
}
