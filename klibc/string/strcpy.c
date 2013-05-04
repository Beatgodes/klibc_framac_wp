/*
 * strcpy.c
 *
 * strcpy()
 */

#include <string.h>


/*@
    requires \exists integer i; Length_of_str_is(src, i) &&
                                \valid(src+(0..i)) && \valid(dst+(0..i)) &&
                                \separated(src+(0..i), dst+(0..i));
    assigns dst[0..Length(src)];
    ensures \result == dst;
    ensures \exists integer i; (Length_of_str_is(src,i) && Length_of_str_is(dst,i)) &&
            (\forall integer k; 0 <= k <= i ==> src[i] == dst[i]);
  @*/
char *strcpy(char *dst, const char *src)
{
  char *q = dst;
  const char *p = src;
  char ch;

    /*@
        loop invariant inv1: dst <= q <= dst+(p-src); // done
        loop invariant inv2: src <= p <= src+(q-dst); // done
        loop invariant inv3: q == dst+(p-src); // done
        loop invariant inv4: p == src+(q-dst); // done
        // e necessario?
        loop invariant inv5: q == \at(dst,Pre) + (q - \at(dst,Pre)); // done
        loop invariant src-p <= 0; // done

        loop invariant inv6: \forall integer k; 0 <= k < (q-dst) ==> src[k] == dst[k]; // so estabelecido
        loop invariant inv7: \forall integer k; 0 <= k < (p-src) ==> dst[k] != 0; // so com cvc3
        // useless.. ?
        loop invariant inv8: \forall integer i; (p-src) <= i < Length(src) ==> dst[i] == \at(dst,Pre)[i]; // done
        loop assigns ch, q, p, dst[0..(p-src)-1]; // done
        loop variant Length(src) - (p-src);
      @*/
  //do {
  while(ch)
      *q++ = ch = *p++;
  //} while (ch);

  return dst;
}
