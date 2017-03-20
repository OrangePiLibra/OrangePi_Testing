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
install ${ROOT}/EthernetAuto.sh ${BUILD}
install ${ROOT}/USBAuto.sh ${BUILD}
install ${ROOT}/OrangePiTesting/FUNCTION.sh ${BUILD_LIB}
install ${ROOT}/OrangePiTesting/Import.sh ${BUILD_LIB}
install ${ROOT}/OrangePiTesting/Ethernet.service /etc/systemd/
install ${ROOT}/OrangePiTesting/USBTest.service /etc/systemd/

# Create link
if [ ! -f ${BUILD}/EthernetTest ]; then
    ln -s ${BUILD}/EthernetAuto.sh ${BUILD}/EthernetTest
fi
if [ ! -f ${BUILD}/USBTest ]; then
    ln -s ${BUILD}/USBAuto.sh ${BUILD}/USBTest
fi

# Start system 
systemctl enable /etc/systemd/Ethernet.service
systemctl enable /etc/systemd/USBTest.service
