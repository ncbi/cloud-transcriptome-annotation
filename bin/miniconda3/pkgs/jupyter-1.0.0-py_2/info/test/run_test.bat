



jupyter --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
jupyter nbextension list
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
