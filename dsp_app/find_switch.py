import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_view_fragment_dts_DtsFragment.txt', 'r', encoding='utf-8') as f:
    text = f.read()

target = "dts_switch_iv"
idx = text.find(target)
while idx != -1:
    print(text[idx-50:idx+800])
    idx = text.find(target, idx + len(target))
