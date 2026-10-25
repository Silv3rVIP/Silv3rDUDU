import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_DspData.txt', 'r', encoding='utf-8') as f:
    text = f.read()

target = "key_7735_gain"
idx = text.find(target)
while idx != -1:
    print("--- Occurence of key_7735_gain in DspData ---")
    start = max(0, idx - 100)
    end = min(len(text), idx + 1000)
    print(text[start:end])
    idx = text.find(target, idx + len(target))
