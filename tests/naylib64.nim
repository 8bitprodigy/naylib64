import futhark

importc:
  path getEnv("N64_INST") & "mips64-elf/include"
  "raylib.h"
#[
static:
  writeFile("basic_window.c", """
  #include <libdragon.h>
  #include <GL/gl.h>
  #include <GL/glu.h>
  #include <raylib.h>
  """)
  {.compile: "basic_window.c".}
]#
