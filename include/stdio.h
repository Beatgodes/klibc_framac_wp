/*
 * stdio.h
 */

#ifndef _STDIO_H
#define _STDIO_H

#include <klibc/extern.h>
#include <klibc/sysconfig.h>
#include <klibc/seek.h>
#include <stdarg.h>
#include <stddef.h>
#include <unistd.h>

struct _IO_file {
	int _IO_fileno;		/* Underlying file descriptor */
	_Bool _IO_eof;		/* End of file flag */
	_Bool _IO_error;	/* Error flag */
};
typedef struct _IO_file FILE;

/*@
	predicate valid_FILE(FILE *f) = 
		\valid(f) && f->_IO_fileno >= 0;
@*/


#ifndef EOF
# define EOF (-1)
#endif

#ifndef BUFSIZ
# define BUFSIZ _KLIBC_BUFSIZ
#endif

enum _IO_bufmode {
	_IONBF,
	_IOLBF,
	_IOFBF
};
#define _IONBF _IONBF
#define _IOLBF _IOLBF
#define _IOFBF _IOFBF

/*
 * Convert between a FILE * and a file descriptor.
 */
__extern FILE *stdin, *stdout, *stderr;


/*******************************************************
 ***************** 100% ********************************
 *******************************************************/

__extern int fileno(FILE *);

__extern int fseek(FILE *, off_t, int);

__extern off_t lseek(int, off_t, int);

__extern int ferror(FILE * );

__extern int feof(FILE *);

__extern void clearerr(FILE *);

/*******************************************************
 ***************** VISTOS ******************************
 *******************************************************/

/*
	Milestone 3:

	Nova versão:
		Fluorine traz consigo um novo modelo de memória com a opção unsafe casts, permitindo-nos avançar.
		Surgem problemas com funções anteriormente verificadas.

	Problemas com malloc:
		Não conseguimos garantir o \seperated em funções que usam malloc.
		Faz falta a função built-in 'fresh'.

	Limitações nos behavrios:
		Normalmente quando um programa pode ter diversos comportamentos, conseguimos codifica-los tendo em conta certos factores (assumes)
		No entanto, nas funções que usam systemcalls não conseguimos fazer isso pois o factor está invisivel para o programador

	Propagações no assigns:
		Podia facilitarnos a vida uma funcionalidade que fazia a propagação dos assigns. Isto é, se temos uma função que não altera nada
		mas esta função por sua vez chama outra que altera algo, temos que indicar isso no assigns da função chamadora. Isto é muito 
		contra-produtivo quando há funções mutuamente recursivos e quando mete assigns dentro de behaviors ao barulho.


*/

// beat: cannot guarantee on some stuff becuase of allocation problems
__extern FILE *fdopen(int, const char *);

// beat: initial approach done
__extern int ungetc(int, FILE *);

// beat: initial approach done
__extern off_t ftell(FILE *__f);

// beat: inital approach done
__extern int fflush(FILE *);

// beat: initial approach done
__extern void rewind(FILE *);

/*******************************************************
 ***************** RESTO *******************************
 *******************************************************/


// depende de fdopen, open e close
__extern FILE *fopen(const char *, const char *);

// depende de fflsuh, close
__extern int fclose(FILE *);



// depende de _fwrite
__extern int fputs(const char *, FILE *);

// depende de _fwrite
__extern int fputc(int, FILE *);

// depende de _fread
__extern int fgetc(FILE *);

// depende de fgetc
__extern char *fgets(char *, int, FILE *);

// depende de vfprintf
__extern int fprintf(FILE *, const char *, ...);

// depende de vsnprintf e _fwrite
__extern int vfprintf(FILE *, const char *, va_list);

// depende de __fflush
__extern size_t _fread(void *, size_t, FILE *);

// depende de __flush
__extern size_t _fwrite(const void *, size_t, FILE *);

// depende de _fread
__extern size_t fread(void *, size_t, size_t, FILE *);

// depende de _fwrite
__extern size_t fwrite(const void *, size_t, size_t, FILE *);






#define __NO_STDIO_INLINES
#ifndef __NO_STDIO_INLINES
__extern_inline size_t
fread(void *__p, size_t __s, size_t __n, FILE * __f)
{
	return _fread(__p, __s * __n, __f) / __s;
}

__extern_inline size_t
fwrite(const void *__p, size_t __s, size_t __n, FILE * __f)
{
	return _fwrite(__p, __s * __n, __f) / __s;
}

__extern_inline int fileno(FILE *__f)
{
	return __f->_IO_fileno;
}

__extern_inline int ferror(FILE *__f)
{
	return __f->_IO_error;
}

__extern_inline int feof(FILE *__f)
{
	return __f->_IO_eof;
}

__extern_inline void clearerr(FILE *__f)
{
	__f->_IO_error = 0;
	__f->_IO_eof = 0;
}
#endif



/*******************************************************
 ***************** NOT FILE API ************************
 *******************************************************/
__extern int puts(const char *);
__extern int printf(const char *, ...);
__extern int vprintf(const char *, va_list);
__extern int sprintf(char *, const char *, ...);
__extern int vsprintf(char *, const char *, va_list);
__extern int snprintf(char *, size_t n, const char *, ...);
__extern int vsnprintf(char *, size_t n, const char *, va_list);
__extern int asprintf(char **, const char *, ...);
__extern int vasprintf(char **, const char *, va_list);
__extern int sscanf(const char *, const char *, ...);
__extern int vsscanf(const char *, const char *, va_list);
__extern void perror(const char *);
__extern int rename(const char *, const char *);
__extern int renameat(int, const char *, int, const char *);
__extern int remove(const char *);
#define getc(f) fgetc(f)
__extern int getc_unlocked(FILE *);
#define getc_unlocked(f) fgetc(f)
#define getchar() fgetc(stdin)
#define ftello ftell
#define putc(c,f)  fputc((c),(f))
#define putchar(c) fputc((c),stdout)
#define fseeko fseek

#endif				/* _STDIO_H */
