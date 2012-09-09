
#ifndef D_RuntimeErrorStub_H
#define D_RuntimeErrorStub_H

#include "RuntimeError.h"

void RunTimeErrorStub_Reset(void);
const char * RuntimeErrorStub_GetLastError(void);
int RuntimeErrorStub_GetLastParameter(void);

#endif