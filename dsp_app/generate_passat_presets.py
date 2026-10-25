import os

# --- Configuration Values ---
gain_32 = [10, 10, 11, 12, 14, 16, 17, 16, 15, 13, 13, 13, 14, 15, 16, 16, 16, 16, 15, 15, 14, 13, 13, 14, 15, 15, 16, 16, 17, 17, 16, 15]
gain_str = ",".join(map(str, gain_32))
freq_str = "20,25,32,40,50,63,80,100,125,160,200,250,315,400,500,630,800,1000,1250,1600,2000,2500,3150,4000,5000,6300,8000,10000,12500,16000,18000,20000"
q_str = "20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20,20"

# 1. Generate DspData.xml
dsp_data_xml = f"""<?xml version='1.0' encoding='utf-8' standalone='yes' ?>
<map>
    <int name="marea_three_frequence" value="0" />
    <int name="pf_dbb_area" value="1" />
    <int name="pf_area" value="0" />
    <boolean name="front_linkage" value="true" />
    <int name="lpf_area_two" value="31" />
    <int name="hpf_area_one_qvalue" value="14" />
    <int name="marea_three_qvalue" value="0" />
    <int name="suf_right_delay" value="2" />
    <int name="center_bugle" value="0" />
    <string name="key_7735_frequence">0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0</string>
    <int name="marea_one_qvalue" value="0" />
    <int name="suf_right" value="3" />
    <boolean name="round_switch" value="false" />
    <int name="hpf_area_four_qvalue" value="10" />
    <string name="key_speaker_delay_time">0,0,0,0</string>
    <boolean name="key_bass_loud" value="false" />
    <string name="key_eq_type">customize</string>
    <int name="lpf_area_four_qvalue" value="10" />
    <int name="lpf_area_four" value="8" />
    <boolean name="center_linkage" value="true" />
    <boolean name="suf_left_mute" value="false" />
    <int name="lpf_area_one" value="31" />
    <int name="front_right" value="0" />
    <boolean name="front_left_mute" value="false" />
    <int name="marea_two_frequence" value="0" />
    <int name="hpf_area_four" value="0" />
    <boolean name="suf_right_opp" value="false" />
    <int name="key_fader" value="7" />
    <int name="key_balance" value="7" />
    <boolean name="center_bugle_mute" value="false" />
    <int name="marea_one_frequence" value="0" />
    <boolean name="front_right_opp" value="false" />
    <boolean name="suf_right_mute" value="false" />
    <int name="hpf_area_two" value="6" />
    <int name="hpf_area_two_qvalue" value="14" />
    <int name="hpf_area_three" value="0" />
    <int name="center_bugle_delay" value="0" />
    <int name="hpf_area_three_qvalue" value="10" />
    <int name="front_left_delay" value="17" />
    <int name="bass_bugle" value="0" />
    <int name="suf_left_delay" value="14" />
    <boolean name="front_right_mute" value="false" />
    <boolean name="bass_bugle_opp" value="false" />
    <int name="hpf_area_one" value="5" />
    <boolean name="suf_linkage" value="true" />
    <boolean name="center_bugle_opp" value="false" />
    <boolean name="front_left_opp" value="false" />
    <int name="marea_two_qValue" value="0" />
    <string name="key_7604_frequence">{freq_str}</string>
    <int name="front_right_delay" value="0" />
    <int name="lpf_area_three" value="31" />
    <int name="front_left" value="0" />
    <string name="key_7735_qvalue">{q_str}</string>
    <int name="suf_left" value="3" />
    <int name="bass_bugle_delay" value="0" />
    <string name="key_speaker_phase">0,0,0,0,0,0</string>
    <int name="lpf_area_two_qvalue" value="10" />
    <string name="key_7735_gain">{gain_str}</string>
    <boolean name="bass_bugle_mute" value="false" />
    <int name="lpf_area_one_qvalue" value="10" />
    <int name="lpf_area_three_qvalue" value="10" />
    <boolean name="suf_left_opp" value="false" />
</map>
"""

with open('dsp_app/DspData_PassatB7_Optimized.xml', 'w', encoding='utf-8') as f:
    f.write(dsp_data_xml)

# 2. Generate eq3/customize and eq_customize preset
prop_content = f"""#Sun Oct 25 10:35:00 GMT+01:00 2026
key_7735_qvalue={q_str}
key_7604_frequence={freq_str}
key_7735_gain={gain_str}
"""

with open('dsp_app/customize_PassatB7.ini', 'w', encoding='utf-8') as f:
    f.write(prop_content)

print("Generated optimized preset files:")
print(" - dsp_app/DspData_PassatB7_Optimized.xml")
print(" - dsp_app/customize_PassatB7.ini")
