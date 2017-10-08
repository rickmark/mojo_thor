# Firmware Files

These files indicate the differences between a Thor infected laptop and it's "Apple EFI" version.  It should be noted that a few details of the differences are to be expected, such as the older serial number that has been substituted into the platform_data bin (aparantly this is how apple encodes your serial number across logic board replacements.)

## Good.fd

The stock version of MacBook Pro 11,3's firmware and it's components and a description of the layout (found in flashdescriptor).

The EFI Version is "MBP114.88Z.0172.B16.1702161608"

## Thor.fd

The "Thor" version of the EFI firmware as found of a MacBook exhibiting the "MojoKDP kernel extension"

The EFI Version is "MBP114.88Z.0172.B16.1702161608"


## \*\_flashregion_0_flashdescription.bin

This is the generic "partition table" of the firmware file.  This is identical between the two copies

## \*\_flashregion_1_bios.bin

This region is the BIOS / EFI early boot region.  This is raw code that is executed on startup.  This region differs slightly in the default
values for the ACPI table (this is Loki)

## \*\_flashregion_2_intel_me.bin

This is a compressed image of the Intel ME (this is used in Apple products to provide internet recovery).  This differs greatly.  More analysis is needed.

## \*\_flashregion_4_platform_data.bin

This region is where serial numbers should be stored and other non-updatable data.  Note that this region can be replaced easily using an external chip reader/writer.
