import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_view_fragment_draw_MainFragment.txt', 'r', encoding='utf-8') as f:
    text = f.read()

target = "name          : 'setGainDataToSeekBar'"
idx = text.find(target)
print(text[idx+2000:idx+5500])
