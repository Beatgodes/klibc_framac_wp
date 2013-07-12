/*
 * strnlen()
 */

#include <string.h>

/*@
  requires maxlen >= 0;
  requires \valid(s+(0..maxlen-1));
  assigns \nothing;

  behavior bigger:
    assumes \forall integer i; 0 <= i < maxlen ==> s[i] != 0;
    ensures \result == maxlen;
 
  behavior smaller:
    assumes \exists integer i; 0 <= i < maxlen && s[i] == 0;
    ensures \result <= maxlen;

  complete behaviors;
  disjoint behaviors;

*/
size_t strnlen(const char *s, size_t maxlen)
{
  const char *ss = s;

  /* Important: the maxlen test must precede the reference through ss;
     since the byte beyond the maximum may segfault */

  /*@
    loop invariant 0 <= maxlen <= \at(maxlen,Pre);
    loop invariant \forall integer i; 0 <= i < (\at(maxlen, Pre) - maxlen) ==> s[i] != 0;
    loop invariant ss == s+(\at(maxlen, Pre) - maxlen);
    loop invariant s <= ss <= s+\at(maxlen, Pre);
    loop assigns maxlen, ss;
    loop variant maxlen;
  */
  while ((maxlen > 0) && *ss) {
    ss++;
    maxlen--;
  }
  return ss - s;
}
