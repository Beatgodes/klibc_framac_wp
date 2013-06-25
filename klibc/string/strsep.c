/*
 * strsep.c
 */

#include <string.h>

/*@
	requires \valid(stringp);
	requires \exists integer i; Length_of_str_is(delim, i);
	requires \separated(stringp, (*stringp)+(0..Length(*stringp)), delim+(0..Length(delim)));

	assigns *stringp, (*stringp)[..];

	behavior null:
		assumes *stringp == \null;
		ensures \result == \null;

	behavior not_null_found:
		assumes \valid(stringp);
		assumes \exists integer i; Length_of_str_is(*stringp, i);
		assumes \exists integer i; Length_of_str_is(delim, i);
		assumes \separated(stringp, (*stringp)+(0..Length(*stringp)), delim+(0..Length(delim)));
		assumes \exists integer i; 0 <= i <= Length(*stringp) && char_in_str(delim, (*stringp)[i]);
		ensures \result == \at(*stringp, Pre);
		ensures \base_addr(\result) == \base_addr(\at(*stringp, Pre));
		ensures \base_addr(\result) == \base_addr(\at(*stringp, Here));
		ensures (\at(*stringp, Here) - 1) == 0;

	behavior not_null_not_found:
		assumes \valid(stringp);
		assumes \exists integer i; Length_of_str_is(*stringp, i);
		assumes \exists integer i; Length_of_str_is(delim, i);
		assumes \separated(stringp, (*stringp)+(0..Length(*stringp)), delim+(0..Length(delim)));
		assumes \forall integer i; 0 <= i <= Length(*stringp) && !char_in_str(delim, (*stringp)[i]);
		ensures \result == \at(*stringp, Pre);
		ensures \base_addr(\result) == \base_addr(\at(*stringp, Pre));
		ensures \base_addr(\result) == \base_addr(\at(*stringp, Here));
		//ensures (\at(*strignp, Here) - 1) == 0;


	complete behaviors;
	disjoint behaviors;
@*/
char *strsep(char **stringp, const char *delim)
{
	char *s = *stringp;
	char *e;

	if (!s)
		return NULL;

	e = strpbrk(s, delim);
	if (e)
		*e++ = '\0';

	*stringp = e;
	return s;
}
