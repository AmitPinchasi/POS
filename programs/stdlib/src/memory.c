#include "memory.h"

void* memset(void* ptr, int c, size_t size)
{
    char* c_ptr = (char*) ptr;
    for (int i = 0; i < size; i++)
    {
        c_ptr[i] = (char) c;
    }
    return ptr;
}

int memcmp(void* s1, void* s2, int count)
{
    char* c1 = s1;
    char* c2 = s2;
    while(count-- > 0)
    {
        if (*c1++ != *c2++)
        {
            return c1[-1] < c2[-1] ? -1 : 1;
        }
    }

    return 0;
}

void* memcpy(void* dest, void* src, int len)
{
    //casting src and dest addresses (void *) to (char *)
    //for handling 1 byte
    char *d = dest;
    char *s = src;

    //src to dest
    while(len--)
    {
        *d++ = *s++;
    }
    return dest;
}

void* memmove(void *dest, void *src, size_t n)
{
   //casting src and dest addresses (void *) to (char *)
   //for handling 1 byte
   char *csrc = (char *)src;
   char *cdest = (char *)dest;
  
   //creating the temp array to store the src 
   char *temp = (char*) malloc(1*n);
  
   //src to temp
   for (int i=0; i<n; i++)
       temp[i] = csrc[i];
  
   //temp to dest
   for (int i=0; i<n; i++)
       cdest[i] = temp[i];
  
   free(temp);
   return dest;
}