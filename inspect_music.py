import os
import re

dir_path = r'C:\Users\silv3\AppData\Local\Temp\dudu_new_decompiled\smali\com\dudu\autoui\manage\music'
packages = set()

for root, dirs, files in os.walk(dir_path):
    for f in files:
        if f.endswith('.smali'):
            file_path = os.path.join(root, f)
            with open(file_path, 'r', encoding='utf-8', errors='ignore') as fl:
                content = fl.read()
                matches = re.findall(r'const-string[^\"]*\"([a-zA-Z0-9_\.]+\.[a-zA-Z0-9_\.]+)\"', content)
                for m in matches:
                    if '.' in m and not m.startswith('Lcom') and not m.startswith('android.') and not m.startswith('androidx.'):
                        packages.add((f, m))

for f, pkg in sorted(packages):
    print(f'{f}: {pkg}')
