@echo off
@rem use %ProgramFiles(x86)% or %ProgramFiles%
@SET PROGRAMFILE=%ProgramFiles(x86)%
@SET OLD_PATH=%PATH%
@SET CC_COMP="%PROGRAMFILE%\Microsoft Visual Studio 10.0\vc"
@IF EXIST %CC_COMP%\vcvarsall.bat GOTO CALLVC ELSE GOTO NOFOUND

:READY
@if not exist obj md obj
@CALL make FWDIR=c:\fivewin\svn\repo HBDIR=c:\harbour
@IF ERRORLEVEL 1 GOTO ERROR
@test
@GOTO FINISHED

:CALLVC
@call %CC_COMP%\vcvarsall.bat
@GOTO READY

:NOFOUND
@echo can not find %CC_COMP%\vcvarsall.bat
@GOTO FINISHED

:ERROR
@echo Error building app

:FINISHED
@SET PATH=%OLD_PATH%