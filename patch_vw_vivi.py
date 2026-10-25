import os
import shutil

base_dir = r"C:\Users\silv3\AppData\Local\Temp\dudu_new_decompiled"
vw_extracted = r"C:\Users\silv3\AppData\Local\Temp\vw_extracted"
vw_images = r"C:\Users\silv3\AppData\Local\Temp\vw_images"
vw_decompiled = r"C:\Users\silv3\AppData\Local\Temp\dudu_vw_decompiled"

print("=== Starting VW Splash & ViviMusic Patch ===")

# -------------------------------------------------------------
# 1. VW Logo Starting Splash Screen
# -------------------------------------------------------------
# Source VW logo: 320x320 3D chrome emblem
vw_logo_src = os.path.join(vw_extracted, "res", "mipmap-nodpi", "cs.png")
if not os.path.exists(vw_logo_src):
    vw_logo_src = os.path.join(vw_images, "r_a__cs.png")

# Source 1x1 dummy transparent png
dummy_png_src = os.path.join(vw_decompiled, "res", "mipmap-nodpi", "ct.png")

print(f"VW Logo source: {vw_logo_src} (exists={os.path.exists(vw_logo_src)})")
print(f"Dummy PNG source: {dummy_png_src} (exists={os.path.exists(dummy_png_src)})")

# Target 1: d6.png (the center logo of ao.xml starting window background)
d6_target = os.path.join(base_dir, "res", "mipmap-nodpi", "d6.png")
shutil.copyfile(vw_logo_src, d6_target)
print("1a. Replaced d6.png with VW chrome logo")

# Target 2: d7.png (bottom text on splash screen) -> replace with 1x1 dummy transparent
d7_target = os.path.join(base_dir, "res", "mipmap-nodpi", "d7.png")
shutil.copyfile(dummy_png_src, d7_target)
print("1b. Replaced d7.png with dummy transparent PNG")

# Target 3: theme_car3d_load_icon.png and theme_car3d_load_icon_drak.png
for f in ["theme_car3d_load_icon.png", "theme_car3d_load_icon_drak.png",
          "theme_widget_now_trip_load_icon.png", "theme_widget_now_trip_load_icon_drak.png"]:
    target = os.path.join(base_dir, "res", "drawable-nodpi", f)
    if os.path.exists(target):
        shutil.copyfile(vw_logo_src, target)
        print(f"1c. Replaced {f} with VW chrome logo")

# -------------------------------------------------------------
# 2. Patch n3.smali (ViMusic / ViviMusic Plugin)
# -------------------------------------------------------------
n3_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "manage", "music", "plugin", "n3.smali")
n3_smali_content = """\
.class public Lcom/dudu/autoui/manage/music/plugin/n3;
.super Lcom/dudu/autoui/manage/music/plugin/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/dudu/autoui/manage/music/plugin/e0;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/dudu/autoui/manage/h/z;->z()Lcom/dudu/autoui/manage/h/z;

    move-result-object v0

    const-string v1, "com.vivi.vivimusic"

    invoke-virtual {v0, v1}, Lcom/dudu/autoui/manage/h/z;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.vivi.vivimusic"

    return-object v0

    :cond_0
    const-string v0, "it.vfsfitvnm.vimusic"

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/dudu/autoui/manage/h/z;->z()Lcom/dudu/autoui/manage/h/z;

    move-result-object v0

    const-string v1, "com.vivi.vivimusic"

    invoke-virtual {v0, v1}, Lcom/dudu/autoui/manage/h/z;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ViviMusic"

    return-object v0

    :cond_0
    const-string v0, "ViMusic"

    return-object v0
.end method
"""

with open(n3_path, "w", encoding="utf-8") as f:
    f.write(n3_smali_content)
print("2. Rewrote n3.smali to support ViviMusic & ViMusic dynamically")

# -------------------------------------------------------------
# 3. Patch q.smali (Music Manager / Registry)
# -------------------------------------------------------------
q_path = os.path.join(base_dir, "smali", "com", "dudu", "autoui", "manage", "r", "q.smali")
with open(q_path, "r", encoding="utf-8") as f:
    q_content = f.read()

# 3a. In b(Ljava/lang/Integer;)Ljava/lang/String;:
# Replace :pswitch_3f
old_b_case = """:pswitch_3f
    const-string p0, "it.vfsfitvnm.vimusic"

    return-object p0"""

new_b_case = """:pswitch_3f
    invoke-static {}, Lcom/dudu/autoui/manage/h/z;->z()Lcom/dudu/autoui/manage/h/z;

    move-result-object p0

    const-string v0, "com.vivi.vivimusic"

    invoke-virtual {p0, v0}, Lcom/dudu/autoui/manage/h/z;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_vivi_b_0

    const-string p0, "com.vivi.vivimusic"

    return-object p0

    :cond_vivi_b_0
    const-string p0, "it.vfsfitvnm.vimusic"

    return-object p0"""

if old_b_case in q_content:
    q_content = q_content.replace(old_b_case, new_b_case, 1)
    print("3a. Patched q.smali b(Integer) for ViviMusic")
else:
    print("3a. WARNING: old_b_case not matched in q.smali")

# 3b. In a(Ljava/lang/String;)Ljava/lang/Integer;:
# Add check for com.vivi.vivimusic right after .locals 25
old_a_str_head = """.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 25

    move-object/from16 v0, p0"""

new_a_str_head = """.method public static a(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 25

    const-string v0, "com.vivi.vivimusic"

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_check_orig_a

    const/16 v0, 0x27

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_check_orig_a
    move-object/from16 v0, p0"""

if old_a_str_head in q_content:
    q_content = q_content.replace(old_a_str_head, new_a_str_head, 1)
    print("3b. Patched q.smali a(String) for ViviMusic")
else:
    print("3b. WARNING: old_a_str_head not matched in q.smali")

# 3c. In a(Ljava/lang/Integer;)Lcom/dudu/autoui/manage/r/q;:
# Update :pswitch_3f to set name "ViviMusic" when Vivi is installed
old_a_int_case = """:pswitch_3f
    new-instance v1, Lcom/dudu/autoui/manage/r/q;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const v14, 0x7f0d0057

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v11, "ViMusic"

    const-string v13, \"\""""

new_a_int_case = """:pswitch_3f
    invoke-static {}, Lcom/dudu/autoui/manage/h/z;->z()Lcom/dudu/autoui/manage/h/z;

    move-result-object v1

    const-string v11, "com.vivi.vivimusic"

    invoke-virtual {v1, v11}, Lcom/dudu/autoui/manage/h/z;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_vivi_q_0

    const-string v11, "ViviMusic"

    goto :goto_vivi_q_done

    :cond_vivi_q_0
    const-string v11, "ViMusic"

    :goto_vivi_q_done
    new-instance v1, Lcom/dudu/autoui/manage/r/q;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const v14, 0x7f0d0057

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    const-string v13, \"\""""

if old_a_int_case in q_content:
    q_content = q_content.replace(old_a_int_case, new_a_int_case, 1)
    print("3c. Patched q.smali a(Integer) for ViviMusic")
else:
    print("3c. WARNING: old_a_int_case not matched in q.smali")

with open(q_path, "w", encoding="utf-8") as f:
    f.write(q_content)

# -------------------------------------------------------------
# 4. Patch AndroidManifest.xml and apktool.yml (version name As1.016020)
# -------------------------------------------------------------
manifest_path = os.path.join(base_dir, "AndroidManifest.xml")
with open(manifest_path, "r", encoding="utf-8") as f:
    m_content = f.read()

m_content = m_content.replace('android:versionName="1.016020"', 'android:versionName="As1.016020"')
with open(manifest_path, "w", encoding="utf-8") as f:
    f.write(m_content)
print("4a. Updated AndroidManifest.xml versionName to As1.016020")

yml_path = os.path.join(base_dir, "apktool.yml")
with open(yml_path, "r", encoding="utf-8") as f:
    y_content = f.read()

y_content = y_content.replace("versionName: 1.016020", "versionName: As1.016020")
with open(yml_path, "w", encoding="utf-8") as f:
    f.write(y_content)
print("4b. Updated apktool.yml versionName to As1.016020")

print("=== ALL PATCHES APPLIED SUCCESSFULLY ===")
