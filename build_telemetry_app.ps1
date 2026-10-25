$ErrorActionPreference = "Stop"

$ROOT = "c:\Users\silv3\OneDrive\Desktop\NEW"
$APP_DIR = "$ROOT\PassatB7Telemetry"
$BUILD_DIR = "$APP_DIR\build"
$SDK = "C:\Users\silv3\AppData\Local\Android\Sdk"
$BUILD_TOOLS = "$SDK\build-tools\34.0.0"
$PLATFORM_JAR = "$SDK\platforms\android-34\android.jar"
$AAPT2 = "$BUILD_TOOLS\aapt2.exe"
$D8 = "$BUILD_TOOLS\d8.bat"
$APKSIGNER = "$BUILD_TOOLS\apksigner.bat"
$OUT_APK = "$ROOT\PassatB7Telemetry.apk"

Write-Host "=== Building Passat B7 Telemetry APK ==="

if (Test-Path $BUILD_DIR) {
    Remove-Item -Recurse -Force $BUILD_DIR
}
New-Item -ItemType Directory -Force -Path "$BUILD_DIR\gen", "$BUILD_DIR\obj", "$BUILD_DIR\dex" | Out-Null

Write-Host "[1/5] Compiling resources with aapt2..."
& $AAPT2 compile --dir "$APP_DIR\res" -o "$BUILD_DIR\compiled_res.zip"
if ($LASTEXITCODE -ne 0) { throw "aapt2 compile failed" }

Write-Host "[2/5] Linking resources with aapt2..."
& $AAPT2 link -o "$BUILD_DIR\base.apk" -I $PLATFORM_JAR `
    --min-sdk-version 21 --target-sdk-version 29 `
    --manifest "$APP_DIR\AndroidManifest.xml" `
    --java "$BUILD_DIR\gen" `
    "$BUILD_DIR\compiled_res.zip" --auto-add-overlay
if ($LASTEXITCODE -ne 0) { throw "aapt2 link failed" }

Write-Host "[3/5] Compiling Java source files with javac..."
$javaFiles = Get-ChildItem -Path "$BUILD_DIR\gen", "$APP_DIR\src" -Recurse -Filter "*.java" | Select-Object -ExpandProperty FullName
javac --release 8 -cp $PLATFORM_JAR -d "$BUILD_DIR\obj" $javaFiles
if ($LASTEXITCODE -ne 0) { throw "javac compilation failed" }

Write-Host "[4/5] Generating Dalvik DEX bytecode with D8..."
$classFiles = Get-ChildItem -Path "$BUILD_DIR\obj" -Recurse -Filter "*.class" | Select-Object -ExpandProperty FullName
$classesListPath = "$BUILD_DIR\classes.list"
$classFiles | Out-File -FilePath $classesListPath -Encoding ascii
& $D8 --lib $PLATFORM_JAR --output "$BUILD_DIR\dex" "@$classesListPath"
if ($LASTEXITCODE -ne 0) { throw "D8 dex generation failed" }

Write-Host "[5/5] Packaging and Signing APK with Platform Key (UID 1000)..."
python -c @"
import zipfile, shutil
shutil.copyfile(r'$BUILD_DIR\base.apk', r'$BUILD_DIR\unaligned.apk')
with zipfile.ZipFile(r'$BUILD_DIR\unaligned.apk', 'a') as z:
    z.write(r'$BUILD_DIR\dex\classes.dex', 'classes.dex')
"@

& $APKSIGNER sign --key "$ROOT\platform.pk8" --cert "$ROOT\platform.x509.pem" --out $OUT_APK "$BUILD_DIR\unaligned.apk"
if ($LASTEXITCODE -ne 0) { throw "apksigner failed" }

Write-Host "✅ SUCCESS! Signed platform APK created: $OUT_APK"
