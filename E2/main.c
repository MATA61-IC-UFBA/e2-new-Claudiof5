
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int yylex();
extern void yy_scan_string(const char *str);
extern void yylex_destroy();

void process_line(const char *line) {

    yy_scan_string(line);

    while (yylex() != 0) {

    }
    yylex_destroy();
}

int main() {
    char line[1024];

    while (fgets(line, sizeof(line), stdin)) {
        process_line(line);
    }

    return 0;
}

