import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_DspManager.txt', 'r', encoding='utf-8') as f:
    text = f.read()

idx = text.find("const-string v0, \"key_eq_type\"")
print(text[idx:idx+3500])
