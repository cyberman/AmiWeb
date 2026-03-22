# vbcc reference toolchain profile for C89 builds

CC := vc
LD := vlink

CPPFLAGS := $(CPPFLAGS_COMMON)
CFLAGS := $(CFLAGS_COMMON) $(INCLUDES_COMMON)
LDFLAGS := $(LDFLAGS_COMMON)

COMPILE.c = $(CC) -c $(CPPFLAGS) $(CFLAGS)
LINK.bin = $(LD) $(LDFLAGS)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(OBJ_DIR):
	mkdir -p $(OBJ_DIR)

$(BIN_DIR):
	mkdir -p $(BIN_DIR)

$(OBJ_DIR)/%.o: $(SRC_DIR)/%.c | $(OBJ_DIR)
	$(COMPILE.c) $< -o=$@
