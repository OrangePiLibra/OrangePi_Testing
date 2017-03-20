#!/bin/bash
set -e
# ----------------------------------------------------------------------
# Install scripts
# Maintainer: Buddy <buddy.zhang@aliyun.com>
#
# Copyright (C) 2017 OrangePi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

ROOT=`pwd`

BUILD="/usr/local/sbin/"
BUILD_LIB=${BUILD}/OrangePiTesting

if [ ! -d ${BUILD_LIB} ]; then
    mkdir -p ${BUILD_LIB}
fi

# Install 
install ${ROOT}/OrangePiTesting.sh ${BUILD}
install ${ROOT}/OrangePiTesting/* ${BUILD_LIB}

# Create link
if [ ! -f ${BUILD}/OrangePiTest ]; then
    ln -s ${BUILD}/OrangePiTesting.sh ${BUILD}/OrangePiTest
fi
