import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_home_horizontalActivity1.txt', 'r', encoding='utf-8') as f:
    text = f.read()

import re
matches = re.findall(r"([0-9a-f]+:[^\n]*?setVisibility:[^\n]*)", text)
for m in matches:
    print(m)
