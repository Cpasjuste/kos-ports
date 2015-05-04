TARGET = libSDL.a
OBJS = src/audio/dc/SDL_dcaudio.o \
	src/audio/dc/aica.o \
	src/audio/SDL_audio.o \
	src/audio/SDL_audiocvt.o \
	src/audio/SDL_audiodev.o \
	src/audio/SDL_mixer.o \
	src/audio/SDL_wave.o \
	src/cdrom/dc/SDL_syscdrom.o \
	src/cdrom/SDL_cdrom.o \
	src/cpuinfo/SDL_cpuinfo.o \
	src/events/SDL_active.o \
	src/events/SDL_events.o \
	src/events/SDL_expose.o \
	src/events/SDL_keyboard.o \
	src/events/SDL_mouse.o \
	src/events/SDL_quit.o \
	src/events/SDL_resize.o \
	src/file/SDL_rwops.o \
	src/joystick/dc/SDL_sysjoystick.o \
	src/joystick/SDL_joystick.o \
	src/loadso/dummy/SDL_sysloadso.o \
	src/SDL.o \
	src/SDL_error.o \
	src/SDL_fatal.o \
	src/stdlib/SDL_getenv.o \
	src/stdlib/SDL_iconv.o \
	src/stdlib/SDL_malloc.o \
	src/stdlib/SDL_qsort.o \
	src/stdlib/SDL_stdlib.o \
	src/stdlib/SDL_string.o \
	src/thread/dc/SDL_syscond.o \
	src/thread/dc/SDL_sysmutex.o \
	src/thread/dc/SDL_syssem.o \
	src/thread/dc/SDL_systhread.o \
	src/thread/SDL_thread.o \
	src/timer/dc/SDL_systimer.o \
	src/timer/SDL_timer.o \
	src/video/dc/SDL_dcevents.o \
	src/video/dc/SDL_dcmouse.o \
	src/video/dc/SDL_dcvideo.o \
	src/video/SDL_blit.o \
	src/video/SDL_blit_0.o \
	src/video/SDL_blit_1.o \
	src/video/SDL_blit_A.o \
	src/video/SDL_blit_N.o \
	src/video/SDL_bmp.o \
	src/video/SDL_cursor.o \
	src/video/SDL_gamma.o \
	src/video/SDL_pixels.o \
	src/video/SDL_RLEaccel.o \
	src/video/SDL_stretch.o \
	src/video/SDL_surface.o \
	src/video/SDL_video.o \
	src/video/SDL_yuv.o \
	src/video/SDL_yuv_sw.o

defaultall: replacefiles $(OBJS) subdirs linklib

replacefiles:
	cp ../../files/aica.[ch] src/audio/dc/
	cp ../../files/SDL_dcaudio.[ch] src/audio/dc/
	cp ../../files/SDL_syscdrom.c src/cdrom/dc/
	cp ../../files/SDL_sysjoystick.c src/joystick/dc/
	cp ../../files/SDL_syscond_c.h src/thread/dc/
	cp ../../files/SDL_syscond.c src/thread/dc/
	cp ../../files/SDL_syssem_c.h src/thread/dc/
	cp ../../files/SDL_syssem.c src/thread/dc/
	cp ../../files/SDL_sysmutex_c.h src/thread/dc/
	cp ../../files/SDL_sysmutex.c src/thread/dc/
	cp ../../files/SDL_systhread_c.h src/thread/dc/
	cp ../../files/SDL_systhread.c src/thread/dc/
	cp ../../files/SDL_systimer.c src/timer/dc/
	cp ../../files/SDL_dcevents_c.h src/video/dc/
	cp ../../files/SDL_dcevents.c src/video/dc/
	cp ../../files/SDL_dcmouse_c.h src/video/dc/
	cp ../../files/SDL_dcmouse.c src/video/dc/
	cp ../../files/SDL_dcvideo.[ch] src/video/dc/
	cp ../../files/SDL_config_dreamcast.h include/
	sed -e 's/#if defined(__DREAMCAST__)/#if defined\(_arch_dreamcast\)/' -i "" include/SDL_config.h

KOS_CFLAGS += -Isrc -Isrc/audio -Isrc/cdrom -Isrc/endian -Isrc/events \
	          -Isrc/joystick -Isrc/thread/dc -Isrc/thread -Isrc/timer \
			  -Isrc/video -DNO_SIGNAL_H -DENABLE_DC -Iinclude

include ${KOS_PORTS}/scripts/lib.mk
