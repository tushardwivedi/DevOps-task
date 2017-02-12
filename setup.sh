#!/bin/bash
#
# SCRIPT:	setup.sh
#
# AUTHOR:	Tushar Dwivedi
#
# DATE:		02-09-2017
#
# REV:		0.1.A
#
# PLATFORM:	Linux, UNIX, MAC OS
#
# PURPOSE:	This Script will setup all necessary components for deploying Awesome Guestbook application. In addtion it will check for all the necessary tools, weather they are 
# 					installed or not. 
# 
# set -n	# Uncomment to check your sysntax, without execution
# 
# set -x	# Uncomment to debug the shell script.
#
vagrant_version=`/usr/local/bin/vagrant -v | cut -d" " -f2`
req_version=1.6
exit_code=`echo $?`


if [ $exit_code -ne 0 ]
then
	echo "Vagrnat is not installed in the machine. Please install from: https://www.vagrantup.com/downloads.html and then re-run the script"
	exit 1
elif [ $vagrant_version -gt $req_version ]
	echo "Seems like suitable version is installed"
fi

/usr/local/bin/vagrant up

