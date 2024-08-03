 BUILD_DIR=.nimcache
 include $(N64_INST)/include/n64.mk

 src = @mnim64.nim.c

 LDFLAGS += -lraylib
 all:nim64.z64

 $(BUILD_DIR)/nim64.elf: $(src:%.c=$(BUILD_DIR)/%.o)

 nim64.z64: N64_ROM_TITLE="Nim64"

 -include $(wildcard $(BUILD_DIR)/*.d)

 .PHONY: all clean
