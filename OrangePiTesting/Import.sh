#!/bin/bash
# ----------------------------------------------------------------------
# Global value
# Maintainer: Buddy <buddy.zhang@aliyun.com>
#
# Copyright (C) 2017 OrangePi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

LIBDIR=${ROOT}/OrangePiTesting

LED1_PATH=/sys/class/gpio_sw/PL10/data

LED2_PATH=/sys/class/gpio_sw/PA15/data

USB_MOUNT_PATH=/media/orangepi

USB_FILE_PATH=${USB_MOUNT_PATH}/OrangePi.txt

FUNCTION=${LIBDIR}/FUNCTION.sh

