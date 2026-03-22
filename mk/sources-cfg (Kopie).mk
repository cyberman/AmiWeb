# Source set for AWebCfg

CFG_TARGET := awebcfg

CFG_OBJS = \
	cfglocale.o \
	cfgmainstr.o \
	awebcfg.o \
	cfgnw.o \
	cfgpr.o \
	cfgbr.o \
	cfgui.o \
	memory.o \
	defprefs.o

$(OBJ_DIR)/cfglocale.o: $(SRC_DIR)/awebcfg.cd | $(OBJ_DIR)
	$(CATCOMP) $(SRC_DIR)/awebcfg.cd cfile $(SRC_DIR)/cfglocale.h objfile $@
