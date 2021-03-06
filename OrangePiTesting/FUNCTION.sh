#!/bin/bash
# ----------------------------------------------------------------------
# Function library
# Maintainer: Buddy <buddy.zhang@aliyun.com>
#
# Copyright (C) 2017 OrangePi
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License version 2 as
# published by the Free Software Foundation.

# LED 
# $1: pin number of LED
function LED()
{
    local _sloop=1
    
    while [ ${_sloop} = 1 ]; 
    do
        echo "1" > $1

        sleep .10

        echo "0" > $1
    done
}

# If USB plug, LED on
function USB_Testing()
{
    local _sloop=1
    
    while [ ${_sloop} = 1 ]
    do
        echo "USB NNNNNNNNNNNNNNNNNNNNNNNNNNNNN"
        if [ -f ${USB_FILE_PATH} ]; then
            _sloop=0
            LED ${LED1_PATH}
            echo "USB OOOOOOOOOOOOOOOOOOOOOOOOOOO"
        fi
    done    
}

# Ethernet
function Ethernet_Testing()
{
    local _sloop=1
    
    while [ ${_sloop} = 1 ]; 
    do
        ping -c 1 www.baidu.com > /dev/null 2>&1
        if [ $? -eq 0 ]; then
            echo "Ethernet OK..........."
            LED ${LED2_PATH}
            _sloop=0
        else
            echo "Ethernet BAD.........."
        fi
        sleep .10
    done    
}
