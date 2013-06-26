/*
 * strsep.c
 */

#include <string.h>

/*@
	requires \valid(stringp);
	requires \exists integer i; Length_of_str_is(delim, i);
	requires *stringp == \null || \valid(*stringp);

	behavior null:
		assumes *stringp == \null;
		assigns \nothing;
		ensures \result == \null;

	behavior found:
		assumes \valid(*stringp);
		assumes \exists integer i; Length_of_str_is(delim, i);
		assumes \exists integer i; Length_of_str_is(*stringp, i);
		assumes \exists integer i; 0 <= i < Length(*stringp) && char_in_str(delim, (*stringp)[i]);
		assumes \separated(stringp, *stringp, (*stringp)+(0..Length(*stringp)), delim+(0..Length(delim)));
		assigns *stringp, (*stringp)[..];
		ensures \result == \at(*stringp, Pre);
		ensures *(\at(*stringp, Here) - 1) == 0;
		ensures char_in_str(delim, *(\at(*stringp, Here)));

	behavior not_found:
		assumes \valid(*stringp);
		assumes \exists integer i; Length_of_str_is(delim, i);
		assumes \exists integer i; Length_of_str_is(*stringp, i);
		assumes \forall integer i; 0 <= i < Length(*stringp) ==> !char_in_str(delim, (*stringp)[i]);
		assumes \separated(stringp, *stringp, (*stringp)+(0..Length(*stringp)), delim+(0..Length(delim)));
		assigns *stringp;
		ensures \result == \at(*stringp, Pre);
		ensures \at(*stringp, Here) == \null;

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

	if (e){
		//@ assert e != \null;
		//@ assert \base_addr(s) == \base_addr(e);
		//@ assert s <= e <= s + Length(s);
		*e++ = '\0';

	}

	*stringp = e;
	
	return s;
}
