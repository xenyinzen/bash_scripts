#!/bin/sh

INSTALL="instool.sh"
MFILE="do_reboot.sh"
MDIR="function/"
DDIR="/root/"
FDIR="files/"
FFILE="action.sh"

tmp0=`which Xorg`
is_redflag=`uname -a|grep redflag`
if [ ! -z $tmp0 ]; then
	# if have graphics interface: loonux, cocreate
	BOOT="95zauto_reboot"
	BDIR="/etc/X11/Xsession.d/"
elif [ ! -z $is_redflag ]; then
	# redflag system
	BOOT="S99zauto_reboot"
	BDIR="/etc/rc5.d/"
else
	# standard debian console
	BOOT="S99zauto_reboot"
	BDIR="/etc/rc2.d/"
fi

