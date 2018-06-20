#!/bin/bash

DISK_PRESENT=0

function format_disks {
    for whole_disk in $(cat disks.txt); do 
        fdisk $whole_disk 
    done
}
       

# Check for common extra disks, write to file if found

for i in {a..z}; do
    if [ -f /dev/xvd$i* ]; then 
        echo "Found disk /dev/xvd$i"
        echo "/dev/xvd$i" > disks.txt
        DISK_PRESENT=1
    fi
done
if [ ! $DISK_PRESENT == 1 ]; then
    echo -e "Could not find extra disk, exiting."
    exit 1
fi

if [ $DISK_PRESENT == 1]; then
