=== Part 2 of the linux course on Cisco ===
# We use this command to go to home directory
cd ~ 
# Creates a 50MB file filled with binary zeros at the specified temporary location.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#if: specifies the data source or file to be read by the command.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#of: specifies the destination path or file where the data will be written.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#bs: sets the byte size of data blocks to be read and written at a time.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
#count: determines the total number of input blocks to copy before stopping the operation.
dd if=/dev/zero of=/tmp/swapex bs=1M count=50
# Clones the entire primary hard drive (sda) directly onto a second hard drive (sdb), overwriting all target data.
dd if=/dev/sda of=/dev/sdb
#