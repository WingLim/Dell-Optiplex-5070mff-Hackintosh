# Dell-Optiplex-5070mff-Hackintosh

**EFI tested on Big Sur 11.2.3**

Use Opencore v0.6.7

![Big Sur 11.2.3](https://cdn.jsdelivr.net/gh/WingLim/assets@master/images/20210315163415.png)

## Hardware

- Desktop Computer: [Dell OptiPlex 5070 Micro Form Factor](https://www.dell.com/en-us/work/shop/desktops-all-in-one-pcs/optiplex-5070-micro/spd/optiplex-5070-micro)
- CPU: [Intel® Core™ i5-9500T Processor](https://ark.intel.com/content/www/us/en/ark/products/191052/intel-core-i5-9500t-processor-9m-cache-up-to-3-70-ghz.html)
- iGPU: Intel® UHD Graphics 630
- RAM: 16GB DDR4 2666 Daul Channel
- Storage: KIOXIA RC10 NVME SSD 500G
- Wi-Fi & Bluetooth: DW1820A
- Audio: Realtek ALC255

**NOTICE:** When use DW1820A, you need to block 4 pins, see here: https://blog.daliansky.net/DW1820A_BCM94350ZAE-driver-inserts-the-correct-posture.html

## Working

- CPU Turbo Boost
- iGPU acceleration
- Airdrop & Airplay & Handoff
- All USB Ports
- LAN & Wireless Network
- Internal Speaker & 3.5mm Audio Output & Line Out
- Sleep

## BIOS Settings via GRUB

Put `GRUB` folder `EFI` in the root of flash disk, boot computer from it.

- Set Pre-Allocated DVMT to 64M: ***setup_var 0x8DC 0x02***
- Disable CFG lock: ***setup_var 0x5BE 0x00***

## BIOS Settings

- System Configuration → SATA Operation: ***AHCI***
- Secure Boot → Secure Boot Enable: ***Disabled***
- Intel® Software Guard Extensions™ → Intel® SGX™ Enable: ***Disabled***
- Power Management → Block Sleep: ***check***
- Virtualization Support → VT for Direct I/O: ***uncheck***

## config.plist Settings

Use [OpenCore Configurator](https://mackie100projects.altervista.org/occ-changelog-version-2-30-1-0/) or [GenSMBIOS](https://github.com/corpnewt/GenSMBIOS) to generate `System Serial Number` and `System UUID` etc.
