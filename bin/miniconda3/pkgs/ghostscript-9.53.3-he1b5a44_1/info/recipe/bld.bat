nmake -f psi\msvc.mak WIN64= MSVC_VERSION=%VS_MAJOR% DEVSTUDIO=
if errorlevel 1 exit 1

copy bin\gswin64c.exe %LIBRARY_BIN%\gs.exe
xcopy /y /s bin\*.dll %LIBRARY_BIN%
xcopy /y /s bin\*.exe %LIBRARY_BIN%
xcopy /y /s bin\*.lib %LIBRARY_LIB%
xcopy /y /s bin\*.exp %LIBRARY_LIB%
xcopy /y /s Resource %LIBRARY_PREFIX%
REM I'll check on a Windows machine later where this directory lives.
:: move fonts %LIBRARY_PREFIX%\Resource\Font
