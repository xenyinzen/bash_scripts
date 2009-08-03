#!/bin/sh
. ./config.sh

DIR=$(pwd)  # $(dirname $0)
cd $DIR
if [ -z $EXEC ]; then
	tmp0=`which Xorg`
	tmp1=`which gnome-terminal`
	tmp2=`which konsole`
	tmp3=`which xfce4-terminal`
	
	if [ ! -z $tmp0 ]; then
	# if have graphics interface
		if [ ! -z $tmp1 ]; then
			EXEC="$tmp1 -e"
		elif [ ! -z $tmp2 ]; then
			EXEC="$tmp2 -e"
		elif [ ! -z $tmp3 ]; then
			EXEC="$tmp3 -e"
		else
			echo "Cann't find any terminal, exit."
			exit 1
		fi
	else
	# if only have console interface
		EXEC="bash"
	fi
fi

# check whether sudo command exists
SUDO=`which sudo`
# execute installer
$SUDO $EXEC "./$INSTALL"

wait

