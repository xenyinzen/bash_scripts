#!/bin/sh
. ./config.sh

mount -o rw,remount /

echo Begin to install.
# copy main reboot file
echo "Copy $MDIR/$MFILE"
cp -avf $MDIR/$MFILE $DDIR
chmod +x $DDIR/$MFILE

# copy boot config
echo "Copy $MDIR/$BOOT"
cp -avf $MDIR/$BOOT $BDIR
chmod +x $BDIR/$BOOT

# do some other trivial works
if [ -e $FDIR/$FFILE ]; then
	cd $FDIR
	./$FFILE
	cd ..
fi

# leave
sleep 1
echo Install finished.
echo Now I will reboot 1 seconds later.
sleep 1
reboot
wait
