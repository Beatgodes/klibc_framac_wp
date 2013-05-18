#define __NO_STDIO_INLINES
#include "stdioint.h"

/*@
	requires valid_FILE(__f);
	assigns __f->_IO_error, __f->_IO_eof;
	ensures __f->_IO_error == 0;
	ensures __f->_IO_eof == 0;
@*/
void clearerr(FILE *__f)
{
	__f->_IO_error = 0;
	__f->_IO_eof = 0;
}