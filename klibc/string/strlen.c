// frama-c -wp -wp-rte strlen.c

#include <string.h>


int strlen(const char *s) {
	const char *ss = s;

	/*@
		loop invariant \base_addr(s) == \base_addr(ss);
		loop invariant s <= ss <= s+Length(s);
		loop invariant \forall integer i; 0 <= i < (ss-s) ==> s[i] != 0;
		loop assigns ss;
		loop variant Length(s) - (ss-s);
	 @*/
	while (*ss)
		ss++;

	//@ assert Length_of_str_is(s,ss-s);
	return ss - s;
}
