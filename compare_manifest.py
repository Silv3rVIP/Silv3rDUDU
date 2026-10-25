import re

p1 = r'C:\Users\silv3\AppData\Local\Temp\dudu_vw_decompiled\AndroidManifest.xml'
with open(p1, 'r', encoding='utf-8') as f:
    t1 = f.read()
perms1 = set(re.findall(r'<uses-permission android:name="([^"]+)"', t1))

p2 = r'C:\Users\silv3\AppData\Local\Temp\dudu_as_decompiled\AndroidManifest.xml'
with open(p2, 'r', encoding='utf-8') as f:
    t2 = f.read()
perms2 = set(re.findall(r'<uses-permission android:name="([^"]+)"', t2))

print('Permissions in moded but NOT in AS:')
for p in sorted(perms1 - perms2):
    print(' +', p)

print('Permissions in AS but NOT in moded:')
for p in sorted(perms2 - perms1):
    print(' -', p)
