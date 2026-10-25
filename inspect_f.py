import os, re

p = r'C:\Users\silv3\AppData\Local\Temp\dudu_new_decompiled\smali_classes2\f\i\b\a\b\f.smali'
with open(p, 'r', encoding='utf-8') as f:
    text = f.read()

for m in re.findall(r'const-string[^\"]*\"([^\"]+)\"', text):
    if len(m) > 2:
        print(m)
