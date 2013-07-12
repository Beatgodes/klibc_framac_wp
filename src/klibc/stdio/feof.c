#define __NO_STDIO_INLINES
#include "stdioint.h"

/*@
	requires valid_FILE(__f);
	assigns \nothing;
	ensures \result == (int)(__f->_IO_eof);
@*/
int feof(FILE *__f)
{
	return __f->_IO_eof;
}
