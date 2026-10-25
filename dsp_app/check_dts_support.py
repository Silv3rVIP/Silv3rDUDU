import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_DspManager.txt', 'r', encoding='utf-8') as f:
    text = f.read()

def show_method(m):
    p = rf"name\s*:\s*'{re.escape(m)}'[\s\S]*?(?=(?:name\s*:\s*')|\Z)"
    match = re.search(p, text)
    if match:
        print(f"\n==================== METHOD: {m} ====================")
        for l in match.group(0).splitlines()[:50]:
            print(l)

show_method('isSupportDts')
show_method('isOnlyFourBugle')
show_method('isShowStart')
