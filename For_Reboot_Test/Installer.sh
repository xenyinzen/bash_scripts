#!/bin/sh
DIR=$(pwd)  # $(dirname $0)
cd $DIR
konsole -e "./test.sh"
wait

