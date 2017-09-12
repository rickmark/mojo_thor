# Introduction


## The general story.

Apple products make use of EFI (as opposed to BIOS) to perform early boot.  This generally provides a chain of trust for binaries all the way from the firmware to the apps downloaded from the App Store. 

## IOCs

- Unable to remove a device from your Apple ID despite changing password
- IOKit MojoKDP node
- TextInput in iCloud
- profileservice2 in iCloud
- WindowServer DFR
- loginwindow proccess 83, died restart

## DNS C&C

The use of DNS records (bogus) to be able to tunnel out without detection.


## Recovery Mode, hidden process 495 and the VM from AppleHV


## MojoKDP

Injected via DMA to replace Apple Standard Key STDK with MOJO Key.  Load offset at high end of User space (0x7FFFFFFFFFFFFFFF - sizeof(mojoKDP.kext))

KDP is Kernel Debug Port / Proxy.  Hardcoded MAC and IP address.  Sets up serial (projected into the users OS as two serial ports found in the Networking tab).

kdp_core at 0x7000 zlib compressed.  Rewrite of module to obfuscate after kmod start.

CRC32 packets transmitted across serial.

PE_parse_boot_argn

kdp_match_name = mojo1 mojo2

OSMetaClass MojoKDP and OSService MojoKDP

Detection from Recovery “ioreg | grep MojoKDP”

// Verify endianness
 kdp_set_ip_and_mac_address(“16.0.0.63”, “6b:64:70:6d:6a:6f”)

IOLog / IOWait and Serial GetChar on boot (eject CD)

## The jailbroken touchbar (EOS)

Allows for the toucher and CoreSimulator to run in concert to emulate mobile devices even when they are not connected.

### The initial Software Update

Hacked versions of iTunes (thus AppleMobileDevice) and Apple Remote Desktop client.  (Also GKData, bogus, and ChineseWordList)



## DYLD preloading attack

By preloading core functionality the rootkit is able to control several key core OS services.

AuthKit AKMasterToken
CoreTelephony
AppleWirelessDiagnostics
IMCore - Allows receiving and synchronizing SMS messages from device.


## Mach port hijacking

Some binaries take over roles that are not to be provided by that service.  `loginwindow` for instance becomes the arbiter of trust by controlling com.apple.trustd (usually operated by the trustd binary, responsible for verification of certificates, OSCP checking etc.).  This is how non-apple signed binaries work in the compromised OS.

## Replacement of AppleMobileDevice, SHSH blob storage and jailbreak and exploit of Apple iPhones restored through the computer.  Uses attacker stored SHSH blobs for previous jail breakable iOS to perform a restore of a jailbreakable image, jailbreak and new user-land binaries to show newer OS).

### OTATaskingAgent

### Baseband Ki MITM and T-Mobile

Bought brand new Apple AT&T locked iPhone, APN became attachmnc260mcc310.  MNC 260 = T-Mobile.

Explains VoLTE failure as IP address of the device doesn’t match eNodeB LOC service.


## Data hiding in GPT inter-partition space and control of the SSD / NVMe firmware.

Mismatch of sector size to hide alternate GPT table. (GPT occurs at LBA 2, which can be at 512 bytes into the block device or 4096.)

## Thor / Loki

ACPI table shadowing with manufacturer Loki are services that in fact are part of the malicious rootlet.  (EFI firmware links to Tieano Core EDK2 implementation, can MITM all EFI services and function calls).

### Loki and the ACPI table shadow

“Error SPI enabled after EFI Platform Exit”

Loki Controls:

UEFI
High Precession Event Timer (first pass at non-maskable interrupts)
APIC - Advanced Power and Configuration Interface, system hardware description, generic hardware hooking, and power off event control.
MCFG - Manufacturer data, including UDID and serial number of the computer.
SBST - Smart Battery Specification Table - Can allow “dark wake” by conserving battery power and lying to the high level OS about remaining battery life.
FACP / FADT - Fixed ACPI Description Table
ECDT - Embedded Controller Boot Resources Table - Self explanatory


### Ghost Telephonist and VoLTE baseband hijack

Field Kit and the ICCID mismatch / Ki extraction.

### Pegasus

PegoGFX0 Framebuffer
PegoSSD0 SSD
TbtPEG12 - Thunderbolt 1/2

### ThorUtil.efi

### Thor and the Thunderbolt bus

Thunderbolt speed requires DMA, allows for injecting of KEXT modification of kernel data structures.


