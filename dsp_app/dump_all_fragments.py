import subprocess, os

dexdump_path = r"C:\Users\silv3\AppData\Local\Android\Sdk\build-tools\34.0.0\dexdump.exe"
proc = subprocess.Popen([dexdump_path, "-d", r"dsp_app\classes.dex"], stdout=subprocess.PIPE, text=True, encoding='utf-8', errors='ignore')

current_class = None
current_lines = []

count = 0
for line in proc.stdout:
    if "Class descriptor" in line:
        if current_class and ("view/fragment" in current_class or "uitls" in current_class or "home_horizontal" in current_class):
            safe = current_class.replace('/', '_').replace(';', '').replace("'", "").strip()
            with open(f"dsp_app/dump/{safe}.txt", "w", encoding="utf-8") as out:
                out.writelines(current_lines)
            count += 1
        current_lines = [line]
        parts = line.split(":")
        current_class = parts[1].strip() if len(parts) > 1 else None
    else:
        if current_class and ("view/fragment" in current_class or "uitls" in current_class or "home_horizontal" in current_class):
            current_lines.append(line)

proc.wait()
print(f"Finished dumping {count} fragment and util classes.")
