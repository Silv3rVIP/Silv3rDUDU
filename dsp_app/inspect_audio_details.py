import zipfile
import re

with open('dsp_app/dex_strings.txt', 'r', encoding='utf-8', errors='ignore') as f:
    strings = [line.strip() for line in f]

# Let's search for interesting strings related to audio ICs, DTS, presets, etc.
keywords = ['7738', '7735', '7604', 'bd37', 'rohm', 'akm', 'tda', 'dts', 'delay', 'qvalue', 'subwoofer', 'center', 'dbb', 'crossover', 'passat', 'golf', 'volkswagen', 'car_type']

print("=== Strings Matching Audio Hardware / Chips / Cars ===")
for s in strings:
    if any(k in s.lower() for k in ['7738', '7604', 'bd37', 'ak7604', 'bu32', 'adau', 'dsp_type', 'ic_type', 'audiotype', 'dspaudiotype']):
        print(s)

print("\n=== Audio Presets / Modes ===")
for s in strings:
    if any(k in s.lower() for k in ['pop', 'rock', 'jazz', 'classic', 'vocal', 'standard', 'custom', 'theater', 'hall', 'driver', 'copilot']):
        if len(s) < 50:
            print(s)
