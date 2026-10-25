import sys
sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_home_horizontalActivity1.txt', 'r', encoding='utf-8') as f:
    text = f.read()

for marker in ['2dfa70', '2dfe64', '2dffa2', '2dfd2c']:
    idx = text.find(marker)
    if idx != -1:
        print(f"=== Marker {marker} ===")
        start = max(0, idx - 100)
        end = min(len(text), idx + 1000)
        print(text[start:end])
