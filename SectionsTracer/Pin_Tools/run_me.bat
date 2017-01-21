@echo off
echo PIN is trying to run the app:
echo %1%

set OLDDIR=%CD%

set PIN_DIR=C:\pin
set PINTOOL=C:\Pin_Tools\SectionsTracer.dll

set TARGET_APP=%1%

cd %PIN_DIR%
pin.exe -t %PINTOOL% -o %TARGET_APP%.tag -- %TARGET_APP%

chdir /d %OLDDIR%