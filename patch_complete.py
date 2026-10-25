import os, re

base_dir = r"C:\Users\silv3\AppData\Local\Temp\dudu_new_decompiled"

print(f"=== Complete Anti-Tamper & PiP Patcher ===")
print(f"Target directory: {base_dir}")

# 1. Neutralize Y29tLmR1ZHUuYXV0b3Vp signature checking in UI files
ui_files = [
    os.path.join(base_dir, "smali", "com", "dudu", "autoui", "ui", "activity", "launcher", "LauncherActivity.smali"),
    os.path.join(base_dir, "smali", "com", "dudu", "autoui", "ui", "activity", "launcher", "LauncherActivity$b.smali"),
    os.path.join(base_dir, "smali_classes2", "com", "dudu", "autoui", "ui", "base", "f.smali"),
    os.path.join(base_dir, "smali_classes2", "com", "dudu", "autoui", "ui", "base", "newUi2", "x", "a.smali"),
]

for p in ui_files:
    with open(p, "r", encoding="utf-8") as f:
        lines = f.readlines()
    target_idx = None
    for idx, l in enumerate(lines):
        if 'Y29tLmR1ZHUuYXV0b3Vp"' in l:
            target_idx = idx
            break
    if target_idx is not None:
        appex_idx = None
        for k in range(target_idx, max(0, target_idx - 30), -1):
            if "invoke-static {}, Lcom/dudu/autoui/AppEx;->j()Lcom/dudu/autoui/AppEx;" in lines[k]:
                appex_idx = k
                break
        if appex_idx is not None:
            # Check if return-void already exists right before
            if "return-void" not in lines[appex_idx - 1] and "return-void" not in lines[appex_idx - 2]:
                lines.insert(appex_idx, "    return-void\n\n")
                with open(p, "w", encoding="utf-8") as f:
                    f.writelines(lines)
                print(f"1. Inserted return-void before signature check in {os.path.basename(p)}")
            else:
                print(f"1. return-void already present in {os.path.basename(p)}")

# 2. Neutralize System.exit globally across all smali files
exit_count = 0
for root, dirs, files in os.walk(base_dir):
    for file in files:
        if file.endswith(".smali"):
            fp = os.path.join(root, file)
            with open(fp, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()
            if "Ljava/lang/System;->exit" in content:
                new_content = re.sub(
                    r"invoke-static\s*\{[^}]*\}, Ljava/lang/System;->exit\(I\)V",
                    "# neutralized System.exit",
                    content
                )
                if new_content != content:
                    exit_count += len(re.findall(r"# neutralized System\.exit", new_content))
                    with open(fp, "w", encoding="utf-8") as f:
                        f.write(new_content)
print(f"2. Neutralized System.exit across codebase ({exit_count} occurrences)")

# 3. Neutralize Process.killProcess in UI & security classes
kill_count = 0
for root, dirs, files in os.walk(base_dir):
    for file in files:
        if file.endswith(".smali") and not file.startswith("CrashHandler"):
            fp = os.path.join(root, file)
            with open(fp, "r", encoding="utf-8", errors="ignore") as f:
                content = f.read()
            if "Landroid/os/Process;->killProcess" in content:
                new_content = re.sub(
                    r"invoke-static\s*\{[^}]*\}, Landroid/os/Process;->killProcess\(I\)V",
                    "# neutralized killProcess",
                    content
                )
                if new_content != content:
                    kill_count += len(re.findall(r"# neutralized killProcess", new_content))
                    with open(fp, "w", encoding="utf-8") as f:
                        f.write(new_content)
print(f"3. Neutralized Process.killProcess across codebase ({kill_count} occurrences)")

# 4. Patch p.smali
p_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "common", "p.smali")
if os.path.exists(p_path):
    with open(p_path, "r", encoding="utf-8") as f:
        p_content = f.read()

    p_content = re.sub(
        r"\.method static a\(\)I[\s\S]*?\.end method",
        """.method static a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method""",
        p_content
    )

    p_content = re.sub(
        r"\.method public static t\(\)Z[\s\S]*?\.end method",
        """.method public static t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        p_content
    )

    p_content = re.sub(
        r"\.method public static A\(\)Z[\s\S]*?\.end method",
        """.method public static A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        p_content
    )

    p_content = re.sub(
        r"\.method public static m\(\)Z[\s\S]*?\.end method",
        """.method public static m()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        p_content
    )

    with open(p_path, "w", encoding="utf-8") as f:
        f.write(p_content)
    print("4. Patched p.smali (a=100, t=true, A=true, m=true)")

# 5. Patch e0.smali
e0_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "common", "e0.smali")
if os.path.exists(e0_path):
    with open(e0_path, "r", encoding="utf-8") as f:
        e0_content = f.read()

    e0_content = re.sub(
        r"\.method public static b\(\)Z[\s\S]*?\.end method",
        """.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        e0_content
    )

    e0_content = re.sub(
        r"\.method public static c\(\)Z[\s\S]*?\.end method",
        """.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        e0_content
    )

    e0_content = re.sub(
        r"\.method public static d\(\)Z[\s\S]*?\.end method",
        """.method public static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        e0_content
    )

    e0_content = re.sub(
        r"\.method public static e\(\)Z[\s\S]*?\.end method",
        """.method public static e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method""",
        e0_content
    )

    with open(e0_path, "w", encoding="utf-8") as f:
        f.write(e0_content)
    print("5. Patched e0.smali (b=true, c=true, d=true, e=false)")

# 6. Patch manage/s/i.smali
i_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "manage", "s", "i.smali")
if os.path.exists(i_path):
    with open(i_path, "r", encoding="utf-8") as f:
        i_content = f.read()

    i_content = re.sub(
        r"\.method public d\(\)Z[\s\S]*?\.end method",
        """.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        i_content
    )

    with open(i_path, "w", encoding="utf-8") as f:
        f.write(i_content)
    print("6. Patched manage/s/i.smali (d=true)")

# 7. Patch user/a.smali
user_path = os.path.join(base_dir, "smali_classes2", "com", "dudu", "autoui", "user", "a.smali")
if os.path.exists(user_path):
    with open(user_path, "r", encoding="utf-8") as f:
        user_content = f.read()

    user_content = re.sub(
        r"\.method public static a\(\)Z[\s\S]*?\.end method",
        """.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        user_content
    )

    user_content = re.sub(
        r"\.method public static b\(\)Z[\s\S]*?\.end method",
        """.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
        user_content
    )

    with open(user_path, "w", encoding="utf-8") as f:
        f.write(user_content)
    print("7. Patched user/a.smali (a=true, b=true)")

print("=== ALL COMPLETE PATCHES APPLIED! ===")
