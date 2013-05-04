/*
 * strrchr.c
 */

#include <string.h>
#include <klibc/compiler.h>
/*@
   requires -128 <= c <= 127;
   requires \exists integer i; Length_of_str_is(s,i);
   assigns \nothing;

   behavior contains:
     assumes \exists integer i; 0 <= i < Length(s) && s[i] == (char)c;
     ensures \exists integer i; 0 <= i < Length(s) && s[i] == (char)c 
      && (\forall integer j; i < j < Length(s) ==> s[j] != (char)c)
      && \result == s+i;
     ensures *\result == (char)c;

   behavior not_contains:
     assumes \forall integer i; 0 <= i < Length(s) ==> s[i] != (char)c;
     ensures \result == \null;

   complete behaviors;
   disjoint behaviors;
 */
char *strrchr(const char *s, int c)
{
  const char *found = NULL;
  /*@
     loop invariant found == \null || \at(s,Pre) <= found <= \at(s,Pre)+Length(\at(s,Pre));
     loop invariant \at(s,Pre) <= s <= \at(s,Pre)+Length(\at(s,Pre));
     loop invariant (\forall integer i; 0 <= i < s- \at(s,Pre) ==> \at(s,Pre)[i] != (char)c) ==> found == \null;
     loop invariant \exists integer i; 0 <= i < s - \at(s,Pre) && \at(s,Pre)[i] == (char)c 
        && (\forall integer j; i < j < s - \at(s,Pre) && \at(s,Pre)[i] != (char)c) ==> found == \at(s,Pre) + i;
     loop invariant s == \at(s,Pre) + (s - \at(s,Pre));
     loop invariant 0 <= s - \at(s, Pre) <= Length(\at(s,Pre));
     loop assigns found, s;
     loop variant Length(\at(s,Pre)) -  (s - \at(s,Pre));
   */
  while (*s) {
    if (*s == (char)c)
      found = s;
    s++;
  }

  return (char *)found;
}

//__ALIAS(char *, rindex, (const char *, int), strrchr)
// o __ALIAS cria este codigo:
/*char *rindex(char const *, int _0) __attribute__((__weak__));
char *rindex(char const *, int _0)
{
  char *tmp;
  tmp = strrchr((char const *)_0,_0);
  return (tmp);
}*/
