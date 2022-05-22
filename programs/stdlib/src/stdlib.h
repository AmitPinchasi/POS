#ifndef POS_STDLIB_H
#define POS_STDLIB_H
#include <stddef.h>

void* malloc(size_t size);
void free(void* ptr);
char* itoa(int i);
#endif