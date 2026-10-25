.class public Lcom/android/utils/utils/MountCheckUtil;
.super Ljava/lang/Object;


# static fields
.field public static final MOUNT_NONE:I = 0x0

.field public static final MOUNT_SD:I = 0x1

.field public static final MOUNT_USB:I = 0x2

.field public static final MOUNT_USB2:I = 0x4

.field private static final TAG:Ljava/lang/String; = "MountCheckUtil"

.field private static mSDPath:Ljava/lang/String; = "/mnt/card"

.field private static mUSB2:Ljava/lang/String; = "/mnt/udiskh"

.field private static mUSBPath:Ljava/lang/String; = "/mnt/udisk"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMountState()I
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_2

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/android/utils/utils/MountCheckUtil;->mSDPath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/utils/utils/MountCheckUtil;->mUSBPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    or-int/lit8 v0, v1, 0x2

    move v1, v0

    :cond_1
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/utils/utils/MountCheckUtil;->mUSB2:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/Environment;->getStorageState(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    or-int/lit8 v1, v1, 0x4

    :cond_2
    return v1
.end method

.method public static final getSDPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/utils/utils/MountCheckUtil;->mSDPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUSB2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/utils/utils/MountCheckUtil;->mUSB2:Ljava/lang/String;

    return-object v0
.end method

.method public static final getUSBPath()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/utils/utils/MountCheckUtil;->mUSBPath:Ljava/lang/String;

    return-object v0
.end method

.method public static final setSDPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/utils/utils/MountCheckUtil;->mSDPath:Ljava/lang/String;

    return-void
.end method

.method public static final setUSBPath(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/android/utils/utils/MountCheckUtil;->mUSBPath:Ljava/lang/String;

    return-void
.end method
