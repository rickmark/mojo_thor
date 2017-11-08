# Firmware Files

These files indicate the differences between a Thor infected laptop and it's "Apple EFI" version.  It should be noted that a few details of the differences are to be expected, such as the older serial number that has been substituted into the platform_data bin (aparantly this is how apple encodes your serial number across logic board replacements.)

See Also: INDEX.md for labels on components in the firmware

## Acquiring a firmware from a 10.13 macOS

`/usr/libexec/firmwarecheckers/eficheck/eficheck --save -b output.bin`

## Acquiring a known good firmware.

* Use [Pacifest](https://www.charlessoft.com) to open a macOS install image.
*

## `good.fd`

The stock version of MacBook Pro 11,3's firmware and it's components and a description of the layout (found in flashdescriptor).

The EFI Version is `MBP114.88Z.0172.B16.1702161608`  and was extracted using the Mac OS 10.13 `eficheck --save` utility (A useful addition).  Now, if Apple would allow the same transparancy for the SMC, Thunderbolt and Broadcomm controllers this article would be way past done!

See also: good_hashes

## `bad.fd`

The "Thor / Loki" version of the EFI firmware as found of a MacBook exhibiting the "MojoKDP kernel extension"

The EFI Version is `MBP114.88Z.0172.B16.1702161608` and was extracted from [gdbinit/firmware_vault](https://github.com/gdbinit/firmware_vault/blob/master/EFI/MacBookPro/MBP114_0172_B16_LOCKED.fd)

See also: bad_hashes


## `[good|bad]_regions\flashregion_0_flashdescription.bin`

This is the generic "partition table" of the firmware file.  This is identical between the two copies

## `[good|bad]_regions\flashregion_1_bios.bin` and `[good|bad]_flashregion_1_bios`

This region is the BIOS / EFI early boot region.  This is raw code that is executed on startup.  Both were extracted by `binwalk` into the extracted folders.

I'd like to draw attention to the following files which are LZMA comprepssed but do not decompress in either image (likely excrypted by a key in the SMC.  The MojoKDP module makes reference to a MOJO key and STDK key which are likely the decryption keys).  The reason this area is encrypted is likely due to it including code to protect Apple's OS and `DSMOS.kext`

Encrypted Payloads (By the SMC)

* `5CE0F1`
* `5CECE9`
* `5CFAB5`
* `5D1751`

## `[good|bad]_regions\flashregion_2_intel_me.bin`

This is a compressed image of the Intel ME (this is used in Apple products to provide internet recovery).  This differs greatly.  More analysis is needed.

The two binaries differ but the result of [unhuffme](https://io.netgarage.org/me/) created identical output.  This may indicate that there is a difference in the huffmen dictionary used by the two and is due more investigation.

## `[good|bad]_regions\flashregion_4_platform_data.bin`

This region is where serial numbers should be stored and other non-updatable data.  Note that this region can be replaced easily using an external chip reader/writer.
