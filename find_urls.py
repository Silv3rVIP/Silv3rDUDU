import os, re

base = r'C:\Users\silv3\AppData\Local\Temp\dudu_new_decompiled'
urls = set()
for root, dirs, files in os.walk(base):
    for f in files:
        if f.endswith('.smali'):
            with open(os.path.join(root, f), 'r', encoding='utf-8', errors='ignore') as fl:
                for match in re.findall(r'https?://[a-zA-Z0-9\.\-_/:]+', fl.read()):
                    if 'dudu' in match or 'weather' in match or 'api' in match:
                        urls.add((f, match))

for f, u in sorted(urls):
    print(f, u)
