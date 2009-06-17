#!/bin/sh

sleep 30

FILE="/root/times.txt"

if [ ! -e ${FILE} ]; then
	echo 1 > $FILE
fi

T=`cat ${FILE}`
if [ $T -lt "51" ]; then
	T=`expr $T + 1`
	echo "Reboot times: $T"
	echo $T > $FILE
	echo I will reboot in 3 seconds...
	sleep 3
	reboot
	sleep 1000
fi

echo "Reboot test finished, Now clean..."
if [ -e /etc/rc2.d/S99zauto_reboot ]; then
	rm $FILE
	rm /root/do_reboot.sh
	rm /etc/rc2.d/S99zauto_reboot
fi
echo "Cleaning finished."


