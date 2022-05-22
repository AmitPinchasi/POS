#include "shell.h"
#include "stdio.h"
#include "stdlib.h"
#include "pos.h"
int main(int argc, char** argv)
{
    print("POS v1.0.0\n");
    while(1) 
    {
        print("> ");
        char buf[1024];
        pos_terminal_readline(buf, sizeof(buf), true);
        print("\n");
        pos_system_run(buf);
        print("\n");
  
    }
    return 0;
}