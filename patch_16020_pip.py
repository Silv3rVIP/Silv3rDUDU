import os, re

roots = [
    r"C:\Users\silv3\AppData\Local\Temp\dudu_new_decompiled",
    r"C:\Users\silv3\AppData\Local\Temp\dudu_new_smali"
]

def apply_patches(base_dir):
    print(f"\nApplying PiP & Platform patches to: {base_dir}")
    if not os.path.exists(base_dir):
        print(f"Skipping {base_dir} (does not exist)")
        return

    # 1. Patch p.smali
    p_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "common", "p.smali")
    if os.path.exists(p_path):
        with open(p_path, "r", encoding="utf-8") as f:
            p_content = f.read()

        # a()I -> return 0x64 (100 = UIS8581a)
        p_content = re.sub(
            r"\.method static a\(\)I[\s\S]*?\.end method",
            """.method static a()I
    .locals 1

    const/16 v0, 0x64

    return v0
.end method""",
            p_content
        )

        # t()Z -> return 1
        p_content = re.sub(
            r"\.method public static t\(\)Z[\s\S]*?\.end method",
            """.method public static t()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
            p_content
        )

        # A()Z -> return 1
        p_content = re.sub(
            r"\.method public static A\(\)Z[\s\S]*?\.end method",
            """.method public static A()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
            p_content
        )

        # m()Z -> return 1
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
        print("Patched p.smali (a=100, t=true, A=true, m=true)")

    # 2. Patch e0.smali
    e0_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "common", "e0.smali")
    if os.path.exists(e0_path):
        with open(e0_path, "r", encoding="utf-8") as f:
            e0_content = f.read()

        # b()Z -> return 1 (PiP secondary display check)
        e0_content = re.sub(
            r"\.method public static b\(\)Z[\s\S]*?\.end method",
            """.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
            e0_content
        )

        # c()Z -> return 1 (PiP Android version check)
        e0_content = re.sub(
            r"\.method public static c\(\)Z[\s\S]*?\.end method",
            """.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
            e0_content
        )

        # d()Z -> return 1 (PiP platform check)
        e0_content = re.sub(
            r"\.method public static d\(\)Z[\s\S]*?\.end method",
            """.method public static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
            e0_content
        )

        # e()Z -> return 0 (PiP VIP/Login block check -> false = not blocked)
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
        print("Patched e0.smali (b=true, c=true, d=true, e=false)")

    # 3. Patch manage/s/i.smali
    i_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "manage", "s", "i.smali")
    if os.path.exists(i_path):
        with open(i_path, "r", encoding="utf-8") as f:
            i_content = f.read()

        # d()Z -> return 1 (App PiP eligibility)
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
        print("Patched manage/s/i.smali (d=true)")

    # 4. Patch user/a.smali (in smali_classes2)
    user_path = os.path.join(base_dir, "smali_classes2", "com", "dudu", "autoui", "user", "a.smali")
    if os.path.exists(user_path):
        with open(user_path, "r", encoding="utf-8") as f:
            user_content = f.read()

        # a()Z -> return 1 (VIP status)
        user_content = re.sub(
            r"\.method public static a\(\)Z[\s\S]*?\.end method",
            """.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method""",
            user_content
        )

        # b()Z -> return 1 (Tester status)
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
        print("Patched user/a.smali (a=true, b=true)")

for r in roots:
    apply_patches(r)

print("\nALL PIP & PLATFORM PATCHES APPLIED SUCCESSFULLY!")
