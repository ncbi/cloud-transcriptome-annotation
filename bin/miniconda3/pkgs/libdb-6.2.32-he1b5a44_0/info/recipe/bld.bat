pushd build_windows

IF "%vc%" == "9" (
   devenv /Upgrade Berkeley_DB.sln
   set SLN_FILE=Berkeley_DB.sln
) else (
   devenv /Upgrade Berkeley_DB_vs2010.sln
   set SLN_FILE=Berkeley_DB_vs2010.sln
)

if %ARCH% == 32 (
    set ARCH_STRING=Win32
) else (
    set ARCH_STRING=x64
)

msbuild %SLN_FILE% /p:Configuration=Release /p:Platform=%ARCH_STRING%
IF %ERRORLEVEL% NEQ 0 exit 1

robocopy %ARCH_STRING%\Release\ %LIBRARY_BIN%
DEL %LIBRARY_BIN%\*.pdb
MOVE %LIBRARY_BIN%\*.lib %LIBRARY_LIB%
COPY *.h %LIBRARY_INC%
