import os, re

base_dir = r"dsp_app/audioset_decompiled"

print("=== Patching AudioSet for Unified 6-Tab Interface (DTS + Full 32-band DSP) ===")

# -------------------------------------------------------------
# 1. Patch DspManager.smali -> isSupportDts()
# -------------------------------------------------------------
dsp_mgr_path = os.path.join(base_dir, "smali", "com", "nwd", "dsp", "uitls", "DspManager.smali")
with open(dsp_mgr_path, "r", encoding="utf-8") as f:
    dsp_mgr_text = f.read()

# Make isSupportDts return true unless persist.nwd.dsp.force.no.dts == "1"
pattern_is_support_dts = r"(\.method public isSupportDts\(\)Z[\s\S]*?\.end method)"
replacement_is_support_dts = """.method public isSupportDts()Z
    .locals 2

    const-string v0, "persist.nwd.dsp.force.no.dts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method"""

dsp_mgr_text_new, count = re.subn(pattern_is_support_dts, replacement_is_support_dts, dsp_mgr_text)
assert count == 1, f"Failed to patch isSupportDts, matches: {count}"
with open(dsp_mgr_path, "w", encoding="utf-8") as f:
    f.write(dsp_mgr_text_new)
print("1. Successfully patched DspManager.isSupportDts()")

# -------------------------------------------------------------
# 2. Patch DspUtils.smali -> isArmDsp(), is10EQ(), getAudioType()
# -------------------------------------------------------------
dsp_utils_path = os.path.join(base_dir, "smali", "com", "nwd", "dsp", "uitls", "DspUtils.smali")
with open(dsp_utils_path, "r", encoding="utf-8") as f:
    dsp_utils_text = f.read()

# isArmDsp -> true
pattern_is_arm = r"(\.method public static isArmDsp\(\)Z[\s\S]*?\.end method)"
replacement_is_arm = """.method public static isArmDsp()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method"""
dsp_utils_text, c1 = re.subn(pattern_is_arm, replacement_is_arm, dsp_utils_text)
assert c1 == 1, f"Failed to patch isArmDsp, matches: {c1}"

# is10EQ -> false
pattern_is_10eq = r"(\.method public static is10EQ\(\)Z[\s\S]*?\.end method)"
replacement_is_10eq = """.method public static is10EQ()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method"""
dsp_utils_text, c2 = re.subn(pattern_is_10eq, replacement_is_10eq, dsp_utils_text)
assert c2 == 1, f"Failed to patch is10EQ, matches: {c2}"

# getAudioType -> 6
pattern_get_audio_type = r"(\.method public static getAudioType\(\)I[\s\S]*?\.end method)"
replacement_get_audio_type = """.method public static getAudioType()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method"""
dsp_utils_text, c3 = re.subn(pattern_get_audio_type, replacement_get_audio_type, dsp_utils_text)
assert c3 == 1, f"Failed to patch getAudioType, matches: {c3}"

with open(dsp_utils_path, "w", encoding="utf-8") as f:
    f.write(dsp_utils_text)
print("2. Successfully patched DspUtils: isArmDsp=true, is10EQ=false, getAudioType=6")

# -------------------------------------------------------------
# 3. Patch home_horizontalActivity1.smali
# -------------------------------------------------------------
home_act_path = os.path.join(base_dir, "smali", "com", "nwd", "audioset", "home_horizontalActivity1.smali")
with open(home_act_path, "r", encoding="utf-8") as f:
    home_text = f.read()

# Bypass lines 2187 where is10EQ hides buttons:
# Find:
#    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z
#    move-result v0
#    const/16 v1, 0x8
#    if-eqz v0, :cond_1
# Replace if-eqz v0, :cond_1 with goto :cond_1
old_branch = """    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1"""

new_branch = """    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    const/16 v1, 0x8

    goto :cond_1"""

if old_branch in home_text:
    home_text = home_text.replace(old_branch, new_branch, 1)
    print("3a. Neutralized button-hiding branch in initView()")
else:
    print("WARNING: Could not find exact old_branch in home_horizontalActivity1.smali")

# In intitFragment, startup runnable:
# If DTS is supported, post runnable home_horizontalActivity1$2 (which opens EQ tab) or home_horizontalActivity1$1 (which opens DTS tab).
# Let's see: user can easily tap between both. Let's make it start on EQ (runnable $2) so it's clean and familiar!
old_runnable_block = """    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    if-eqz v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    new-instance v2, Lcom/nwd/audioset/home_horizontalActivity1$1;

    invoke-direct {v2, p0}, Lcom/nwd/audioset/home_horizontalActivity1$1;-><init>(Lcom/nwd/audioset/home_horizontalActivity1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    goto :goto_2"""

new_runnable_block = """    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    goto :cond_3"""

if old_runnable_block in home_text:
    home_text = home_text.replace(old_runnable_block, new_runnable_block, 1)
    print("3b. Configured startup to default to EQ tab (MainFragment) with DTS available on left")
else:
    print("WARNING: Could not find exact old_runnable_block")

with open(home_act_path, "w", encoding="utf-8") as f:
    f.write(home_text)

print("=== ALL PATCHES APPLIED SUCCESSFULLY! ===")
