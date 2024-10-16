import futhark, os, macros

const raylib4N64Root* = getEnv("N64_INST") / "mips64-elf" / "include"

importc:
  outputPath "naylib64.nim"
  path raylib4N64Root
  "raylib.h"
  #"GL/gl.h"
  #"GL/glu.h"

importc:
  outputPath "raymath64.nim"
  path raylib4N64Root
  "raymath.h"

importc:
  outputPath "rlgl64.nim"
  path raylib4N64Root
  "rlgl.h"
