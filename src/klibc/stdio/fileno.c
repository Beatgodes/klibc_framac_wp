#define __NO_STDIO_INLINES
#include "stdioint.h"

/*@
	requires valid_FILE(__f);
	assigns \nothing;
	ensures \result == __f->_IO_fileno;
@*/
int fileno(FILE *__f)
{
	return __f->_IO_fileno;
}
