/*
 * strdup.c
 */

#include <string.h>
#include <stdlib.h>

/*@
	requires \exists integer i; Length_of_str_is(s,i);
	assigns \nothing;
	ensures \forall integer i; 0 <= i <= Length(s) ==> s[i] == \result[i];
@*/
char *strdup(const char *s)
{
	int l = strlen(s) + 1;
	char *d = malloc(l);

	if (d)
		memcpy(d, s, l);

	return d;
}
