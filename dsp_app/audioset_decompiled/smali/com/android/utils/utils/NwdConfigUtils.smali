.class public Lcom/android/utils/utils/NwdConfigUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConfigPath()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.config.path"

    const-string v1, "/config"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getInternalPath()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.internal.path"

    const-string v1, "/mnt/sdcard"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getMapCardPath()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.mapcard.path"

    const-string v1, "/mnt/mapcard"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getMediaCardPath()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.mediacard.path"

    const-string v1, "/mnt/card"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getScanPath()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_a"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "_b"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "_c"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "_d"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x7

    new-array v7, v2, [Ljava/lang/String;

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getMediaCardPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getMapCardPath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v5

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getUsb1Path()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v6

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getUsb2Path()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v0

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getUsb3Path()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    aput-object v4, v7, v5

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getUsb4Path()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v7, v5

    const-string v4, ""

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_3

    const-string v8, ","

    if-ge v5, v6, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v5

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v5

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v5

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v0, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v7, v5

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v9

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    return-object v4
.end method

.method public static final getSystemPropertiesInt(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getSystemPropertiesString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getUsb1Path()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.usb1.path"

    const-string v1, "/mnt/udisk"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUsb2Path()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.usb2.path"

    const-string v1, "/mnt/udiskh"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUsb3Path()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.usb3.path"

    const-string v1, "/mnt/udisk3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getUsb4Path()Ljava/lang/String;
    .locals 2

    const-string v0, "ro.nwd.usb4.path"

    const-string v1, "/mnt/media_rw/udisk4"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
