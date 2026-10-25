import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_AudioProtocalUtil.txt', 'r', encoding='utf-8') as f:
    text = f.read()

def get_method_code(method_name):
    pattern = rf"name\s*:\s*'{re.escape(method_name)}'[\s\S]*?(?=(?:name\s*:\s*')|\Z)"
    match = re.search(pattern, text)
    if match:
        return match.group(0)
    return None

for m in ['writeDataToCPU', 'send32EQData', 'sendDelayData', 'sendHpfData', 'sendLpfData', 'sendDtsSurroundMode']:
    code = get_method_code(m)
    print(f"\n==================== METHOD: {m} ====================")
    if code:
        lines = code.splitlines()
        for l in lines[:50]:
            print(l)
    else:
        print("Not found.")
