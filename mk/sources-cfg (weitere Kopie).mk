# Source set for AWebCfg

CFG_TARGET := awebcfg

CFG_OBJS = \
	cfgmainstr.o \
	awebcfg.o \
	cfgnw.o \
	cfgpr.o \
	cfgbr.o \
	cfgui.o \
	memory.o \
	defprefs.o

ifeq ($(HOST_HAS_CATCOMP),1)
$(OBJ_DIR)/cfglocale.o: $(SRC_DIR)/awebcfg.cd | $(OBJ_DIR)
	$(CATCOMP) $(SRC_DIR)/awebcfg.cd cfile $(SRC_DIR)/cfglocale.h objfile $@
else
$(OBJ_DIR)/cfglocale.o:
	@echo "Skipping cfglocale.o: no host-runnable catcomp available"
	@false
endif
