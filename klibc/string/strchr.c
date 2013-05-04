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
    assumes \exists integer i; 0 <= i <= Length(s) && s[i] == (char)c;
    ensures \exists integer i; Exists_first_occurence_of_char(s, c, i) && \result == s+i;
    //ensures \result == s + PosOfChar(s,c); // isto devia dar.. passa-se algo com o axioma
    ensures *\result == (char)c;

  behavior not_exists:
    assumes \forall integer i; 0 <= i <= Length(s) ==> s[i] != (char)c;
    ensures \result == \null;

  complete behaviors;
  disjoint behaviors;
@*/
char *strchr(const char *s, int c)
{
  /*@
     loop invariant \at(s,Pre) <= s <= (\at(s,Pre) + Length(\at(s,Pre)));
     loop invariant \forall integer i; 0 <= i < (s - \at(s,Pre)) ==> \at(s,Pre)[i] != (char)c;
     loop invariant s == \at(s,Pre) + (s - \at(s,Pre));
     loop assigns s;
     loop variant Length(\at(s,Pre)) - (s - \at(s,Pre));
   */
  while (*s != (char)c) {
    if (!*s)
      return NULL;
    s++;
  }

  //@ assert *s == c;
  return (char *)s;
}

//__ALIAS(char *, index, (const char *, int), strchr)
