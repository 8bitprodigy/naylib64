import os, macros
import futhark

const raylib4N64Root* = (
  getEnv("N64_INST") /
  "mips64-elf" /
  "include"
)

const outputDir = currentSourcePath.parentDir

const futharkCompilerArg {.define: "futharkCompilerArg".} = getClangIncludePath()

echo "Raylib Root: " & raylib4N64Root

#when defined(createRaylib4N64APIWrapper):
importc:
  compilerArg futharkCompilerArg
  path raylib4N64Root
  outputPath outputDir / "generated_include.nim"
  "raylib.h"
  "raymath.h"
  "rlgl.h"
