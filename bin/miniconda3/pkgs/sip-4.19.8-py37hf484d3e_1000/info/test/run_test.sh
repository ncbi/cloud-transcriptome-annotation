#!/bin/bash

export LINK=${CC}
cd test
sip -c . -b word.sbf word.sip
python configure.py
make
