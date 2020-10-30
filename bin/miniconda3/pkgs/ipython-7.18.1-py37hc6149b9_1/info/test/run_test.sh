

set -ex



ipython -h
ipython3 -h
NOSE_EXCLUDE="recursion|test_set_matplotlib_formats|test_set_matplotlib_close|test_history|system_interrupt" iptest
python -m pip check
exit 0
