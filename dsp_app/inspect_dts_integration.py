import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_home_horizontalActivity1.txt', 'r', encoding='utf-8') as f:
    text = f.read()

# Let's inspect where mainBtnDts or dts tabs are set up
for line in text.splitlines():
    if any(k in line.lower() for k in ['dts', 'viewpager', 'adapter', 'fragment']):
        print(line[:100])
