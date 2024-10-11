import futhark, os, macros

const raylib4N64Root* = getEnv("N64_INST") / "mips64-elf" / "include"

importc:
  outputPath "naylib64.nim"
  path raylib4N64Root
  "raylib.h"
  "raymath.h"
  "rlgl.h"
  "GL/gl.h"
  "GL/glu.h"
