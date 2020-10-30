



python -m pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
jsonschema --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
