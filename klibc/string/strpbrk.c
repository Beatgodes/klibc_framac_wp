/*
 * strpbrk
 */

#include <string.h>

#include "strxspn.h"

char *strpbrk(const char *s, const char *accept)
{
	const char *ss = s + __strxspn(s, accept, 1);
	//@ assert \base_addr(ss) == \base_addr(s);
	//@ assert s <= ss <= s + Length(s);
	return *ss ? (char *)ss : NULL;
}
