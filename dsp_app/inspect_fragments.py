import re
import sys

sys.stdout.reconfigure(encoding='utf-8')

for frag in ['SiteFragment', 'TrackFragment', 'KingFragment', 'BassFragment']:
    fname = f'dsp_app/dump/Lcom_nwd_audioset_view_fragment_{frag.lower()[:4]}_{frag}.txt'
    try:
        with open(fname, 'r', encoding='utf-8') as f:
            content = f.read()
        print(f"\n==================== {frag} ====================")
        # Find methods
        methods = re.findall(r"name\s*:\s*'([^']+)'", content)
        print(f"Methods ({len(methods)}): {methods[:20]}")
        # Find string constants
        strings = set(re.findall(r'const-string[^,]+,\s*"([^"]+)"', content))
        print(f"Sample strings: {sorted(list(strings))[:25]}")
    except Exception as e:
        print(f"Error reading {frag}: {e}")
