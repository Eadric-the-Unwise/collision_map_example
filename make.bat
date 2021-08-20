@REM CC	= ../../../bin/lcc -Wl-m -Wl-j -Wm-yS

@REM BINS	= phys.gb

@REM all:	$(BINS)

@REM compile.bat: Makefile
@REM 	@echo "REM Automatically generated from Makefile" > compile.bat
@REM 	@make -sn | sed y/\\//\\\\/ | grep -v make >> compile.bat

@REM # Compile and link single file in one pass
@REM %.gb:	%.c
@REM 	$(CC) -o $@ $<

@REM clean:
@REM 	rm -f *.o *.lst *.map *.gb *~ *.rel *.cdb *.ihx *.lnk *.sym *.asm *.noi

call .\clean.bat

@echo off
@REM ENTER YOUR GBDK DIRECTORY IN @set GBDK = ...
@set GBDK=..\..\..\gbdk
%GBDK%\bin\lcc.exe -autobank -Wl-j -Wm-yS -Wb-ext=.rel -Wb-v -Wl-yt0x1B -Wl-yoA -Wl-ya4 -o collision_map.gb^
 src\*.c