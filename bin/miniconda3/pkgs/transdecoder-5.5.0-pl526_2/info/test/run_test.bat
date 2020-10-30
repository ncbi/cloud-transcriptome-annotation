



TransDecoder.Predict --version | grep -q "TransDecoder.Predict 5.5.0"
IF %ERRORLEVEL% NEQ 0 exit /B 1
TransDecoder.LongOrfs --version | grep -q "TransDecoder.LongOrfs 5.5.0"
IF %ERRORLEVEL% NEQ 0 exit /B 1
start_codon_refinement.pl 2>&1 | grep -q optional:
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
