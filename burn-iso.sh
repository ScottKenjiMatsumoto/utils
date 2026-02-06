#!/bin/bash

ISO_PATH=$1 # ~/Downloads/debian.iso
OUTPUT_DEVICE=$2 # /dev/sda

# (oflag=direct) direct i/o to bypass system cache
# (conv=fdatasync) synchronized data/metadata writes
sudo dd if=$ISO_PATH of=$OUTPUT_DEVICE bs=4M status=progress \
  oflag=direct \
  conv=fdatasync
sudo sync
