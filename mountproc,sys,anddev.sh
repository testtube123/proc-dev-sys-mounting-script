#!/bin/bash
# mount proc,sys and dev with a script.Made to make my life easier
# also chroots (Work in Progress)
mount -t proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
#chroot /mnt/gentoo /bin/bash
#source /etc/profile
#export PS1="(chroot) $PS1"
