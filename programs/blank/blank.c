#include "pos.h"
#include "stdlib.h"
#include "stdio.h"
#include "string.h"

int main(int argc, char** argv)
{
    print("Staring Program..\n");
    char* ptr= malloc(sizeof(char) * 10);
    strcpy(ptr, "Hello World");
    printf("%s\n", ptr);
    char buf[1024];
    pos_terminal_readline(buf, sizeof(buf), true);
    print("\n");
    printf(buf);

    free(ptr);

    return 0;
}