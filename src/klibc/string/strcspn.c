/*
 * strcspn
 */

#include <string.h>

#include "strxspn.h"

/*@
	requires \exists integer i; Length_of_str_is(s,i);
	requires \exists integer i; Length_of_str_is(reject,i);
	requires \separated(s+(0..Length(s)), reject+(0..Length(reject)));
	assigns \nothing;
	ensures \forall integer i; 0 <= i < \result ==> !char_in_str(reject, s[i]);
	ensures char_in_str(reject, s[\result]);
	ensures 0 <= \result <= Length(s);

@*/
size_t strcspn(const char *s, const char *reject)
{
	return __strxspn(s, reject, 1);
}
