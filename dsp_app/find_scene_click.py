import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_view_fragment_dts_sceneMode_SceneModeDtsFragment.txt', 'r', encoding='utf-8') as f:
    text = f.read()

idx = text.find("onClick")
print(text[idx:idx+2500])
