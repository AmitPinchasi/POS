#ifndef POS_H
#define POS_H
#include <stddef.h>
#include <stdbool.h>


struct command_argument
{
    char argument[512];
    struct command_argument* next;
};

struct process_arguments
{
    int argc;
    char** argv;
};


void print(const char* filename);
int pos_getkey();

void* pos_malloc(size_t size);
void pos_free(void* ptr);
void pos_putchar(char c);
int pos_getkeyblock();
void pos_terminal_readline(char* out, int max, bool output_while_typing);
void pos_process_load_start(const char* filename);
struct command_argument* pos_parse_command(const char* command, int max);
void pos_process_get_arguments(struct process_arguments* arguments);
int pos_system(struct command_argument* arguments);
int pos_system_run(const char* command);
void pos_exit();
#endif