#!/bin/bash

export LINK=${CC}
python configure.py --sysroot=$PREFIX

make
make install
