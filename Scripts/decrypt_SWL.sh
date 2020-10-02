#!/bin/sh

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