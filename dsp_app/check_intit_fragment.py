import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_home_horizontalActivity1.txt', 'r', encoding='utf-8') as f:
    text = f.read()

idx = text.find("intitFragment")
print(text[idx+2000:idx+5500])
