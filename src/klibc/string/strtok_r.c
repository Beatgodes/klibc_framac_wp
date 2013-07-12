#include <string.h>

/*@
	requires \valid(holder);
	requires \valid(*holder);
	requires \exists integer i; Length_of_str_is(delim, i);
	requires s == \null || \exists integer i; Length_of_str_is(s, i);
	requires \separated(holder, s+(0..Length(s)), delim+(0..Length(delim)));
	assigns *holder, s[..];

@*/
char *strtok_r(char *s, const char *delim, char **holder)
{
	if (s)
		*holder = s;

	/*@
		loop invariant s != \null ==> \valid(holder);
		loop invariant s != \null ==> \at(s, Pre) <= *holder <= \at(s, Pre) + Length(\at(s, Pre));
		loop invariant s != \null ==> \base_addr(s) == \base_addr(*holder);
		loop invariant s != \null ==> \at(s, Pre) <= s <= \at(s, Pre) + Length(\at(s, Pre));
	@*/
	do {
		s = strsep(holder, delim);
	} while (s && !*s);

	return s;
}
