#ifndef MEMORY_H
#define MEMORY_H

#include <stddef.h>

#define SizeOf(type) (char *)(&type+1)-(char*)(&type)

void* memset(void* ptr, int c, size_t size);
int memcmp(void* s1, void* s2, int count);
void* memcpy(void* dest, void* src, int len);
void* memmove(void *dest, void *src, size_t n);

#endif