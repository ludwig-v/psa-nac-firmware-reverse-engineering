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

FILE=$1
FIRMWARE_KEY=$2

if ! [ -x "$(command -v openssl)" ]; then
	echo 'Error: openssl is not installed.' >&2
	exit 1
fi
if ! [ -x "$(command -v head)" ]; then
	echo 'Error: head is not installed.' >&2
	exit 1
fi
if ! [ -x "$(command -v grep)" ]; then
	echo 'Error: grep is not installed.' >&2
	exit 1
fi
if ! [ -x "$(command -v find)" ]; then
	echo 'Error: find is not installed.' >&2
	exit 1
fi

if [[ -f "$FILE" ]]; then
	DATA=$(head -2 $FILE | grep "smime." 2>&1)
	if [[ $DATA =~ '"smime.' ]]; then
		cp $FILE $FILE.bak
		OPENSSL_RESULT=$(openssl smime -decrypt -in $FILE.bak -inkey $FIRMWARE_KEY  2>&1 > $FILE)
		if [[ -f "$FILE" && $OPENSSL_RESULT == '' ]]; then
			echo "${FILE} has been decrypted"
			rm -rf $FILE.bak
		else
			mv $FILE.bak $FILE
			echo "${FILE} has not been decrypted, the key is probably invalid !"
			echo "Stopping" >&2
			exit 1
		fi
	else
		echo "${FILE} seems already decrypted !"
	fi
	exit 0
else
	echo "${FILE} not found !" >&2
	exit 1
fi