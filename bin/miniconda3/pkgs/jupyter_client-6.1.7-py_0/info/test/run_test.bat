



python -m pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
jupyter kernelspec list
IF %ERRORLEVEL% NEQ 0 exit /B 1
jupyter run -h
IF %ERRORLEVEL% NEQ 0 exit /B 1
pytest --pyargs jupyter_client --cov jupyter_client
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
