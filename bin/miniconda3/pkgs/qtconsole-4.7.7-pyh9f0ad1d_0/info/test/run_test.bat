



DISPLAY=localhost:1.0 xvfb-run -a bash -c 'jupyter qtconsole --help'
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
