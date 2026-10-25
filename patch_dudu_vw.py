path = r'C:\Users\silv3\AppData\Local\Temp\dudu_vw_decompiled\AndroidManifest.xml'
with open(path, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Add permissions
new_perms = """    <uses-permission android:name="android.permission.ACTIVITY_EMBEDDING"/>
    <uses-permission android:name="android.permission.MANAGE_ACTIVITY_STACKS"/>
    <uses-permission android:name="android.permission.INTERNAL_SYSTEM_WINDOW"/>
    <uses-permission android:name="android.permission.INJECT_EVENTS"/>
    <uses-permission android:name="android.permission.REORDER_TASKS"/>
    <uses-permission android:name="android.permission.STOP_APP_SWITCHES"/>"""

content = content.replace('<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>', new_perms + '\n    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>', 1)

# 2. Add max_aspect meta-data in application
meta_tag = '        <meta-data android:name="android.max_aspect" android:value="2.4"/>\n'
content = content.replace('        <uses-library android:name="org.apache.http.legacy"', meta_tag + '        <uses-library android:name="org.apache.http.legacy"', 1)

# 3. Patch LauncherActivity
old_launcher = 'android:name="com.dudu.autoui.ui.activity.launcher.LauncherActivity"'
new_launcher = 'android:name="com.dudu.autoui.ui.activity.launcher.LauncherActivity" android:resizeableActivity="true" android:showWhenLocked="true" android:supportsPictureInPicture="true" android:turnScreenOn="true"'
content = content.replace(old_launcher, new_launcher, 1)

with open(path, 'w', encoding='utf-8') as f:
    f.write(content)

print('Successfully patched DUDU VW manifest!')
