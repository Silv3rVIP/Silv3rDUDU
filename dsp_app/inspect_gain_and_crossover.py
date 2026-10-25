import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

with open('dsp_app/dump/Lcom_nwd_audioset_view_fragment_draw_MainFragment.txt', 'r', encoding='utf-8') as f:
    text = f.read()

print("=== MainFragment: Gain & Seekbar Logic ===")
for m in re.finditer(r"name\s*:\s*'([^']+)'[\s\S]*?(?=(?:name\s*:\s*')|\Z)", text):
    mname = m.group(1)
    block = m.group(0)
    if any(k in mname.lower() for k in ['progress', 'gain', 'seek', 'touch', 'init']):
        strings = re.findall(r'const-string[^,]+,\s*"([^"]+)"', block)
        print(f"Method: {mname}")
        for l in block.splitlines()[:30]:
            if any(w in l for w in ['const', 'div', 'mul', 'add', 'sub', 'mEq', 'gain']):
                print("  ", l)

print("\n=== TrackFragment: Crossover & HPF / LPF Logic ===")
with open('dsp_app/dump/Lcom_nwd_audioset_view_fragment_track_TrackFragment.txt', 'r', encoding='utf-8') as f:
    track_text = f.read()

for m in re.finditer(r"name\s*:\s*'([^']+)'[\s\S]*?(?=(?:name\s*:\s*')|\Z)", track_text):
    mname = m.group(1)
    block = m.group(0)
    if any(k in mname.lower() for k in ['hpf', 'lpf', 'slope', 'freq', 'spiner', 'spinner', 'item', 'select']):
        print(f"Method: {mname}")
        for l in block.splitlines()[:25]:
            if any(w in l for w in ['const', 'iget', 'iput', 'invoke']):
                print("  ", l)
