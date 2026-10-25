import struct
import zipfile
import json
import re

with open('dsp_app/audioset.apk', 'rb') as f:
    z = zipfile.ZipFile(f)
    dex_data = z.read('classes.dex')

string_ids_size = struct.unpack('<I', dex_data[56:60])[0]
string_ids_off = struct.unpack('<I', dex_data[60:64])[0]
type_ids_size = struct.unpack('<I', dex_data[64:68])[0]
type_ids_off = struct.unpack('<I', dex_data[68:72])[0]
class_defs_size = struct.unpack('<I', dex_data[96:100])[0]
class_defs_off = struct.unpack('<I', dex_data[100:104])[0]

strings = []
for i in range(string_ids_size):
    off = struct.unpack('<I', dex_data[string_ids_off + i*4 : string_ids_off + (i+1)*4])[0]
    idx = off
    l = 0
    shift = 0
    while True:
        b = dex_data[idx]
        idx += 1
        l |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    s = dex_data[idx:idx+l].decode('utf-8', errors='ignore')
    strings.append(s)

type_names = []
for i in range(type_ids_size):
    descriptor_idx = struct.unpack('<I', dex_data[type_ids_off + i*4 : type_ids_off + (i+1)*4])[0]
    type_names.append(strings[descriptor_idx])

# Filter app classes
nwd_classes = [t for t in type_names if 'Lcom/nwd/' in t]

with open('dsp_app/nwd_classes.txt', 'w', encoding='utf-8') as f_out:
    for c in sorted(nwd_classes):
        f_out.write(c + '\n')

with open('dsp_app/dex_strings.txt', 'w', encoding='utf-8') as f_out:
    for s in strings:
        f_out.write(s + '\n')

print(f"Extracted {len(strings)} strings, {len(nwd_classes)} com.nwd classes.")
