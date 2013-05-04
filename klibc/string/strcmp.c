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




/*
  requires \exists integer k, i; Length_of_str_is(s1, k) && Length_of_str_is(s2, k);

  assigns \nothing;

  behavior eq:
    assumes Equal_str{Here,Here}(s1, Length{Here}(s1), s2, Length{Here}(s2));
    ensures \false;
  behavior not_eq:
    assumes ! Equal_str{Here,Here}(s1, Length{Here}(s1), s2, Length{Here}(s2));
    ensures \false;
  complete behaviors;
  disjoint behaviors;
 */


/*
  // NOTA: usar o Runtime model, senao da warnings
   predicate Length_of_str_is{L}(char *s, integer n) =
     (0 <= n) && \valid(s+(0..n)) && s[n] == 0 &&
     \forall integer i; 0 <= i < n ==> s[i] != 0;

   axiomatic LengthAxiomatic{
     logic integer Length{L}(char *s)
      ;
     axiom str_length{L}:
       \forall integer n, char *s; Length_of_str_is(s, n) ==> Length(s) == n;
   }

   // are two strings equal=
   predicate Equal_str{L1,L2}(char *s1, integer n1, char *s2, integer n2) =
    \forall integer i; (n1 == n2 && 0 <= i <= n1) ==>
                       \at(s1[i], L1) == \at(s2[i], L2);

   axiomatic char_difference {
      logic integer char_diff{L}(char *s1, char *s2); // returns the result of strcmp between two strings
      axiom diff_0{L}: // strings are equal, return 0
        \forall char *s1, *s2, integer n1, n2; (Length_of_str_is{L}(s1,n1) && Length_of_str_is(s2,n2) &&
                                               Equal_str{L,L}(s1, n1, s2, n2)) ==>
                                               char_diff{L}(s1,s2) == 0;
      axiom diff_1{L}: // string are of equal length, but different in one position
        \forall char *s1, *s2, integer n1, n2; (Length_of_str_is(s1,n1) && Length_of_str_is(s2,n2) && n1 == n2) ==>
                               !Equal_str{L,L}(s1, n1, s2, n2) &&
                               \exists integer i; 0 <= i < n1 &&
                               Equal_str{L,L}(s1, i, s2, i) && s1[i] != s2[i] &&
                               char_diff{L}(s1, s2) == (s1[i] - s2[i]);
      axiom diff_2{L}: // string s1 is greater than s2
        \forall char *s1, *s2, integer n1, n2; (Length_of_str_is(s1,n1) && Length_of_str_is(s2,n2) && n1 > n2) ==>
                               \exists integer i; 0 <= i < n2 &&
                               Equal_str{L,L}(s1, i, s2, i) &&
                               s1[i] != s2[i] &&
                               char_diff{L}(s1, s2) == (s1[i] - s2[i]);
      axiom diff_3{L}: // string s1 is smaller than s2
        \forall char *s1, *s2, integer n1, n2; (Length_of_str_is(s1,n1) && Length_of_str_is(s2,n2) && n1 < n2) ==>
                               \exists integer i; 0 <= i < n1 &&
                               Equal_str{L,L}(s1, i, s2, i) &&
                               s1[i] != s2[i] &&
                               char_diff{L}(s1, s2) == (s1[i] - s2[i]);
   }
*/
