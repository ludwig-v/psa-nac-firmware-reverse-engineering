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

DIRECTORY=$1
FIRMWARE_KEY=$2

if [[ -d $DIRECTORY ]]; then
	find $DIRECTORY -type f -print0 | while read -d $'\0' FILE; do
		DATA=$(head -2 $FILE | grep "smime." 2>&1)
		if [[ $DATA =~ '"smime.' ]]; then
			cp $FILE $FILE.bak
			OPENSSL_RESULT=$(openssl smime -decrypt -in $FILE.bak -inkey $FIRMWARE_KEY  2>&1 > $FILE)
			if [[ -f $FILE && $OPENSSL_RESULT == '' ]]; then
				echo "${FILE} has been decrypted"
				rm -rf $FILE.bak
			else
				mv $FILE.bak $FILE
				echo "${FILE} has not been decrypted, the key is probably invalid !"
				echo "Stopping"
				exit 1
			fi
		else
			echo "${FILE} seems already decrypted !"
		fi
	done
	find $DIRECTORY -type f -print0 | while read -d $'\0' FILE; do
		if [[ -f $FILE"01" ]]; then
			for i in {1..9}
			do
				if [[ -f $FILE"0"$i ]]; then
					cat $FILE"0"$i >> $FILE
					rm -rf $FILE"0"$i
				fi
			done
			echo "${FILE} parts have been merged !"
		fi
	done
else
	echo "${DIRECTORY} not found or not a directory !"
fi

exit 0