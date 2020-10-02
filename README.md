# psa-nac-firmware-reverse-engineering

### Decrypt firmware files
    tar xvf PSA_ovip-int-firmware-version_21-08-25-12_NAC-r0_NAC_EUR_WAVE2.tar
	bash ./Scripts/decrypt_SWL.sh SWL/ ./Firmware_Keys/WAVE2/21.08.25-12-r0.key

### Decrypt single firmware file
    bash ./Scripts/decrypt_smime_file.sh ui-app-data-resource.tar.gz ./Firmware_Keys/WAVE2/21.08.25-12-r0.key
	
### Mount rootfs (once decrypted)
    bash ./Scripts/mount_ubifs_nac.sh rootfs.fsn
    ls -l /mnt/ubifs
