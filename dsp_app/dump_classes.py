import struct
import zipfile

with open('dsp_app/audioset.apk', 'rb') as f:
    z = zipfile.ZipFile(f)
    dex_data = z.read('classes.dex')

string_ids_size = struct.unpack('<I', dex_data[56:60])[0]
string_ids_off = struct.unpack('<I', dex_data[60:64])[0]
type_ids_size = struct.unpack('<I', dex_data[64:68])[0]
type_ids_off = struct.unpack('<I', dex_data[68:72])[0]
proto_ids_size = struct.unpack('<I', dex_data[72:76])[0]
proto_ids_off = struct.unpack('<I', dex_data[76:80])[0]
field_ids_size = struct.unpack('<I', dex_data[80:84])[0]
field_ids_off = struct.unpack('<I', dex_data[84:88])[0]
method_ids_size = struct.unpack('<I', dex_data[88:92])[0]
method_ids_off = struct.unpack('<I', dex_data[92:96])[0]
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

types = []
for i in range(type_ids_size):
    d_idx = struct.unpack('<I', dex_data[type_ids_off + i*4 : type_ids_off + (i+1)*4])[0]
    types.append(strings[d_idx])

fields = []
for i in range(field_ids_size):
    c_idx, t_idx, n_idx = struct.unpack('<HHI', dex_data[field_ids_off + i*8 : field_ids_off + (i+1)*8])
    fields.append((types[c_idx], types[t_idx], strings[n_idx]))

methods = []
for i in range(method_ids_size):
    c_idx, p_idx, n_idx = struct.unpack('<HHI', dex_data[method_ids_off + i*8 : method_ids_off + (i+1)*8])
    methods.append((types[c_idx], strings[n_idx]))

print(f"Total methods: {len(methods)}, Total fields: {len(fields)}")

# Inspect key classes
target_classes = [
    'Lcom/nwd/dsp/uitls/DspManager;',
    'Lcom/nwd/dsp/uitls/DspConstant;',
    'Lcom/nwd/dsp/uitls/AudioProtocalUtil;',
    'Lcom/nwd/dsp/uitls/DspAlgorithm;',
    'Lcom/nwd/dsp/uitls/SettingController;',
    'Lcom/nwd/dsp/uitls/DspUtils;',
    'Lcom/nwd/dsp/uitls/DspData;'
]

with open('dsp_app/target_class_info.txt', 'w', encoding='utf-8') as out:
    for tc in target_classes:
        out.write(f"\n==================== {tc} ====================\n")
        out.write("FIELDS:\n")
        for c, t, n in fields:
            if c == tc:
                out.write(f"  {t} {n}\n")
        out.write("METHODS:\n")
        for c, m in methods:
            if c == tc:
                out.write(f"  {m}\n")

print("Target class info saved to dsp_app/target_class_info.txt")
