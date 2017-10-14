#!/bin/bash
# Credits to phogg from #bash
base=/mnt/gentoo

if ! mountpoint -q "$base/proc" ; then
	mount -t proc /proc "$base/proc"
fi

if ! mountpoint -q "$base/sys" ; then
	mount --rbind /sys "$base/sys"
	mount --make-rslave "$base/sys"
fi

if ! [[ -d $base/dev ]] ; then
	printf '%s: not a directory\n' "$base/dev"
	exit 1
fi
