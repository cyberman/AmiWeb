# Global build configuration for compiler-agnostic C89 builds

PROJECT_ROOT := .
SRC_DIR := Source/AWebAPL
BUILD_DIR := build/c89
OBJ_DIR := $(BUILD_DIR)/obj
BIN_DIR := $(BUILD_DIR)/bin

AMIGA_NDK ?= /opt/amiga/ndk32
AMIGA_VBCC ?= /opt/amiga/vbcc

NDK_INCLUDE_H := $(AMIGA_NDK)/include_H
NDK_INCLUDE_I := $(AMIGA_NDK)/include_I
NDK_LIB := $(AMIGA_NDK)/lib
NDK_C := $(AMIGA_NDK)/C

VBCC_BIN := $(AMIGA_VBCC)/bin
VBCC_CONFIG := $(AMIGA_VBCC)/config

HOST_HAS_CATCOMP ?= 0
CATCOMP ?= $(AMIGA_NDK)/Tools/Catcomp/Catcomp

CPPFLAGS_COMMON :=
CFLAGS_COMMON :=
LDFLAGS_COMMON :=

INCLUDES_COMMON := \
	-I$(SRC_DIR) \
	-I$(NDK_INCLUDE_H) \
	-I$(NDK_INCLUDE_I)

CFG_SRC_NAMES := \
	cfgmainstr \
	awebcfg \
	cfgnw \
	cfgpr \
	cfgbr \
	cfgui \
	memory \
	defprefs

CFG_SRCS := $(addprefix $(SRC_DIR)/,$(addsuffix .c,$(CFG_SRC_NAMES)))
CFG_OBJ_FILES := $(addprefix $(OBJ_DIR)/,$(addsuffix .o,$(CFG_SRC_NAMES)))
# CFG_CATCOMP_OBJ := $(OBJ_DIR)/cfglocale.o
CFG_STAMP := $(OBJ_DIR)/awebcfg.stamp
