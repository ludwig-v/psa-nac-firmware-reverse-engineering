#!/bin/sh
# Copyright 2020-2021, Ludwig V. <https://github.com/ludwig-v>

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License at <http://www.gnu.org/licenses/> for
# more details.

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

UBIFS_IMAGE=$1

if ! [ -x "$(command -v ubiformat)" ]; then
	echo 'Error: mtd-utils is not installed.' >&2
	exit 1
fi

if modinfo ubi | grep -wq "filename:"; then
	if modinfo nandsim | grep -wq "filename:"; then
		mkdir -p /mnt/ubifs
		if lsmod | grep -wq "^nandsim"; then
			umount /mnt/ubifs
			ubidetach -p /dev/mtd0
			rmmod nandsim
		fi

		modprobe ubi
		modprobe nandsim first_id_byte=0xec second_id_byte=0xd7 third_id_byte=0x00 fourth_id_byte=0x36
		flash_erase /dev/mtd0 0 0
		ubiformat /dev/mtd0 -s 4096 -O 4096
		ubiattach -m 0 -d 0 -O 4096
		ubimkvol /dev/ubi0 -N RCCC_UBIFS -s 1024MiB
		ubiupdatevol /dev/ubi0_0 $UBIFS_IMAGE
		mount /dev/ubi0_0 /mnt/ubifs

		echo "${UBIFS_IMAGE} mounted on /mnt/ubifs"
		
		exit 0
	else
		echo 'Error: nandsim kernel module is not installed.' >&2
		
		exit 1
	fi
else
	echo 'Error: ubi kernel module is not installed.' >&2
	
	exit 1
fi