# ChunkList v1

# Header = v1 = 36b

Magic = CHKL
Header size in bytes (byte4) = 36
Version (byte4)
Number of chunks (uint4)
Unknown (likely header extra?) = 0
Row Size = 36
Row extra? = 0
Signed size = header + number of chunks * row size?
Unsigned extra? = 0

# Row 36b

Length = (uint4), typically 2MB
SHA256 of chunk

# Footer
256 byte, 2048 RSA signature
