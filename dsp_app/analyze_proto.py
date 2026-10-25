import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

def analyze_constant():
    with open('dsp_app/dump/Lcom_nwd_dsp_uitls_DspConstant.txt', 'r', encoding='utf-8') as f:
        content = f.read()
    print("=== DspConstant Analysis ===")
    for m in re.finditer(r'const-string[^,]+,\s*"([^"]+)"', content):
        s = m.group(1)
        if any(k in s for k in ['/app', '/sys', 'FactoryConfig', 'dsp', 'dts', 'eq', 'prop', 'sys.']):
            print("  Constant String:", s)

def analyze_audio_protocol():
    with open('dsp_app/dump/Lcom_nwd_dsp_uitls_AudioProtocalUtil.txt', 'r', encoding='utf-8') as f:
        content = f.read()
    print("\n=== AudioProtocalUtil Analysis ===")
    for m in re.finditer(r'name\s*:\s*\'([^\']+)\'[\s\S]*?catches', content):
        block = m.group(0)
        mname = m.group(1)
        strings = re.findall(r'const-string[^,]+,\s*"([^"]+)"', block)
        if strings:
            print(f"Method {mname}: strings={strings}")

analyze_constant()
analyze_audio_protocol()
