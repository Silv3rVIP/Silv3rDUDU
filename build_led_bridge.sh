#!/bin/bash
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
BUILD_DIR="/tmp/led_build"
TOOLS_DIR="/tmp/android_tools"
UBER_SIGNER="/Users/silv3r/uber-apk-signer.jar"

echo "[*] Compiling resources with aapt2..."
mkdir -p "$BUILD_DIR/gen" "$BUILD_DIR/obj" "$BUILD_DIR/dex"
"$TOOLS_DIR/aapt2" compile --dir "$DIR/led_bridge_src/res" -o "$BUILD_DIR/compiled_res.zip"
"$TOOLS_DIR/aapt2" link -o "$BUILD_DIR/base.apk" -I "$TOOLS_DIR/android.jar" \
    --min-sdk-version 21 --target-sdk-version 29 \
    --manifest "$DIR/led_bridge_src/AndroidManifest.xml" \
    --java "$BUILD_DIR/gen" \
    "$BUILD_DIR/compiled_res.zip" --auto-add-overlay

echo "[*] Compiling Java sources with javac..."
javac --release 8 -cp "$TOOLS_DIR/android.jar" -d "$BUILD_DIR/obj" \
    "$BUILD_DIR/gen/com/dudu/ledbridge/R.java" \
    "$DIR/led_bridge_src/src/com/dudu/ledbridge/"*.java

echo "[*] Generating DEX with D8..."
find "$BUILD_DIR/obj" -name "*.class" > "$BUILD_DIR/classes.list"
java -cp "$TOOLS_DIR/r8.jar" com.android.tools.r8.D8 --lib "$TOOLS_DIR/android.jar" \
    --output "$BUILD_DIR/dex" @"$BUILD_DIR/classes.list"

echo "[*] Packaging APK..."
cd "$BUILD_DIR/dex"
zip -u "$BUILD_DIR/base.apk" classes.dex

echo "[*] Signing APK with uber-apk-signer..."
java -jar "$UBER_SIGNER" --apks "$BUILD_DIR/base.apk" --out "$DIR"
mv "$DIR/base-aligned-debugSigned.apk" "$DIR/dudu_led_bridge.apk"
rm -f "$DIR/base-aligned-debugSigned.apk.idsig" "$DIR/base.apk"

echo ""
echo "[✓] Successfully built and signed: $DIR/dudu_led_bridge.apk"
