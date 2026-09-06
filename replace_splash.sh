#!/bin/bash
set -e

DIR="$(cd "$(dirname "$0")" && pwd)"
cd "$DIR"

UBER_SIGNER="/Users/silv3r/uber-apk-signer.jar"
MIPMAP_DIR="$DIR/dudu_src/res/mipmap-nodpi"
DRAWABLE_DIR="$DIR/dudu_src/res/drawable"
AO_XML="$DRAWABLE_DIR/ao.xml"

if [ "$#" -lt 1 ]; then
    echo "Usage:"
    echo "  $0 --car                     # Set your Volkswagen Passat photo (from attachment)"
    echo "  $0 --vw-black                # Set Volkswagen brushed-chrome logo on pitch black"
    echo "  $0 --vw                      # Set Volkswagen logo on dark slate (#141927)"
    echo "  $0 <path_to_image.png|jpg>   # Set any custom image/logo"
    echo "  $0 --clean                   # Set clean Dudu emblem (no Chinese text)"
    echo "  $0 --blank                   # Pure pitch black screen (no logo, no text)"
    exit 1
fi

MODE="$1"

if [ "$MODE" == "--car" ]; then
    echo "[*] Applying your Volkswagen Passat photo on pitch black..."
    cp "$DIR/splash_templates/user_car.png" "$MIPMAP_DIR/cs.png"
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/ct.png"
    cat << 'EOF' > "$AO_XML"
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:id="@android:id/background">
        <shape>
            <solid android:color="#000000" />
        </shape>
    </item>
    <item>
        <bitmap android:gravity="center" android:src="@mipmap/cs" />
    </item>
</layer-list>
EOF

elif [ "$MODE" == "--vw-black" ]; then
    echo "[*] Applying Volkswagen brushed-chrome logo on pitch black..."
    cp "$DIR/splash_templates/vw_logo.png" "$MIPMAP_DIR/cs.png"
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/ct.png"
    cat << 'EOF' > "$AO_XML"
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:id="@android:id/background">
        <shape>
            <solid android:color="#000000" />
        </shape>
    </item>
    <item>
        <bitmap android:gravity="center" android:src="@mipmap/cs" />
    </item>
</layer-list>
EOF

elif [ "$MODE" == "--vw" ]; then
    echo "[*] Applying Volkswagen brushed-chrome logo on dark slate (#141927)..."
    cp "$DIR/splash_templates/vw_logo.png" "$MIPMAP_DIR/cs.png"
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/ct.png"
    cat << 'EOF' > "$AO_XML"
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:id="@android:id/background">
        <shape>
            <solid android:color="#141927" />
        </shape>
    </item>
    <item>
        <bitmap android:gravity="center" android:src="@mipmap/cs" />
    </item>
</layer-list>
EOF

elif [ "$MODE" == "--clean" ]; then
    echo "[*] Applying clean Dudu emblem (no Chinese text)..."
    cp "$DIR/splash_templates/cs_clean_emblem.png" "$MIPMAP_DIR/cs.png"
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/ct.png"
    cat << 'EOF' > "$AO_XML"
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:id="@android:id/background">
        <shape>
            <solid android:color="#141927" />
        </shape>
    </item>
    <item>
        <bitmap android:gravity="center" android:src="@mipmap/cs" />
    </item>
</layer-list>
EOF

elif [ "$MODE" == "--blank" ]; then
    echo "[*] Setting pure pitch black splash screen (no logos)..."
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/cs.png"
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/ct.png"
    cat << 'EOF' > "$AO_XML"
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:id="@android:id/background">
        <shape>
            <solid android:color="#000000" />
        </shape>
    </item>
</layer-list>
EOF

else
    CUSTOM_IMG="$1"
    if [ ! -f "$CUSTOM_IMG" ]; then
        echo "Error: File '$CUSTOM_IMG' not found!"
        exit 1
    fi
    echo "[*] Converting and applying custom image: $CUSTOM_IMG"
    sips -s format png "$CUSTOM_IMG" --out "$MIPMAP_DIR/cs.png" > /dev/null 2>&1
    cp "$DIR/splash_templates/transparent_1x1.png" "$MIPMAP_DIR/ct.png"
    cat << 'EOF' > "$AO_XML"
<?xml version="1.0" encoding="utf-8"?>
<layer-list xmlns:android="http://schemas.android.com/apk/res/android">
    <item android:id="@android:id/background">
        <shape>
            <solid android:color="#000000" />
        </shape>
    </item>
    <item>
        <bitmap android:gravity="center" android:src="@mipmap/cs" />
    </item>
</layer-list>
EOF
fi

echo "[*] Rebuilding APK with apktool..."
apktool b dudu_src -o dudu_mod_unsigned.apk

echo "[*] Signing APK with uber-apk-signer..."
java -jar "$UBER_SIGNER" --apks dudu_mod_unsigned.apk

echo ""
echo "[✓] Successfully created: $DIR/dudu_mod_unsigned-aligned-debugSigned.apk"
