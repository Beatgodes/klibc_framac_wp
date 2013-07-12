/*
 * strdup.c
 */

#include <string.h>
#include <stdlib.h>

/*@
	requires \exists integer i; Length_of_str_is(s,i);
	assigns \nothing;
	ensures \result != \null ==> \forall integer i; 0 <= i <= Length(s) ==> s[i] == \result[i];
@*/
char *strdup(const char *s)
{
	int l = strlen(s) + 1;
	char *d = malloc(l);
	//@ assert \separated(s+(0..Length(s)), d+(0..Length(s)));
	if (d)
		memcpy(d, s, l);

	return d;
}
