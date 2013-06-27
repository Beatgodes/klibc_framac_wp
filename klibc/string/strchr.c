/*
 * strchr.c
 */

#include <string.h>
#include <klibc/compiler.h>

/*@
  requires \exists integer i; Length_of_str_is(s,i);
  requires -128 <= c <= 127;
  assigns \nothing;

  behavior exists:
    assumes \exists integer i; 0 <= i < Length(s) && s[i] == (char)c;
    ensures \base_addr(s) == \base_addr(\result);
    ensures s <= \result <= s + Length(s);
    ensures Exists_first_occurence_of_char(s, c, \result - s);
    ensures *\result == (char)c;

  behavior not_exists:
    assumes \forall integer i; 0 <= i < Length(s) ==> s[i] != (char)c;
    ensures \result == \null;

  complete behaviors;
  disjoint behaviors;
@*/
char *strchr(const char *s, int c)
{
  /*@ 
  	 loop invariant \base_addr(s) == \base_addr(\at(s, Pre));
     loop invariant \at(s,Pre) <= s <= (\at(s,Pre) + Length(\at(s,Pre)));
     loop invariant \forall integer i; 0 <= i < (s - \at(s,Pre)) ==> \at(s[i],Pre) != (char)c;
     loop invariant s == \at(s,Pre) + (s - \at(s,Pre));
     loop assigns s;
     loop variant Length(\at(s,Pre)) - (s - \at(s,Pre));
   */
  while (*s != (char)c) {
  	//@ assert *s != (char)c;
    if (!*s)
      return NULL;
    s++;
  }

  //@ assert Exists_first_occurence_of_char(\at(s, Pre), c, s - \at(s, Pre));
  //@ assert *s == (char)c;
  //@ assert \base_addr(\at(s, Pre)) == \base_addr(\at(s, Here));
  //@ assert \at(s, Pre) <= \at(s, Here) <= \at(s, Pre) + Length(\at(s, Pre));
  return (char *)s;
}

//__ALIAS(char *, index, (const char *, int), strchr)
