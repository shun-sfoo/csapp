#include <stdio.h>
#include <stdlib.h>

#define ASS_LEVEL(code, level)                                                \
  do                                                                          \
    {                                                                         \
      char command[1024];                                                     \
      sprintf (command, "echo '%s' > /tmp/csapp_tmp.c", code);                \
      system (command);                                                       \
      system ("gcc-15 -O" #level " -S /tmp/csapp_tmp.c");                        \
      system ("cat csapp_tmp.s | sed -n '/LFB0/,/LFE0/p'");                 \
    }                                                                         \
  while (0);

#define ASS(code) ASS_LEVEL (code, g)

#define RUN(fn, ...)                                                          \
  do                                                                          \
    {                                                                         \
      printf ("===" #fn "===\n");                                             \
      fn (__VA_ARGS__);                                                       \
    }                                                                         \
  while (0);
