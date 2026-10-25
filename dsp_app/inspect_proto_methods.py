import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_AudioProtocalUtil.txt', 'r', encoding='utf-8') as f:
    proto_content = f.read()

# Let's inspect writeDataToCPU and related methods
methods = re.findall(r'(\.method[^\n]+\n(?:(?!end method)[\s\S])*\.end method)', proto_content)

print(f"Total methods in AudioProtocalUtil: {len(methods)}")
for m in methods:
    first_line = m.splitlines()[0]
    if any(k in first_line for k in ['writeData', 'send32EQData', 'sendBugleData', 'sendDelayData', 'sendHpfData', 'sendLpfData', 'isArm7604']):
        print("\n" + "="*50)
        print(first_line)
        lines = m.splitlines()
        for l in lines[:40]:
            print("  ", l)
