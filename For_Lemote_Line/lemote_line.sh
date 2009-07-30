#!/bin/sh
. ./config.sh

echo "====================================================="
echo Begin to install.
echo "-------------------"
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
echo "extract program files successfully."
echo
sleep 1
echo Install finished.
echo Now I will poweroff in 2 seconds.
sleep 2

poweroff
sleep 100
