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


ROOT="/usr/local/sbin/"

. ${ROOT}/OrangePiTesting/Import.sh

. ${FUNCTION}

# OrangePi One Testing

Ethernet_Testing

USB_Testing
