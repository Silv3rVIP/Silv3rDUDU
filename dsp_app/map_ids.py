import subprocess
import sys

sys.stdout.reconfigure(encoding='utf-8')

aapt_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt.exe"
res = subprocess.check_output([aapt_path, "dump", "resources", r"dsp_app\audioset.apk"], text=True, encoding='utf-8', errors='ignore')

id_map = {}
for line in res.splitlines():
    if "spec resource 0x7f09" in line:
        parts = line.split()
        if len(parts) >= 4:
            res_id = parts[2]
            res_name = parts[3].split(":")[-1]
            id_map[res_id] = res_name

with open('dsp_app/activity_main_tree.txt', 'r', encoding='utf-8') as f:
    for line in f:
        l = line.strip()
        for rid, rname in id_map.items():
            if rid in l:
                l = l.replace(rid, f"{rid} ({rname})")
        if any(k in l for k in ['id(', 'visibility', 'weight', 'LinearLayout', 'Button']):
            print(l[:100])
