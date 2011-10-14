copy implementation\system.bit ..\bit_files\baopoco_2011_Oct_13_2220.bit
mkbof.exe -o implementation\system.bof -s core_info.tab -t 3 implementation\system.bin
copy implementation\system.bof ..\bit_files\baopoco_2011_Oct_13_2220.bof
