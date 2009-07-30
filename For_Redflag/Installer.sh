#!/bin/sh
. ./config.sh

DIR=$(pwd)  # $(dirname $0)
cd $DIR
if [ -z $EXEC ]; then
	tmp1=`which gnome-terminal`
	tmp2=`which konsole`
	tmp3=`which xfce4-terminal`
	if [ ! -z $tmp1 ]; then
		EXEC=$tmp1
	elif [ ! -z $tmp2 ]; then
		EXEC=$tmp2
	elif [ ! -z $tmp3 ]; then
		EXEC=$tmp3
	else
		echo "Cann't find any terminal, exit."
		exit 1
	fi
fi

SUDO=`which sudo`
$SUDO $EXEC -e "./$INSTALL"

wait

