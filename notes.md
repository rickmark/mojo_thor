# Introduction

Or the story of how the 4th Immutable Law of Security and blind trust in the platform allowed someone to control my life.

First of all, as far as I've been able to deduce this is an "Evil Maid" attack.  It cannot be performed remotely (as Apple has closed the holes in Thunderstrike and Thunderstrike 2).  It is my working theroy that somone has used the 16 pin technician port on the logic board to manually reflash the Firmware to an evil or exploitable version.  I say this with some level of confidence after removing the back panel to one of my machines and finding a partial print.  (It has never been serviced by Apple, I'm the original owner and I've never accessed the back panel)

Secondarly, I've posted samples of this rootkit over the last few months as I've analyzed it.  It was only when I met with the FBI that I got proper confirmation of the status of MojoKDP, Thor and Loki as known threats.  As of now I do not and likely will not know much about the APT the developed them, but I suspect that the fact I've been permitted to publish these findings is a good indication from law enforcement.

Third, MojoKDP is on every laptop (3 MacBooks) in my house.  There's always the potential that some of this analysis is incorrect, because it has been done on comprimised hardware.  (And yes, I've had my MacBook's logic board replaced, twice even and had it reappear when not in physicial possesition of the device.)  It is my hope that this publication may diswade them from loosing further information about this malware stack, and hopefully reach other people to help them identify and resolve infection on their computers.

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

Discovered by DSTNAT'ing all UDP / TCP 53 traffic to my own DNS server and finding many NX responses.

Confirmed partially by viewing iPhone data usage, System Services, DNS using aproximatly 5% of 1GB of data.

## Recovery Mode, hidden process 495 and the VM from AppleHV
// Confirmation and more data needed.

## MojoKDP

Injected via DMA to replace Apple Standard Key STDK with MOJO Key.  Load offset at high end of User space (0x7FFFFFFFFFFFFFFF - sizeof(mojoKDP.kext))

KDP is Kernel Debug Port / Proxy.  Hardcoded MAC and IP address.  Sets up serial (projected into the users OS as two serial ports found in the Networking tab).

kdp_core at 0x7000 zlib compressed.  Rewrite of module to obfuscate after kmod start.

CRC32 packets transmitted across serial.

PE_parse_boot_argn

kdp_match_name = mojo, mojo1, mojo2

OSMetaClass MojoKDP and OSService MojoKDP

Detection from Recovery “ioreg | grep MojoKDP”

// Verify endianness
 kdp_set_ip_and_mac_address(“16.0.0.63”, “6b:64:70:6d:6a:6f”)

IOLog / IOWait and Serial GetChar on boot (eject CD?)

## The Jailbroken Touchbar (EOS / watchOS)

Allows for the toucher and CoreSimulator to run in concert to emulate mobile devices even when they are not connected.

* Various non-Apple like messages

### The initial Software Update

Hacked versions of iTunes (thus AppleMobileDevice) and Apple Remote Desktop client.

* Also GKData for various Opaque blocks of legitimate software, bogus, and ChineseWordList)



## DYLD preloading attack

By preloading core functionality the rootkit is able to control several key core OS services.

AuthKit AKMasterToken
CoreTelephony
AppleWirelessDiagnostics
IMCore - Allows receiving and synchronizing SMS messages from device.
CoreTime


## Mach port hijacking

Some binaries take over roles that are not to be provided by that service.  `loginwindow` for instance becomes the arbiter of trust by controlling com.apple.trustd (usually operated by the trustd binary, responsible for verification of certificates, OSCP checking etc.).  This is how non-apple signed binaries work in the compromised OS.

## Replacement of AppleMobileDevice

* SHSH blob storage and jailbreak and exploit of Apple iPhones restored through the computer.  
* Uses attacker stored SHSH blobs for previous jail breakable iOS to perform a restore of a jailbreakable image
* jailbreak and new user-land binaries to show newer OS.

### How Discovered

While booted into recovery `kextcache -invalidate /Volumes/Macintosh HD` results in AppleMobileDevice is not properly signed, contuning because kext-dev-mode = 1 (which, it is in fact not).  I later corilated this to the initial update and the install of iTunes (Which includes the binaries that interface with iDevices)

### OTATaskingAgent

### Baseband K<sub>i</sub> MiTM and T-Mobile / AT&amp;T

Bought brand new Apple AT&T locked iPhone, APN became attachmnc260mcc310.  MNC 260 = T-Mobile.

Explains VoLTE failure as IP address of the device doesn’t match eNodeB LOC service.


## Data hiding in GPT inter-partition space and control of the SSD / NVMe firmware.

Mismatch of sector size to hide alternate GPT table. (GPT occurs at LBA 2, which can be at 512 bytes into the block device or 4096.)

## Thor / Loki

ACPI table shadowing with manufacturer Loki are services that in fact are part of the malicious rootlet.  (EFI firmware links to Tieano Core EDK2 implementation, can MITM all EFI services and function calls).

### Loki and the ACPI table shadow

“Error SPI enabled after EFI Platform Exit”

Loki Controls (therefore my guess is Loki is the EFI firmware):

UEFI - Unified Extensible Firmware Interface (Loki uses one based on EDK2 / Tiano Core)
HPET - High Precession Event Timer (first pass at non-maskable interrupts)
APIC - Advanced Power and Configuration Interface, system hardware description, generic hardware hooking, and power off event control.
MCFG - Manufacturer data, including UDID and serial number of the computer.
SBST - Smart Battery Specification Table - Can allow “dark wake” by conserving battery power and lying to the high level OS about remaining battery life.
FACP / FADT - Fixed ACPI Capibility Pointer / Descritpion Table
ECDT - Embedded Controller Boot Resources Table - Self explanatory

### Apple SMC

Which is which, EFI, SMC, Thunderbolt controller, and Thor and Loki

When I reverse engineered the Apple EFI BIOS the mismatching regions are likely encrypted with keys stored in the SMC.  This is part of the DSMOS idea of having core pieces of code protected by their upper layer.  Also, DSMOS I would venture a guess is decrypted by uDMA from the Stellaris SMC chip on the board.  This is "Apple Genuine" hardware validation.  The problem here is, just as it allows Apple to protect there "DRM" code, it is just as useful for a bad actor to use for storing malware.

### Ghost Telephonist and VoLTE baseband hijack

Field Kit and the ICCID mismatch / Ki extraction.

### Pegasus?

PegoGFX0 Framebuffer
PegoSSD0 SSD
TbtPEG12 - Thunderbolt 1/2

### ThorUtil.efi

### Thor and the Thunderbolt bus

Thunderbolt speed requires DMA, allows for injecting of KEXT modification of kernel data structures.
