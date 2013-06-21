/*
 * string.h
 */

#ifndef _STRING_H
#define _STRING_H

/*@
  predicate Length_of_str_is{L}(char *s, integer n) =
      n >= 0 && \valid(s+(0..n)) && s[n] == 0 &&
      \forall integer k ; (0 <= k < n) ==> (s[k] != 0) ;

  axiomatic Length
  {
    logic integer Length{L}(char *s) reads s[..];

    axiom string_length{L}:
       \forall integer n, char *s ; Length_of_str_is(s, n) ==> Length(s) == n ;
  }

@*/

/*@
  predicate Exists_first_occurence_of_char{L}(char *s, int c, integer pos) =
      \valid(s+(0..Length(s))) && -128 <= c <= 127 &&
      0 <= pos <= Length(s) && s[pos] == (char)c && \forall integer i; 0 <= i < pos ==> s[i] != (char)c;

  axiomatic PosOfChar
  {
    logic integer PosOfChar{L}(char *s, int c) reads *s;

    // something is wrong here
    axiom pos_of_char{L}:
      \forall integer pos, char *s, int c; Exists_first_occurence_of_char(s, c, pos) ==> PosOfChar(s, c) == pos;

  }

@*/

/*@
  predicate is_lower{L}(char c) = 'a' <= c <= 'z';
  predicate is_upper{L}(char c) = 'A' <= c <= 'Z';

  axiomatic ToUpper
  {
    logic char ToUpper{L}(char c) reads c;

    axiom to_upper_char{L}:
      \forall char c; is_lower(c) ==> ToUpper(c) == c-32 &&
      \forall char c; is_upper(c) ==> ToUpper(c) == c &&
      \forall char c; !is_upper(c) && !is_lower(c) ==> ToUpper(c) == c;
  }

@*/



#include <klibc/extern.h>
#include <stddef.h>

/*******************************************************
 ************ NEEDED BY STDIO.H (100%) *****************
 *******************************************************/

 /*@
   requires \exists integer i; Length_of_str_is(s,i);
   assigns \nothing;
   ensures \exists integer i; Length_of_str_is(s,i) && \result == i;
 @*/
__extern int strlen(const char *s);


// beat: forced to change code
/*@
  requires n >= 0;
  requires \valid(((char*)dst)+(0..n-1));
  requires -128 <= c <= 127;
  assigns ((char*)dst)[0..n-1];
  ensures \forall integer i; 0 <= i < n ==> ((char*)dst)[i] == c;
  ensures \result == dst;
@*/
 __extern void *memset(void* dst, int c, size_t n);
//__extern void *memset(void*, int, size_t);


 //beat: forced to change code
/*@
    requires \separated(((char*)src)+(0..n-1), ((char*)dst)+(0..n-1));
    requires n >= 0;
    requires \valid(((char*)dst)+(0..n-1));
    requires \valid(((char*)src)+(0..n-1));
    assigns ((char*)dst)[0..n-1];
    ensures \forall integer i; 0 <= i < n ==> ((char*)dst)[i] == ((char*)src)[i];
    ensures \result == dst;
 */
__extern void *memcpy(void *dst, const void *src, size_t n);
//__extern void *memcpy(void *, const void *, size_t);

/*******************************************************
 ************************* 100% ************************
 *******************************************************/

__extern void bzero(void*, size_t);

// changed code
__extern int memcmp(const void *, const void *, size_t);

// commented unsigned, changed code
__extern void *memrchr(const void *, int, size_t);

// tudo a funcionar com alt-ergo
__extern size_t strnlen(const char *, size_t);

// commented unsigned
__extern int strcmp(const char *, const char *);


//beat: forced to change code
__extern void memswap(void *, void *, size_t);

__extern void *memmove(void *, const void *, size_t);

/*******************************************************
 ********** 100% BUT BROKEN WITH FLUORINE **************
 *******************************************************/


__extern char *strchr(const char *, int);

/*******************************************************
 *************** BASTANTE ADIANTADO ********************
 *******************************************************/
// beat: funcao enorme. esta a escapar algo nos loop invariants
__extern void *memmem(const void *, size_t, const void *, size_t);

//beat: não prova os behaviors..
__extern char *strrchr(const char *, int);

//beat não prova os behaviors...
//o problema está no exioma PosOfChar.. aquilo não funciona...
__extern void *memccpy(void *, const void *, int, size_t);

//beat changed code, commented unsigned.
//devia funcionar.. é quase igual ao strchr.. mas este n funciona n sei pq
__extern void *memchr(const void *, int, size_t);


// beat: commented unsigned, changed code
// must cover all cases of strings
__extern int strncmp(const char *, const char *, size_t);


// beat: falha num behavior..acho que o axioma toupper precisa duma afinadela.
// crashes in fluorine
__extern int strcasecmp(const char *, const char *);

// beat: combinação do strcasecmp e strncmp.. falta cenas
// crashes in fluorine
__extern int strncasecmp(const char *, const char *, size_t);

// beat: muitos probs
// teddy: alguns probs ainda..
__extern char *strcpy(char *, const char *);

/*******************************************************
 *********************** RESTO *************************
 *******************************************************/

// beat: está dependente do strcpy
__extern char *strcat(char *, const char *);



// beat: depende do strxspn
__extern size_t strcspn(const char *, const char *);

// beat: malloc problem
__extern char *strdup(const char *);

// beat: malloc problem
__extern char *strndup(const char *, size_t);

// beat: muito verde ainda
__extern char *strncat(char *, const char *, size_t);

// beat: muito verde
__extern size_t strlcat(char *, const char *, size_t);

__extern char *strncpy(char *, const char *, size_t);

// beat: com muitos problemas ainda
__extern /*size_t*/ int strlcpy(char *, const char *, /*size_t*/ int);

// beat: depende de strxspn
__extern char *strpbrk(const char *, const char *);

// beat: depende de strxspn
__extern char *strsep(char **, const char *);

// beat: depende de strxpsn e aquilo tem bitwise op.. passar a frente por enquanto
__extern size_t strspn(const char *, const char *);

// beat: depende de memmem e memcmp
__extern char *strstr(const char *, const char *);

// beat: depende de strxspan
__extern char *strtok(char *, const char *);

// beat: depende de strxspn
__extern char *strtok_r(char *, const char *, char **);

/*******************************************************
 ******** others **************************
 *******************************************************/
__extern char *index(const char *, int);
__extern char *rindex(const char *, int);
__extern char *strerror(int);
__extern char *strsignal(int);

/*******************************************************
 ********EXTERNAL -- CONTRACT ONLY *********************
 *******************************************************/


/*@
  requires -128 <= c <= 127;
  assigns \nothing;
  
  behavior islower:
    assumes is_lower((char)c);
    ensures \result == c - 32;

  behavior isupper:
    assumes is_upper((char)c);
    ensures \result == c;

  behavior else:
    assumes !is_upper((char)c) && !is_lower((char)c);
    ensures \result == c;

  complete behaviors;
  disjoint behaviors;

  @*/
__extern int toupper(int c);

#endif        /* _STRING_H */
