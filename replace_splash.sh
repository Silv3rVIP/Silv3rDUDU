#!/bin/bash
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

UBER_SIGNER="$DIR/uber-apk-signer.jar"
if [ ! -f "$UBER_SIGNER" ]; then
    UBER_SIGNER="/Users/silv3r/uber-apk-signer.jar"
fi

KEYSTORE="$DIR/platform.p12"
STOCK_APK="$DIR/dudulauncher.apk"
TRANSPARENT_1X1="$DIR/splash_templates/transparent_1x1.png"

if [ ! -f "$STOCK_APK" ]; then
    echo "Error: Stock APK '$STOCK_APK' not found!"
    exit 1
fi

if [ ! -f "$KEYSTORE" ]; then
    echo "Error: Platform keystore '$KEYSTORE' not found!"
    exit 1
fi

if [ "$#" -lt 1 ]; then
    echo "Usage:"
    echo "  $0 --vw-black                # Set Volkswagen brushed-chrome logo on pitch black"
    echo "  $0 --car                     # Set your Volkswagen Passat car photo"
    echo "  $0 --clean                   # Set clean DUDU emblem (no Chinese text)"
    echo "  $0 --blank                   # Pure pitch black screen (no logo, no text)"
    echo "  $0 <path_to_image.png|jpg>   # Set any custom image/logo"
    exit 1
fi

MODE="$1"
TEMP_DIR="/tmp/dudu_splash_build_$$"
mkdir -p "$TEMP_DIR"
trap 'rm -rf "$TEMP_DIR"' EXIT

CS_TARGET="$TEMP_DIR/cs.png"
CT_TARGET="$TEMP_DIR/ct.png"
cp "$TRANSPARENT_1X1" "$CT_TARGET"

OUTPUT_NAME="dudu_mod_signed.apk"

if [ "$MODE" == "--vw-black" ] || [ "$MODE" == "--vw" ]; then
    echo "[*] Using Volkswagen emblem splash..."
    cp "$DIR/splash_templates/vw_logo.png" "$CS_TARGET"
    OUTPUT_NAME="dudulauncher_vw_logo_mod.apk"

elif [ "$MODE" == "--car" ]; then
    echo "[*] Using Passat car photo splash..."
    cp "$DIR/splash_templates/user_car.png" "$CS_TARGET"
    OUTPUT_NAME="dudulauncher_passat_mod.apk"

elif [ "$MODE" == "--clean" ]; then
    echo "[*] Using clean DUDU emblem splash..."
    cp "$DIR/splash_templates/cs_clean_emblem.png" "$CS_TARGET"
    OUTPUT_NAME="dudulauncher_clean_mod.apk"

elif [ "$MODE" == "--blank" ]; then
    echo "[*] Using pure blank black splash..."
    cp "$TRANSPARENT_1X1" "$CS_TARGET"
    OUTPUT_NAME="dudulauncher_blank_mod.apk"

else
    CUSTOM_IMG="$1"
    if [ ! -f "$CUSTOM_IMG" ]; then
        echo "Error: File '$CUSTOM_IMG' not found!"
        exit 1
    fi
    echo "[*] Processing custom image: $CUSTOM_IMG"
    sips -s format png "$CUSTOM_IMG" --out "$CS_TARGET" > /dev/null 2>&1
    OUTPUT_NAME="dudulauncher_custom_mod.apk"
fi

UNSIGNED_APK="$TEMP_DIR/unsigned.apk"

echo "[*] Injecting splash assets directly into stock package (preserving Jiagu packer integrity)..."
python3 - << 'PYEOF' "$STOCK_APK" "$UNSIGNED_APK" "$CS_TARGET" "$CT_TARGET"
import sys, zipfile

src_apk, out_apk, cs_img, ct_img = sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4]

with open(cs_img, 'rb') as f:
    cs_bytes = f.read()
with open(ct_img, 'rb') as f:
    ct_bytes = f.read()

with zipfile.ZipFile(src_apk, 'r') as zin, zipfile.ZipFile(out_apk, 'w') as zout:
    for item in zin.infolist():
        # Skip original META-INF signature files
        if item.filename.startswith('META-INF/'):
            continue
        
        if item.filename == 'r/a_/cs.png':
            zout.writestr(item, cs_bytes)
        elif item.filename == 'r/a_/ct.png':
            zout.writestr(item, ct_bytes)
        elif item.filename == 'resources.arsc':
            # resources.arsc must remain uncompressed
            data = zin.read(item.filename)
            item.compress_type = zipfile.ZIP_STORED
            zout.writestr(item, data)
        else:
            data = zin.read(item.filename)
            zout.writestr(item, data)
PYEOF

echo "[*] Aligning and signing with authentic AOSP platform certificate..."
SIGNED_OUT_DIR="$TEMP_DIR/signed"
mkdir -p "$SIGNED_OUT_DIR"

java -jar "$UBER_SIGNER" \
    --apks "$UNSIGNED_APK" \
    --ks "$KEYSTORE" \
    --ksAlias android \
    --ksPass android \
    --ksKeyPass android \
    --allowResign \
    -o "$SIGNED_OUT_DIR" > /dev/null

SIGNED_OUTPUT=$(find "$SIGNED_OUT_DIR" -name "*.apk" | head -n 1)

if [ -f "$SIGNED_OUTPUT" ]; then
    cp "$SIGNED_OUTPUT" "$DIR/$OUTPUT_NAME"
    echo ""
    echo "[✓] Build complete: $DIR/$OUTPUT_NAME"
    echo "    To install on your car headunit:"
    echo "    adb install -r $DIR/$OUTPUT_NAME"
else
    echo "Error: Failed to produce signed APK!"
    exit 1
fi
