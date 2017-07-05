:
@echo off

rem To activate windows native symlinks uncomment next line
rem set MSYS=winsymlinks:nativestrict

rem Set debugging program for errors
rem set MSYS=error_start:%WD%../../mingw32/bin/qtcreator.exe^|-debug^|^<process-id^>

rem To export full current PATH from environment into MSYS2 uncomment next line
set MSYS2_PATH_TYPE=inherit

set "WD=%__CD__%"
if NOT EXIST "%WD%msys-2.0.dll" set "WD=%~dp0usr\bin\"
set CONTITLE=MSys2_UTF-8
start "%CONTITLE%" "%WD%mintty" -c my_minttyrc_UTF-8 -i /msys2.ico /usr/bin/zsh --login %1 %2 %3 %4 %5 %6 %7 %8 %9
rem start "%CONTITLE%" "%WD%mintty" -c my_minttyrc_UTF-8 -i /msys2.ico /usr/bin/bash --login %1 %2 %3 %4 %5 %6 %7 %8 %9
:EOF
