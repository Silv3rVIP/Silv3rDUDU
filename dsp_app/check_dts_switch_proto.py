import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_dsp_uitls_AudioProtocalUtil.txt', 'r', encoding='utf-8') as f:
    text = f.read()

idx = text.find("sendDtsFunctionSwitch")
print(text[idx:idx+1500])
