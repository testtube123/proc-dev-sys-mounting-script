#!/bin/bash
# mount proc,sys and dev with a script.Made to make my life easier
# also chroots (Work in Progress)
if
mount -t proc /proc /mnt/gentoo/proc
mount --rbind /sys /mnt/gentoo/sys
mount --make-rslave /mnt/gentoo/sys
mount --rbind /dev /mnt/gentoo/dev
mount --make-rslave /mnt/gentoo/dev
exit 0         # Should mean it was sucessful

else  

exit 1   # Should exit Unsucessfully
fi
#chroot /mnt/gentoo /bin/bash
#source /etc/profile
#export PS1="(chroot) $PS1"
