#!/usr/bin/env python
import sys
import os
import struct
import time
from ctypes import (CDLL, get_errno)
from ctypes.util import find_library
from socket import (
    socket,
    AF_BLUETOOTH,
    SOCK_RAW,
    BTPROTO_HCI,
    SOL_HCI,
    HCI_FILTER,
)

if not os.geteuid() == 0:
    sys.exit("script only works as root")

btlib = find_library("bluetooth")
if not btlib:
    raise Exception(
        "Can't find required bluetooth libraries"
        " (need to install bluez)"
    )
bluez = CDLL(btlib, use_errno=True)

dev_id = bluez.hci_get_route(None)

sock = socket(AF_BLUETOOTH, SOCK_RAW, BTPROTO_HCI)
sock.bind((dev_id,))

#disable scanning
bluez.hci_le_set_scan_enable(sock.fileno(), 0, 0, 1000);

err = bluez.hci_le_set_scan_parameters(sock.fileno(), 0, 0x10, 0x10, 0, 0, 1000);
if err < 0:
    raise Exception("Set scan parameters failed")
    # occurs when scanning is still enabled from previous call

# allows LE advertising events
hci_filter = struct.pack(
    "<IQH", 
    0x00000010, 
    0x4000000000000000, 
    0
)
sock.setsockopt(SOL_HCI, HCI_FILTER, hci_filter)

err = bluez.hci_le_set_scan_enable(
    sock.fileno(),
    1,  # 1 - turn on;  0 - turn off
    0, # 0-filtering disabled, 1-filter out duplicates
    1000  # timeout
)
if err < 0:
    errnum = get_errno()
    raise Exception("{} {}".format(
        errno.errorcode[errnum],
        os.strerror(errnum)
    ))

def scan():
    voc = 0.0
    humidity = 0
    temperature = 0.0
    is_done = False
    start_time = time.time()
    while not is_done:	
	current_time = time.time()
        data = sock.recv(1024)
        # print bluetooth address from LE Advert. packet
        address = ':'.join("{0:02x}".format(ord(x)) for x in data[12:6:-1])
        if(address == 'e2:b1:08:f4:60:26'):
    	    data = ':'.join("{0:02x}".format(ord(x)) for x in data)
	    start_index = data.find("ff:ff:ff:") + 9
	    important_info = data[start_index:(len(data) - 3)]

	    voc = int(important_info[:5].replace(":",""), 16) / 100.0 
	    humidity = int(important_info[6:8], 16)
	    temperature = int(important_info[9:11], 16)
	    print("VOC: {} ppm, Humidity: {} %, Temperature: {} C").format(voc, humidity, temperature)
	    is_done = True
	if(current_time - start_time > 60):
	    is_done = True
	    print("Atmotube scanner timed out.")
    return [voc, humidity, temperature]
	
	
    

    
    
