import subprocess
import os

os.makedirs('dsp_app/dump', exist_ok=True)

dexdump_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\dexdump.exe"

print("Running dexdump...")
proc = subprocess.Popen([dexdump_path, "-d", r"dsp_app\classes.dex"], stdout=subprocess.PIPE, text=True, encoding='utf-8', errors='ignore')

current_class = None
current_lines = []
target_keywords = ['DspManager', 'AudioProtocalUtil', 'DspConstant', 'DspAlgorithm', 'SettingController', 'LoadDataUtils', 'SiteFragment', 'BassFragment', 'KingFragment', 'TrackFragment', 'home_horizontalActivity']

found_classes = set()

for line in proc.stdout:
    if "Class descriptor" in line:
        if current_class and any(k in current_class for k in target_keywords):
            # Save previous class
            safe_name = current_class.replace('/', '_').replace(';', '').replace("'", '').strip()
            with open(f"dsp_app/dump/{safe_name}.txt", "w", encoding="utf-8") as out:
                out.writelines(current_lines)
            found_classes.add(safe_name)
        current_lines = [line]
        parts = line.split(":")
        if len(parts) > 1:
            current_class = parts[1].strip()
        else:
            current_class = None
    else:
        if current_class and any(k in current_class for k in target_keywords):
            current_lines.append(line)

if current_class and any(k in current_class for k in target_keywords):
    safe_name = current_class.replace('/', '_').replace(';', '').replace("'", '').strip()
    with open(f"dsp_app/dump/{safe_name}.txt", "w", encoding="utf-8") as out:
        out.writelines(current_lines)
    found_classes.add(safe_name)

proc.wait()
print(f"Dumped {len(found_classes)} classes to dsp_app/dump/:")
for c in sorted(found_classes):
    print(" ", c)
