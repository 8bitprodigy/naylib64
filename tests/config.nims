switch("path", "$projectDir/../src")

putEnv("N64_GCCPREFIX", getEnv("N64_INST"))
putEnv("N64_ROOTDIR", getEnv("N64_INST"))
putEnv("N64_BINDIR", getEnv("N64_ROOTDIR") & "/bin" )
putEnv("N64_INCLUDEDIR",  getEnv("N64_ROOTDIR") & "/mips64-elf/include")
putEnv("N64_LIBDIR", getEnv("N64_ROOTDIR") & "/mips64-elf/lib")
putEnv("N64_GCCPREFIX_TRIPLET", getEnv("N64_GCCPREFIX") & "/bin/mips64-elf-")

putEnv("N64_CC",  getEnv("N64_GCCPREFIX_TRIPLET") & "gcc")
putEnv("N64_CXX", getEnv("N64_GCCPREFIX_TRIPLET") & "g++")
putEnv("N64_AS",  getEnv("N64_GCCPREFIX_TRIPLET") & "as")
putEnv("N64_AR",  getEnv("N64_GCCPREFIX_TRIPLET") & "ar")
putEnv("N64_LD",  getEnv("N64_GCCPREFIX_TRIPLET") & "ld")

putEnv("N64_C_AND_CXX_FLAGS", "-march=vr4300 -mtune=vr4300 -I " & getEnv("N64_INCLUDEDIR") &
  " -falign-functions=32" &
  " -ffunction-sections -fdata-sections -g -ffile-prefix-map=" & getEnv("CURDIR") & "=" &
  " -ffast-math -ftrapping-math -fno-associative-math" &
  " -DN64 -O2 -Wall -Wno-error=deprecated-declarations -fdiagnostics-color=always" &
  " -Wno-error -fpermissive")

putEnv("N64_CFLAGS",   getEnv("N64_C_AND_CXX_FLAGS") & "-std=gnu99 -g3 -MMD")
putEnv("N64_CXXFLAGS", getEnv("N64_C_AND_CXX_FLAGS") & "-std=gnu++17 -g3 -MMD")

switch("os", "any")
switch("cpu", "mips")
switch("mm", "orc")
switch("threads", "off")
switch("stackTrace", "off")
switch("lineTrace", "off")
switch("define", "release")
switch("define", "nimAllocPagesViaMalloc")
switch("passC", "-I" & getEnv("N64_INCLUDEDIR") & " -l:libdragon.a -l:libm.a -l:libdragonsys.a -libc.a -Tn64.ld -fpermissive")
switch("passL", "-g -L" & getEnv("N64_LIBDIR") & " -l:libdragon.a -l:libm.a -l:libdragonsys.a -l:libc.a -Tn64.ld --gc-sections --wrap do_global_ctors")
#switch("passC", "-mabicalls")
switch("nimcache", ".nimcache")

switch("mips.any.gcc.options.linker", "-static")
switch("mips.any.gcc.exe", getEnv("N64_CC"))
switch("mips.any.gcc.linkerexe", getEnv("N64_LD"))
