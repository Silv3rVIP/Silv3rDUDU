#!/system/bin/sh
umount /sys/devices/virtual/misc/ak7604-dsp 2>/dev/null
umount /data/local/tmp/real_ak7604 2>/dev/null

mkdir -p /data/local/tmp/real_ak7604
mount -o bind /sys/devices/virtual/misc/ak7604-dsp /data/local/tmp/real_ak7604

mkdir -p /data/local/tmp/ak7604_overlay
rm -rf /data/local/tmp/ak7604_overlay/*

for f in /data/local/tmp/real_ak7604/*; do
    base=$(basename "$f")
    ln -s "$f" "/data/local/tmp/ak7604_overlay/$base"
done

touch /data/local/tmp/ak7604_overlay/user_dts_exist
chmod 777 /data/local/tmp/ak7604_overlay
chmod 777 /data/local/tmp/ak7604_overlay/user_dts_exist

mount -o bind /data/local/tmp/ak7604_overlay /sys/devices/virtual/misc/ak7604-dsp

echo "=== ak7604-dsp contents after clean bind ==="
ls -la /sys/devices/virtual/misc/ak7604-dsp/
