import subprocess
import sys

sys.stdout.reconfigure(encoding='utf-8')

aapt_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt.exe"
proc = subprocess.Popen([aapt_path, "dump", "xmltree", r"dsp_app\audioset.apk", "res/layout/activity_main.xml"], stdout=subprocess.PIPE, text=True, encoding='utf-8', errors='ignore')

for line in proc.stdout:
    if any(k in line.lower() for k in ['btn', 'dts', 'id/main_', 'visibility', 'weight', 'linearlayout']):
        print(line.strip()[:100])

proc.wait()
