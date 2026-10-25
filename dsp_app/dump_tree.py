import subprocess
import sys

sys.stdout.reconfigure(encoding='utf-8')

aapt_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt.exe"
proc = subprocess.Popen([aapt_path, "dump", "xmltree", r"dsp_app\audioset.apk", "res/layout/activity_main.xml"], stdout=subprocess.PIPE, text=True, encoding='utf-8', errors='ignore')

with open('dsp_app/activity_main_tree.txt', 'w', encoding='utf-8') as f:
    for line in proc.stdout:
        f.write(line)

proc.wait()
print("Saved activity_main_tree.txt")
