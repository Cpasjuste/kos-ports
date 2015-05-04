TARGET = liblua.a
OBJS = src/lapi.o src/lcode.o src/lctype.o src/ldebug.o src/ldo.o src/ldump.o \
	   src/lfunc.o src/lgc.o src/llex.o src/lmem.o src/lobject.o \
	   src/lopcodes.o src/lparser.o src/lstate.o src/lstring.o src/ltable.o \
	   src/ltm.o src/lundump.o src/lvm.o src/lzio.o \
       src/lauxlib.o src/lbaselib.o src/lbitlib.o src/lcorolib.o src/ldblib.o \
	   src/liolib.o src/lmathlib.o src/loslib.o src/lstrlib.o src/ltablib.o \
	   src/lutf8lib.o src/loadlib.o src/linit.o

defaultall: fixconf $(OBJS) subdirs linklib

fixconf:
	sed -e 's/\/\* #define LUA_32BITS \*\//#define LUA_32BITS/' -i "" src/luaconf.h

KOS_CFLAGS += -Isrc

include ${KOS_PORTS}/scripts/lib.mk
