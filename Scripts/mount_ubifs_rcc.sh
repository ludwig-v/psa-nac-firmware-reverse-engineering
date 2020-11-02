#!/bin/sh
# Copyright 2020, Ludwig V. <https://github.com/ludwig-v>

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

mkdir -p /mnt/ubifs
if grep -qs '/dev/ubi' /proc/mounts; then
	umount /mnt/ubifs
	ubidetach -p /dev/mtd0
	rmmod nandsim
fi

modprobe ubi
modprobe nandsim first_id_byte=0xec second_id_byte=0xd7 third_id_byte=0x00 fourth_id_byte=0x36
flash_erase /dev/mtd0 0 0
ubiformat /dev/mtd0 -s 4096 -O 4096
ubiattach -m 0 -d 0 -O 4096
ubimkvol /dev/ubi0 -N NAC_UBIFS -s 1024MiB
ubiupdatevol /dev/ubi0_0 $UBIFS_IMAGE
mount /dev/ubi0_0 /mnt/ubifs

echo "${UBIFS_IMAGE} mounted on /mnt/ubifs"