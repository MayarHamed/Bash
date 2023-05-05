#!/bin/bash
source menu.sh
source checker.sh
checkFile data
if [ ${?} -ne 0 ]
then
	echo "Can not find data file"
	exit 1
fi
checkRFile data
if [ ${?} -ne 0 ]
then
        echo "Can read from data file"
	exit 2
fi
checkWFile data
if [ ${?} -ne 0 ]
then
        echo "Can write to data file"
	exit 3
fi

runMenu
exit 0