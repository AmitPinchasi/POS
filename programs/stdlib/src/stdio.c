#include "stdio.h"
#include "pos.h"
#include "stdlib.h"
#include <stdarg.h>
#include <string.h>

int putchar(int c)
{
    pos_putchar((char)c);
    return 0;
}

int printf(const char *fmt, ...)
{
    va_list ap;
    const char *p;
    char* sval;
    char c;
    int ival;

    va_start(ap, fmt);
    for (p = fmt; *p; p++)
    {
        if (*p != '%')
        {
            putchar(*p);
            continue;
        }

        switch (*++p)
        {
        case 'i':
            ival = va_arg(ap, int);
            print(itoa(ival));
            break;

        case 's':
            sval = va_arg(ap, char *);
            print(sval);
            break;
        case 'c':
            sval = va_arg(ap, char);
            print(c);
            break;
        default:
            putchar(*p);
            break;
        }
    }

    va_end(ap);

    return 0;
}
