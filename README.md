# About

Mojo / Thor / Loki are a triad of malware that infects the SMC, EFI and macOS of Apple MacBooks.

## Contents

* [Firmware/INFO.md](https://github.com/rickmark/mojo_thor/blob/master/Firmware/INFO.md) - information about Thor's firmware and comparison against a "known good".  Four SMC encrypted payloads differ: `5CE0F1`, `5CECE9`, `5CFAB5`, `5D1751` and a few submodules.
* [Firmware/bad.fd](https://github.com/rickmark/mojo_thor/blob/master/Firmware/bad.fd) - The "Thor / Loki" firmware from a known bad laptop
* [notes.md](https://github.com/rickmark/mojo_thor/blob/master/notes.md) - Notes and rants about various components, not fully finalized or proven.
* [MojoKDP/mojo.kext](https://github.com/rickmark/mojo_thor/blob/master/MojoKDP/mojo.kext) - The MojoKDP kernel module pulled from a virtual machine kernel memory.  Injected by DMA / uDMA
* [MojoKDP/mojo.kext.S](https://github.com/rickmark/mojo_thor/blob/master/MojoKDP/mojo.kext.S) - Annotated disassembly
* ESP/APPLE - the contents of the machines EFI partition.  The most interesting of note is in `UPDATERS\\TBTH\\ThorUtil`
* logs - Unusual install and system logs from a Thor infected system, much of my interpretation is in [notes.md](https://github.com/rickmark/mojo_thor/blob/master/notes.md)
* SMC - examples of the Apple \*.smc format.  See also [smcutil](https://github.com/rickmark/smcutil)

## See Also

* `smcutil` - In progress [this repo](https://github.com/rickmark/smcutil).  Tooling for extracting and examining the Apple SMC image.
* `/usr/libexec/firmwarecheckers/eficheck/eficheck` - High Sierra utility to extract and redact your firmware image.

## Detection (direct)

* Boot into recovery, look for any output from `ioreg | grep MojoKDP`
* macOS 10.13 `sudo /usr/libexec/firmwarecheckers/eficheck/eficheck --integrity-check`

## In the press

* [REcon 2014: Apple SMC, the place to be (for an implant)](https://www.youtube.com/watch?v=nSqpinjjgmg)
* Duo security recently published a paper on rampant EFI on MacBooks not updating.  I believe these machines may well have this malware or a close variant and are simply observing the persistence mechanism at work.  [https://duo.com/blog/the-apple-of-your-efi-mac-firmware-security-research]
* Apple includes EFI verification (eficheck) to High Sierra final build [https://www.macrumors.com/2017/09/25/macos-high-sierra-weekly-efi-security-check/]

## People I've worked with

* The San Francisco FBI was my original confirmation that this was in-fact malware.
* I brought a sample of the malware to both the Union Square Apple store, and they declined to assist citing customer data.
* I was unable to reach Apple's product security division (due to the malware likely), and did take the computer directly to their campus.  The irony of eficheck now offering to allow you to submit samples is not lost on me.  (The original submission number is 671195078)
