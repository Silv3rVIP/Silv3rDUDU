import subprocess
import sys

sys.stdout.reconfigure(encoding='utf-8')

aapt_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt.exe"
proc = subprocess.Popen([aapt_path, "dump", "resources", r"dsp_app\audioset.apk"], stdout=subprocess.PIPE, text=True, encoding='utf-8', errors='ignore')

record = False
lines = []
for line in proc.stdout:
    if "com.nwd.audioset:array" in line:
        record = True
        lines.append(line.strip())
    elif record:
        if "type " in line and not "type 3" in line:
            record = False
        else:
            lines.append(line.strip())

proc.wait()
for l in lines[:100]:
    print(l)
