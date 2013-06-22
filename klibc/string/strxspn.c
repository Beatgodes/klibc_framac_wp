/*
 * strpbrk
 */

#include <string.h>
#include <stddef.h>
#include <inttypes.h>
#include <limits.h>
#include <strxspn.h>
/*@
	requires parity == 0 || parity == 1;
	requires \exists integer i; Length_of_str_is(s,i);
	requires \exists integer i; Length_of_str_is(map,i);
	requires \forall integer i; 0 <= i <= Length(map) ==> map[i] >= 0;
	requires \forall integer i; 0 <= i <= Length(s) ==> s[i] >= 0;
	requires \separated(s+(0..Length(s)), map+(0..Length(map)));
	assigns \nothing;
	ensures 0 <= \result <= Length(s);
@*/
size_t __strxspn(const char *s, const char *map, int parity)
{
	char matchmap[UCHAR_MAX + 1];
	size_t n = 0;

	/* Create bitmap */
	memset(matchmap, 0, sizeof matchmap);
	//@ assert \forall integer k; 0 <= k < UCHAR_MAX + 1 ==> matchmap[k] == 0;


	// ghost int k = 0;

	/*@
		loop invariant \base_addr(\at(map, Here)) == \base_addr(\at(map, Pre));
		loop invariant \at(map, Pre) <= \at(map, Here) <= \at(map, Pre) + Length(\at(map, Pre));
		loop invariant \forall integer i; 0 <= i <= 255 ==> (matchmap[i] == 0 || matchmap[i] == 1);
		loop invariant \forall integer i; 0 <= i < (\at(map, Here) - \at(map, Pre)) ==> \at(map[i], Pre) != 0;
		loop invariant \forall integer i; 0 <= i < (\at(map, Here) - \at(map, Pre)) ==> matchmap[\at(map[i], Pre)] == 1;
		//loop invariant \forall integer i; 0 <= i < (\at(map, Here) - \at(map, Pre)) ==> ()
		loop assigns map, matchmap[0..255];
		loop variant Length(\at(map,Pre)) - (\at(map, Here) - \at(map, Pre)) ;
	@*/
	while (*map){
		matchmap[/*(unsigned char)*/*map++] = 1;
		// ghost k++;
	}

	/* Make sure the null character never matches */
	matchmap[0] = parity;
	// assert BUG: matchmap[0] == parity;

	/* Calculate span length */

	/*@
		loop invariant \base_addr(s) == \base_addr(\at(s, Pre));
		loop invariant \at(s, Pre) <= s <= \at(s, Pre) + Length(\at(s, Pre));
		loop invariant 0 <= n <= Length(\at(s, Pre));
		loop invariant s == \at(s, Pre) + n;
		loop invariant \forall integer i; 0 <= i < n ==> \at(s[i], Pre) != 0;
		loop assigns n, s;
		loop variant Length(\at(s, Pre)) - n;
	@*/
	while (matchmap[/*(unsigned char)*/*s++] ^ parity)
		n++;

	return n;
}
