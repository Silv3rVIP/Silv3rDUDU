import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_home_horizontalActivity1.txt', 'r', encoding='utf-8') as f:
    text = f.read()

idx = text.find("2dfcd6")
print(text[idx-100:idx+2500])
