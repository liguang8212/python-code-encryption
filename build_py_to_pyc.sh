#!/bin/sh

##########################################################
# Author: LiGuang
# Create Date: 2021/07/22
# Version: 1.0
##########################################################


src_dir=$1

if [ ! -d $src_dir ]; then
    echo "source code dir does not exist!"
fi

python -O -m compileall -b $src_dir
find $src_dir -name '*.py' -type f -print -exec rm {} \;
echo "Finished to romve the py files "


#python -m py_compile test.py
#python -O -m py_compile test.py