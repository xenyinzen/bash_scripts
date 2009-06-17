#!/bin/sh
echo Begin to install.

echo "cp do_reboot.sh"
cp -avf ./do_reboot.sh /root
chmod +x /root/do_reboot.sh

echo "cp S99zauto_reboot"
cp -avf ./S99zauto_reboot /etc/rc2.d
chmod +x /etc/rc2.d/S99zauto_reboot

sleep 1
echo Install finished.
echo Now I will reboot 1 seconds later.
sleep 1
reboot
wait
