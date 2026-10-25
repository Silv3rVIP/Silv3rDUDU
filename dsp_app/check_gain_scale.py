import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_DspManager.txt', 'r', encoding='utf-8') as f:
    text = f.read()

# Search for gain min, max, center, initParam
for m in ['initParam', 'setOneGain', 'send32EQGain', 'send32EQModeData']:
    pattern = rf"name\s*:\s*'{re.escape(m)}'[\s\S]*?(?=(?:name\s*:\s*')|\Z)"
    match = re.search(pattern, text)
    if match:
        print(f"\n==================== METHOD: {m} ====================")
        lines = match.group(0).splitlines()
        for l in lines[:60]:
            print(l)
