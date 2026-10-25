import subprocess
import sys

sys.stdout.reconfigure(encoding='utf-8')

aapt_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\aapt.exe"
proc = subprocess.Popen([aapt_path, "dump", "--values", "resources", r"dsp_app\audioset.apk"], stdout=subprocess.PIPE, text=True, encoding='utf-8', errors='ignore')

record = False
for line in proc.stdout:
    if "resource 0x7f03000" in line:
        record = True
        print(line.strip())
    elif record:
        if "resource 0x7f04" in line:
            break
        print(line.strip())

proc.wait()
