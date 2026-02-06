#!/bin/bash

ISO_PATH=$1 # ~/Downloads/debian.iso
OUTPUT_DEVICE=$2 # /dev/sda

sudo dd if=$ISO_PATH of=$OUTPUT_DEVICE bs=4M status=progress
sudo sync
