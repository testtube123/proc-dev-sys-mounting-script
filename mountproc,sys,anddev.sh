#!/bin/bash
# mount proc,sys and dev with a script.Made to make my life easier
echo "Running ....." 
	if [[ $(findmnt -T "/mnt/gentoo/proc") ]]
	then
echo " /proc OK" # will display if proc is found
	else 
echo "/proc Fail!" # will display if proc can not be found
	exit 1 # exit with error
	fi

	if [[ $(findmnt -T "/mnt/gentoo/proc") ]] #Checks to see if Proc can by found
	then
echo " /proc OK" # /Proc can be found
mount -t proc /proc /mnt/gentoo/proc #mounts /proc
	else 
echo "Is /proc Mounted?" # /Proc can't be found
exit 1 #exit with error 
	fi 

	if [[ $(findmnt -T	"/mnt/gentoo/sys") ]]
	then
echo " /sys OK" #/Sys can be found
	else
echo "/sys Fail!" #/Sys can't be found
exit 1 #exit with error
	fi

	if [[	$(findmnt -T "/mnt/gentoo/sys")	]]
	then
echo "/sys OK" #/sys can be found
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
	else
echo "Is /sys Mounted?" 
	exit 1
	fi
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
echo "Exiting ......"
	exit 0
