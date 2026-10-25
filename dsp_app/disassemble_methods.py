import struct
import zipfile

with open('dsp_app/audioset.apk', 'rb') as f:
    z = zipfile.ZipFile(f)
    dex_data = z.read('classes.dex')

string_ids_size = struct.unpack('<I', dex_data[56:60])[0]
string_ids_off = struct.unpack('<I', dex_data[60:64])[0]
type_ids_size = struct.unpack('<I', dex_data[64:68])[0]
type_ids_off = struct.unpack('<I', dex_data[68:72])[0]
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

def read_uleb128(data, off):
    res = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        res |= (b & 0x7f) << shift
        if (b & 0x80) == 0:
            break
        shift += 7
    return res, off

def read_sleb128(data, off):
    res = 0
    shift = 0
    while True:
        b = data[off]
        off += 1
        res |= (b & 0x7f) << shift
        shift += 7
        if (b & 0x80) == 0:
            break
    if shift < 32 and (b & 0x40) != 0:
        res |= -(1 << shift)
    return res, off

# Scan class_defs
class_map = {}
for i in range(class_defs_size):
    c_off = class_defs_off + i*32
    class_idx = struct.unpack('<I', dex_data[c_off:c_off+4])[0]
    class_data_off = struct.unpack('<I', dex_data[c_off+24:c_off+28])[0]
    cname = types[class_idx]
    if 'DspManager' in cname or 'AudioProtocalUtil' in cname or 'DspConstant' in cname:
        class_map[cname] = class_data_off

print("Matched target classes:", list(class_map.keys()))

for cname, cdata_off in class_map.items():
    if cdata_off == 0:
        continue
    off = cdata_off
    static_fields_size, off = read_uleb128(dex_data, off)
    instance_fields_size, off = read_uleb128(dex_data, off)
    direct_methods_size, off = read_uleb128(dex_data, off)
    virtual_methods_size, off = read_uleb128(dex_data, off)
    
    # skip fields
    for _ in range(static_fields_size):
        _, off = read_uleb128(dex_data, off)
        _, off = read_uleb128(dex_data, off)
    for _ in range(instance_fields_size):
        _, off = read_uleb128(dex_data, off)
        _, off = read_uleb128(dex_data, off)
        
    # read direct methods
    m_idx = 0
    all_methods = []
    for _ in range(direct_methods_size):
        m_diff, off = read_uleb128(dex_data, off)
        m_idx += m_diff
        access_flags, off = read_uleb128(dex_data, off)
        code_off, off = read_uleb128(dex_data, off)
        all_methods.append((m_idx, code_off))
    m_idx = 0
    for _ in range(virtual_methods_size):
        m_diff, off = read_uleb128(dex_data, off)
        m_idx += m_diff
        access_flags, off = read_uleb128(dex_data, off)
        code_off, off = read_uleb128(dex_data, off)
        all_methods.append((m_idx, code_off))
        
    print(f"\n--- Class: {cname} (methods: {len(all_methods)}) ---")
    for mid, code_off in all_methods:
        c_type, m_name = methods[mid]
        if code_off == 0:
            continue
        # Check code item
        registers_size = struct.unpack('<H', dex_data[code_off:code_off+2])[0]
        ins_size = struct.unpack('<H', dex_data[code_off+2:code_off+4])[0]
        outs_size = struct.unpack('<H', dex_data[code_off+4:code_off+6])[0]
        tries_size = struct.unpack('<H', dex_data[code_off+6:code_off+8])[0]
        insns_size = struct.unpack('<I', dex_data[code_off+12:code_off+16])[0]
        insns = dex_data[code_off+16 : code_off+16+insns_size*2]
        
        # look for strings used in this method (const-string: 0x1a reg, string_idx; const-string/jumbo: 0x1b reg, string_idx32)
        used_strings = []
        pc = 0
        while pc < len(insns):
            op = insns[pc]
            if op == 0x1a:
                s_id = struct.unpack('<H', insns[pc+2:pc+4])[0]
                used_strings.append(strings[s_id])
                pc += 4
            elif op == 0x1b:
                s_id = struct.unpack('<I', insns[pc+2:pc+6])[0]
                used_strings.append(strings[s_id])
                pc += 6
            else:
                pc += 2
        if any(w in m_name for w in ['Dts', 'Delay', 'Bugle', 'HLData', 'DBB', 'EQ', 'Init', 'Support']):
            print(f"Method: {m_name} (code_size={insns_size*2} bytes)")
            if used_strings:
                print(f"   Strings: {used_strings[:10]}")
