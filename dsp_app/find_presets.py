import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_DspManager.txt', 'r', encoding='utf-8') as f:
    text = f.read()

# Find send32EQModeData or methods that set presets
target = "send32EQModeData"
idx = text.find(target)
while idx != -1:
    print(f"--- send32EQModeData at {idx} ---")
    print(text[idx:idx+1500])
    idx = text.find(target, idx + len(target))
