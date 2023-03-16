# psa-nac-firmware-reverse-engineering

## Scripts usage

### Decrypt firmware files
    tar xvf PSA_ovip-int-firmware-version_21-08-25-12_NAC-r0_NAC_EUR_WAVE2.tar
	bash ./Scripts/decrypt_SWL.sh SWL/ ./Firmware_Keys/WAVE2/21.08.25-12-r0.key

### Decrypt single firmware file
    bash ./Scripts/decrypt_smime_file.sh ui-app-data-resource.tar.gz ./Firmware_Keys/WAVE2/21.08.25-12-r0.key
	
### Mount rootfs (once decrypted)
    bash ./Scripts/mount_ubifs_nac.sh rootfs.fsn
    ls -l /mnt/ubifs

## Download links

### WAVE1

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-version_7-3-1-r1_NAC_EUR_WAVE1.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_7-3-1-r1_NAC_EUR_WAVE1.tar |

### WAVE2

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-version_5-15-45-32-R0_NAC_EUR_WAVE2.tar | https://majestic.mpsa.com/nas/eu/mjb00/NAC_EU/CONTINENTAL/ovip-int-firmware-version/PSA_ovip-int-firmware-version_5-15-45-32-R0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-04-62-52-R0_NAC_EUR_WAVE2.tar | DELETED BY PSA |
| PSA_ovip-int-firmware-version_21-04-62-54-R0_NAC_EUR_WAVE2.tar | https://majestic.mpsa.com/nas/eu/mjb00/NAC_EU/CONTINENTAL/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-04-62-54-R0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-05-65-32_NAC-R0_NAC_EUR_WAVE2.tar | DELETED BY PSA |
| PSA_ovip-int-firmware-version_21-05-78-22_NAC-r0_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-05-78-22_NAC-r0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-06-47-34_NAC-r0_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-06-47-34_NAC-r0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-07-16-32_NAC-r0_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-07-16-32_NAC-r0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-07-67-32_NAC-r0_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-07-67-32_NAC-r0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-08-22-32_NAC-r1_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-08-22-32_NAC-r1_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-08-24-12_NAC-r1_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-08-24-12_NAC-r1_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-08-25-12_NAC-r0_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-08-25-12_NAC-r0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-08-84-12_NAC-r0_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-08-84-12_NAC-r0_NAC_EUR_WAVE2.tar |
| PSA_ovip-int-firmware-version_21-08-87-32_NAC-r1_NAC_EUR_WAVE2.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_21-08-87-32_NAC-r1_NAC_EUR_WAVE2.tar |

### WAVE3

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-version_31-08-05-86_NAC-r0_NAC_EUR_WAVE3.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_31-08-05-86_NAC-r0_NAC_EUR_WAVE3.tar |
| PSA_ovip-int-firmware-version_31-09-46-62_NAC-r0_NAC_EUR_WAVE3.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_31-09-46-62_NAC-r0_NAC_EUR_WAVE3.tar |
| PSA_ovip-int-firmware-version_42-01-72-32_NAC-r0_NAC_EUR_WAVE3.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_42-01-72-32_NAC-r0_NAC_EUR_WAVE3.tar |

### WAVE4

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-version_42-01-72-32_NAC-r0_NAC_EUR_WAVE4.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_42-01-72-32_NAC-r0_NAC_EUR_WAVE4.tar |
| PSA_ovip-int-firmware-version_42-03-31-32_NAC-r0_NAC_EUR_WAVE4.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_42-03-31-32_NAC-r0_NAC_EUR_WAVE4.tar |
| PSA_ovip-int-firmware-version_42-03-33-42_NAC-r0_NAC_EUR_WAVE4.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_42-03-33-42_NAC-r0_NAC_EUR_WAVE4.tar |
| PSA_ovip-int-firmware-version_44-02-13-12_NAC-r0_NAC_EUR_WAVE4.tar | DELETED BY PSA |
| PSA_ovip-int-firmware-version_44-02-16-52_NAC-r0_NAC_EUR_WAVE4.tar | https://majestic-web.mpsa.com/nas/eu/mjb00/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_44-02-16-52_NAC-r0_NAC_EUR_WAVE4.tar |
| PSA_ovip-int-firmware-version_44-06-44-22_NAC-r0_NAC_EUR_WAVE4.tar | https://ds4emloty3shq.cloudfront.net/CONTINENTAL/NAC_EU/ovip-int-firmware-version/PSA_ovip-int-firmware-version_44-06-44-22_NAC-r0_NAC_EUR_WAVE4.tar |

### WAVE2_CN

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-nac-dpca_22-07-26-32_NAC-r0_NAC_CN_WAVE2.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/NAC_DPCA/ovip-int-firmware-nac-dpca/PSA_ovip-int-firmware-nac-dpca_22-07-26-32_NAC-r0_NAC_CN_WAVE2.tar |
| PSA_ovip-int-firmware-nac-dpca_22-07-88-42_NAC-r0_NAC_CN_WAVE2.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/NAC_DPCA/ovip-int-firmware-nac-dpca/PSA_ovip-int-firmware-nac-dpca_22-07-88-42_NAC-r0_NAC_CN_WAVE2.tar |
| PSA_ovip-int-firmware-rcc-dpca_22-07-27-42_RCC-r0_RCC_CN_WAVE2.20.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/RCC_DPCA/ovip-int-firmware-rcc-dpca/PSA_ovip-int-firmware-rcc-dpca_22-07-27-42_RCC-r0_RCC_CN_WAVE2.20.tar |
| PSA_ovip-int-firmware-rcc-dpca_22-07-88-52_RCC-r0_RCC_CN_WAVE2.20.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/RCC_DPCA/ovip-int-firmware-rcc-dpca/PSA_ovip-int-firmware-rcc-dpca_22-07-88-52_RCC-r0_RCC_CN_WAVE2.20.tar |

### WAVE3_CN

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-nac-dpca_31-08-69-52_NAC-r0_NAC_CN_WAVE3.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/NAC_DPCA/ovip-int-firmware-nac-dpca/PSA_ovip-int-firmware-nac-dpca_31-08-69-52_NAC-r0_NAC_CN_WAVE3.tar |
| PSA_ovip-int-firmware-rcc-dpca_41-03-05-22_RCC-r0_RCC_CN_WAVE3.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/RCC_DPCA/ovip-int-firmware-rcc-dpca/PSA_ovip-int-firmware-rcc-dpca_41-03-05-22_RCC-r0_RCC_CN_WAVE3.tar |

### WAVE4_CN

| Archive Name | Archive Download link |
| - | - |
| PSA_ovip-int-firmware-nac-dpca_41-02-65-42_NAC-r0_NAC_CN_WAVE4.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/NAC_DPCA/ovip-int-firmware-nac-dpca/PSA_ovip-int-firmware-nac-dpca_41-02-65-42_NAC-r0_NAC_CN_WAVE4.tar |
| PSA_ovip-int-firmware-nac-dpca_41-03-05-22_NAC-r0_NAC_CN_WAVE4.tar | https://majestic-web.mpsa.cn/nas/cn/mjb00/NAC_DPCA/ovip-int-firmware-nac-dpca/PSA_ovip-int-firmware-nac-dpca_41-03-05-22_NAC-r0_NAC_CN_WAVE4.tar |
