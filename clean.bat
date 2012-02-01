@echo off
for /R %%a in (*.bak;*.obj;*.exe;*.log;*.bc;*.ppo;*.map;*.tds;*.log;*.lib;*.tmp;*.c;*.exp;*.udp;*.hrb) do del %%a|echo Borrando %%a
@echo on

