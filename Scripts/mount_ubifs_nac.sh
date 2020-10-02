#!/bin/sh

UBIFS_IMAGE=$1

mkdir -p /mnt/ubifs
if grep -qs '/dev/ubi' /proc/mounts; then
	umount /mnt/ubifs
	ubidetach -p /dev/mtd0
	rmmod nandsim
fi

modprobe ubi
modprobe nandsim first_id_byte=0xec second_id_byte=0xd5 third_id_byte=0x51 fourth_id_byte=0xa6
flash_erase /dev/mtd0 0 0
ubiformat /dev/mtd0 -s 4096 -O 4096
ubiattach -m 0 -d 0 -O 4096
ubimkvol /dev/ubi0 -N NAC_UBIFS -s 1024MiB
ubiupdatevol /dev/ubi0_0 $UBIFS_IMAGE
mount /dev/ubi0_0 /mnt/ubifs

echo "${UBIFS_IMAGE} mounted on /mnt/ubifs"