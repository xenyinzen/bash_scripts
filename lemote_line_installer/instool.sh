#!/bin/sh
. ./config.sh

mount -o rw,remount /
echo "====================================================="
echo Begin to install.
echo "-----------------------------------------------------"

echo "cp $FILE  $ROOT"
cp ./$FILE  $ROOT/
echo "cp $FILE $ROOT successfully."
echo 

echo "cp $BOOT to $BDIR"
cp -avf ./$BOOT $BDIR
chmod +x $BDIR/$BOOT
echo "cp $BOOT to $BDIR successfully."
echo 

echo "extract program files"
cd $ROOT
tar xzvf $FILE
ret=$?
if [ $ret -eq "0" ]; then
	echo "extract program files successfully."
	echo
	sleep 1

	echo Install finished.
	echo "===================================================="
	echo Now I will poweroff in 2 seconds.
	sleep 2

	poweroff
	sleep 1000000
else
	echo "Error when extract package. STOP."
	exit 1
fi

