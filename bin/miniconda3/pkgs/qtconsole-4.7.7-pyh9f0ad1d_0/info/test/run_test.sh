

set -ex



DISPLAY=localhost:1.0 xvfb-run -a bash -c 'jupyter qtconsole --help'
exit 0
