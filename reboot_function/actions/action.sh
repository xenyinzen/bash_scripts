#!/bin/sh

echo "Copy new kernel file."
mv /boot/vmlinux /root/vmlinux
cp -avf ./vm-re  /boot/vmlinux
sync
echo "copying new kernel finishes."
