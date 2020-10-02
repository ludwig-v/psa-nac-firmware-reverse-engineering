#!/bin/sh

FILE=$1
FIRMWARE_KEY=$2

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
			echo "Stopping"
			exit 1
		fi
	else
		echo "${FILE} seems already decrypted !"
	fi
else
	echo "${FILE} not found !"
fi

exit 0