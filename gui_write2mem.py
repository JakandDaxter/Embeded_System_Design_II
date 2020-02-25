import sys
import argparse
import time
import mmap
import struct

def WriteToMem(val, reg): 
    # open dev mem and see to base address, file needs to be on snickerdoodle board
    #to access this path
    f = open("/dev/mem", "r+b")
    mem = mmap.mmap(f.fileno(), 32, offset=0x43c20000) #from vivado 0x43C2_0000
    toMem = int(val)

    mem.seek(reg)
    mem.write(struct.pack('l', toMem))

    time.sleep(.5)

    mem.seek(reg)
    fromMem = struct.unpack('l', mem.read(4))[0]

    print str(reg) + " = " + str(fromMem)
    # Close mem after finishing
    mem.close()
    f.close()


