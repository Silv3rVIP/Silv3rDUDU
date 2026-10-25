import os, re

manifest_path = r'C:\Users\silv3\AppData\Local\Temp\radarbot_decompiled\AndroidManifest.xml'

with open(manifest_path, 'r', encoding='utf-8') as f:
    content = f.read()

# 1. Update Splash
old_splash = '<activity android:exported="true" android:name="com.vialsoft.radarbot.Splash" android:resizeableActivity="true" android:screenOrientation="unspecified" android:supportsPictureInPicture="true">'
new_splash = '<activity android:allowEmbedded="true" android:exported="true" android:name="com.vialsoft.radarbot.Splash" android:resizeableActivity="true" android:screenOrientation="unspecified" android:supportsPictureInPicture="true">'

if old_splash in content:
    content = content.replace(old_splash, new_splash, 1)
    print('Patched Splash')
else:
    print('WARNING: old_splash not matched exactly')

# 2. Update MainActivity: remove singleTask, add allowEmbedded
old_main = '<activity android:configChanges="keyboardHidden|screenSize" android:exported="true" android:label="@string/app_name" android:launchMode="singleTask" android:name="com.vialsoft.radarbot.MainActivity" android:resizeableActivity="true" android:supportsPictureInPicture="true" android:windowSoftInputMode="adjustPan">'
new_main = '<activity android:allowEmbedded="true" android:configChanges="keyboardHidden|screenSize" android:exported="true" android:label="@string/app_name" android:launchMode="standard" android:name="com.vialsoft.radarbot.MainActivity" android:resizeableActivity="true" android:screenOrientation="unspecified" android:supportsPictureInPicture="true" android:windowSoftInputMode="adjustPan">'

if old_main in content:
    content = content.replace(old_main, new_main, 1)
    print('Patched MainActivity')
else:
    print('WARNING: old_main not matched exactly')

# 3. Add activity embedding permissions
new_perms = '''
    <uses-permission android:name="android.permission.ACTIVITY_EMBEDDING"/>
    <uses-permission android:name="android.permission.MANAGE_ACTIVITY_STACKS"/>
    <uses-permission android:name="android.permission.INTERNAL_SYSTEM_WINDOW"/>
'''
if 'android.permission.ACTIVITY_EMBEDDING' not in content:
    content = content.replace('<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>', new_perms + '    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE"/>', 1)
    print('Added embedding permissions')

# 4. Ensure application has resizeableActivity
if 'android:resizeableActivity="true"' not in content[:content.find('<activity')]:
    content = content.replace('<application ', '<application android:resizeableActivity="true" ', 1)
    print('Added resizeableActivity to application')

# 5. Clean up any unsupported attributes
content = content.replace('android:autoEnterPictureInPicture="true" ', '')
content = content.replace('android:autoEnterPictureInPicture="true"', '')

with open(manifest_path, 'w', encoding='utf-8') as f:
    f.write(content)

print('Finished patching AndroidManifest.xml')
