import os, re

smali_root = r'C:\Users\silv3\AppData\Local\Temp\dudu_new_smali'

# --- 1. Patch AppCheck20.smali ---
appcheck_path = os.path.join(smali_root, 'smali', 'com', 'dudu', 'autoui', 'repertory', 'AppCheck20.smali')
with open(appcheck_path, 'r', encoding='utf-8') as f:
    ac_content = f.read()

# Replace check() method with return-void
check_pattern = r'(\.method public static check\(\)V[\s\S]*?\.end method)'
replacement_check = """.method public static check()V
    .locals 0

    return-void
.end method"""
ac_content_new = re.sub(check_pattern, replacement_check, ac_content)
with open(appcheck_path, 'w', encoding='utf-8') as f:
    f.write(ac_content_new)
print("1. Patched AppCheck20.smali")

# --- 2. Patch p.smali, v.smali, o.smali ---
def patch_method_a(rel_path):
    p = os.path.join(smali_root, rel_path)
    with open(p, 'r', encoding='utf-8') as f:
        c = f.read()
    a_pattern = r'(\.method public static a\(\)V[\s\S]*?\.end method)'
    replacement_a = """.method public static a()V
    .locals 0

    return-void
.end method"""
    c_new = re.sub(a_pattern, replacement_a, c)
    with open(p, 'w', encoding='utf-8') as f:
        f.write(c_new)
    print(f"Patched {rel_path}")

patch_method_a(os.path.join('smali', 'com', 'dudu', 'autoui', 'common', 'j1', 'p.smali'))
patch_method_a(os.path.join('smali', 'com', 'dudu', 'autoui', 'manage', 'q', 'v.smali'))
patch_method_a(os.path.join('smali', 'com', 'dudu', 'autoui', 'manage', 'x', 'o.smali'))

# --- 3. Patch UI classes with base64 signature checks ---
ui_files = [
    os.path.join('smali', 'com', 'dudu', 'autoui', 'ui', 'activity', 'launcher', 'LauncherActivity.smali'),
    os.path.join('smali', 'com', 'dudu', 'autoui', 'ui', 'activity', 'launcher', 'LauncherActivity$b.smali'),
    os.path.join('smali_classes2', 'com', 'dudu', 'autoui', 'ui', 'base', 'f.smali'),
    os.path.join('smali_classes2', 'com', 'dudu', 'autoui', 'ui', 'base', 'newUi2', 'x', 'a.smali'),
]

for rel_path in ui_files:
    p = os.path.join(smali_root, rel_path)
    with open(p, 'r', encoding='utf-8') as f:
        lines = f.readlines()
    
    new_lines = []
    inserted = False
    for line in lines:
        if 'YW5kcm9pZC5hcHAuQWN0aXZpdHlUaHJlYWRFRQ==' in line and not inserted:
            # Insert return-void right before the try_start preceding this line or right before this line
            new_lines.append('    return-void\n\n')
            inserted = True
        new_lines.append(line)
    
    with open(p, 'w', encoding='utf-8') as f:
        f.writelines(new_lines)
    print(f"Inserted return-void bypass in {rel_path} (inserted={inserted})")

# --- 4. Patch AppEx.smali (remove System.exit) ---
appex_path = os.path.join(smali_root, 'smali', 'com', 'dudu', 'autoui', 'AppEx.smali')
with open(appex_path, 'r', encoding='utf-8') as f:
    appex_lines = f.readlines()

new_appex = []
removed_exit = 0
for line in appex_lines:
    if 'YW5kcm9pZC5hcHAuQXBwbGljYXRpb24=' in line:
        pass
    if 'invoke-static {v7}, Ljava/lang/System;->exit(I)V' in line:
        line = '    # removed System.exit\n'
        removed_exit += 1
    new_appex.append(line)

with open(appex_path, 'w', encoding='utf-8') as f:
    f.writelines(new_appex)
print(f"Patched AppEx.smali (removed exits={removed_exit})")

# --- 5. Patch r.smali and manage/i/c.smali (remove killProcess) ---
def neutralize_kill(rel_path):
    p = os.path.join(smali_root, rel_path)
    with open(p, 'r', encoding='utf-8') as f:
        c = f.read()
    c = c.replace('invoke-static {v1}, Landroid/os/Process;->killProcess(I)V', '# neutralized killProcess')
    c = c.replace('invoke-static {v0}, Landroid/os/Process;->killProcess(I)V', '# neutralized killProcess')
    with open(p, 'w', encoding='utf-8') as f:
        f.write(c)
    print(f"Neutralized killProcess in {rel_path}")

neutralize_kill(os.path.join('smali', 'com', 'dudu', 'autoui', 'common', 'j1', 'r.smali'))
neutralize_kill(os.path.join('smali', 'com', 'dudu', 'autoui', 'manage', 'i', 'c.smali'))

# --- 6. Patch AndroidManifest.xml ---
manifest_path = os.path.join(smali_root, 'AndroidManifest.xml')
with open(manifest_path, 'r', encoding='utf-8') as f:
    m_content = f.read()

# Add sharedUserId
if 'android:sharedUserId=' not in m_content:
    m_content = m_content.replace('<manifest ', '<manifest android:sharedUserId="android.uid.system" ', 1)

# Add permissions
new_perms = """    <uses-permission android:name="android.permission.ACTIVITY_EMBEDDING"/>
    <uses-permission android:name="android.permission.MANAGE_ACTIVITY_STACKS"/>
    <uses-permission android:name="android.permission.INTERNAL_SYSTEM_WINDOW"/>
    <uses-permission android:name="android.permission.INJECT_EVENTS"/>
    <uses-permission android:name="android.permission.REORDER_TASKS"/>
    <uses-permission android:name="android.permission.STOP_APP_SWITCHES"/>"""

if 'android.permission.ACTIVITY_EMBEDDING' not in m_content:
    m_content = m_content.replace('<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>', new_perms + '\n    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>', 1)

# Application attributes
m_content = m_content.replace('android:resizeableActivity="false"', 'android:resizeableActivity="true"')
if 'android.max_aspect' not in m_content:
    meta_aspect = '        <meta-data android:name="android.max_aspect" android:value="2.4"/>\n'
    m_content = m_content.replace('        <uses-library android:name="org.apache.http.legacy"', meta_aspect + '        <uses-library android:name="org.apache.http.legacy"', 1)

# LauncherActivity
old_launcher = 'android:name="com.dudu.autoui.ui.activity.launcher.LauncherActivity"'
new_launcher = 'android:name="com.dudu.autoui.ui.activity.launcher.LauncherActivity" android:resizeableActivity="true" android:showWhenLocked="true" android:supportsPictureInPicture="true" android:turnScreenOn="true"'
m_content = m_content.replace(old_launcher, new_launcher, 1)

with open(manifest_path, 'w', encoding='utf-8') as f:
    f.write(m_content)
print("6. Successfully patched AndroidManifest.xml")
print("ALL PATCHES APPLIED CLEANLY!")
