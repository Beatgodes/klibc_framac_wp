/*
 * strcmp.c
 */

#include <string.h>

/*@
  requires \exists integer i; Length_of_str_is(s1,i);
  requires \exists integer i; Length_of_str_is(s2,i);
  requires \separated(s1+(0..Length(s1)), s2+(0..Length(s2)));

  assigns \nothing;

  behavior eq:
	assumes \exists integer i; Length_of_str_is(s1,i) && Length_of_str_is(s2,i) &&
		  \forall integer j; 0 <= j <= i ==> s1[j] == s2[j];
	ensures \result == 0;

  behavior not_eq_i_j:
	assumes \exists integer i,j; i != j && Length_of_str_is(s1,i) && Length_of_str_is(s2,j);
	ensures \result != 0;

  behavior not_eq:
	assumes \exists integer i; Length_of_str_is(s1,i) && Length_of_str_is(s2,i) &&
		  \exists integer j; 0 <= j <= i && s1[j] != s2[j];
	ensures \result != 0;

	complete behaviors;
	disjoint behaviors;

@*/
int strcmp(const char *s1, const char *s2) {
  const /*unsigned*/ char *c1 = (const /*unsigned*/ char *)s1;
  const /*unsigned*/ char *c2 = (const /*unsigned*/ char *)s2;
  /*unsigned*/ char ch;
  int d = 0;

	/*@
		loop invariant \base_addr(c1) == \base_addr(s1);
		loop invariant \base_addr(c2) == \base_addr(s2);
		loop invariant s1 <= c1 <= s1 + Length(s1);
		loop invariant s2 <= c2 <= s2 + Length(s2);
		loop invariant c1 == s1+(c2-s2);
		loop invariant c2 == s2+(c1-s1);
		loop invariant \forall integer i; 0 <= i < (c1-s1) ==> s1[i] == s2[i];
		loop assigns ch, c1, c2, d;
		loop variant Length(s1) - (c1-s1);
	@*/
	while (1) {
		d = (int)(ch = *c1++) - (int)*c2++;
		if (d || !ch)
			break;
	}
	return d;
}
