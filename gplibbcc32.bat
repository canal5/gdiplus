REM @echo off
rem

rem


SET HB_DIR=\hb30
SET BCC_DIR=\bcc582
SET FW_DIR=\fwh
SET LIBNAME=gdiplus32hb.lib
SET PATHLIB=lib\32\bcc

if "%1" == "clean" goto CLEAN
if "%1" == "CLEAN" goto CLEAN
del *.log
del obj\*.obj

if not exist %PATHLIB%\%LIBNAME% goto CREA

:BUILD


   %BCC_DIR%\bin\make -flibbcc32.mak %1 %2 %3 > makelibbcc32.log

   if errorlevel 1 goto BUILD_ERR

:BUILD_OK

   goto EXIT

:BUILD_ERR

   notepad make_libh.log
   goto EXIT

:CLEAN

   if exist %PATHLIB%\%LIBNAME% del %PATHLIB%\%LIBNAME%
   if exist source\obj\*.obj del source\obj\*.obj
   goto EXIT

:CREA
   %BCC_DIR%\bin\tlib %PATHLIB%\%LIBNAME%
   goto BUILD

:EXIT

