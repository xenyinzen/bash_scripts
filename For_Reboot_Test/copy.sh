#!/bin/sh

mount /dev/sdc1 /tmp
sleep 0.5
rm -rf /tmp/*
cp -avf /mnt/* /tmp
sleep 0.5
diff -r /mnt /tmp
umount /tmp
sleep 1
