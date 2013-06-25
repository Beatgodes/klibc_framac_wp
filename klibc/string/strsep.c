/*
 * strsep.c
 */

#include <string.h>

/*@
	behavior null:
		assumes *stringp == \null;
		assigns \nothing;
		ensures \result == \null;
	behavior no_delim_found:
		assumes \exists integer i; Length_of_str_is(*stringp, i);
		assumes \exists integer i; Length_of_str_is(delim, i);
		assumes \forall integer i; 0 <= i < Length(*stringp) && !char_in_str(delim, (*stringp)[i]);
		assumes \separated(delim+(0..Length(delim)), *stringp+(0..Length(*stringp)));
		assigns *stringp; // proved with cvc3
		ensures \result == \null; // proved with cvc3
		ensures *stringp == \null; // proved with z3
	behavior delim_found:
		assumes \exists integer i; Length_of_str_is(*stringp, i);
		assumes \exists integer i; Length_of_str_is(delim, i);
		assumes \exists integer i; 0 <= i < Length(*stringp) && char_in_str(delim, (*stringp)[i]);
		assumes \separated(delim+(0..Length(delim)), *stringp+(0..Length(*stringp)));
		assigns *stringp;
		ensures \result != \null;
		ensures Length(\result) == Length(\old(*stringp)) - (\result - \old(*stringp));
		ensures char_in_str(delim, *\result);
		

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
