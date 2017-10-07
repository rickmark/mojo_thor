# About

Mojo / Thor / Loki are a triad of malware that infects the EFI of Apple MacBooks.

## Contents

* notes.md - Notes and rants about various components, not fully finalized or proven.
* mojo.kext - The MojoKDP kernel module pulled from a virtual machine kernel memory.  (does not exist on disk)
* APPLE - the contents of the machines EFI partition.  The most interesting of note is in UPDATERS\\TBTH\\ThorUtil
* logs - Unusual install and system logs from a Thor infected system.

## Detection (direct)

* Boot into recovery
* Look for any output from `ioreg | grep MojoKDP`

## In the press

* Duo security recently published a paper on rampant EFI on MacBooks not updating.  I believe these machines may well have this malware or a close variant and are simply observing the persistence mechanism at work.  [https://duo.com/blog/the-apple-of-your-efi-mac-firmware-security-research]
* Apple includes EFI verification (eficheck) to High Sierra final build [https://www.macrumors.com/2017/09/25/macos-high-sierra-weekly-efi-security-check/]

## People I've worked with

* The San Francisco FBI was my original confirmation that this was in-fact malware.
* I brought a sample of the malware to both the Union Square Apple store, and they declined to assist citing customer data.
* I was unable to reach Apple's product security division (due to the malware likely), and did take the computer directly to their campus.  The irony of eficheck now offering to allow you to submit samples is not lost on me.  (The original submission number is 671195078)
