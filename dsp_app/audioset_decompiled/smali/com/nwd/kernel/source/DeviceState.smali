.class public Lcom/nwd/kernel/source/DeviceState;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final APP_STATE_BOOT_COMPLETE:B = 0x1t

.field public static final APP_STATE_SAVE_COMPLETE:B = 0x2t

.field public static final ARM_DEVICE_TYPE_CAMERA:I = 0x10000000

.field public static final ARM_DEVICE_TYPE_SD:I = 0x8000000

.field public static final ARM_DEVICE_TYPE_USB:I = 0x4000000

.field public static final ARM_DEVICE_TYPE_USB_IPOD:I = 0x2000000

.field public static final BOOT_STATE_DELAY_SHUTDOWN:B = 0x3t

.field public static final BOOT_STATE_FALSE_SHUTDOWN:B = 0x2t

.field public static final BOOT_STATE_SHUTDOWN:B = 0x0t

.field public static final BOOT_STATE_START:B = 0x1t

.field public static final BOOT_STATE_UNKNOWN:B = -0x10t

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nwd/kernel/source/DeviceState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEVICE_TYPE_AUX:I = 0x1000

.field public static final DEVICE_TYPE_BT_CALL:I = 0x40000000

.field public static final DEVICE_TYPE_CDC:I = 0x8

.field public static final DEVICE_TYPE_DISK:I = 0x80

.field public static final DEVICE_TYPE_DVD:I = 0x1

.field public static final DEVICE_TYPE_DVR:I = 0x100

.field public static final DEVICE_TYPE_IPOD:I = 0x10

.field public static final DEVICE_TYPE_MHL:I = 0x800

.field public static final DEVICE_TYPE_MP5:I = 0x400

.field public static final DEVICE_TYPE_NONE:I = -0x1

.field public static final DEVICE_TYPE_SD:I = 0x40

.field public static final DEVICE_TYPE_TPMS:I = 0x4

.field public static final DEVICE_TYPE_TPMS_ALARM:I = 0x20000000

.field public static final DEVICE_TYPE_TV:I = 0x2

.field public static final DEVICE_TYPE_USB:I = 0x20

.field public static final DISK_STATE_AUTO_INSERT:B = 0x1t

.field public static final DISK_STATE_USER_PUT:B = 0x2t

.field private static final LOG:Lcom/android/utils/log/JLog;

.field public static final NO_SOURCE_DEVICE_TYPE_HAND_BRAKE:I = 0x1

.field public static final NO_SOURCE_DEVICE_TYPE_LIGHT:I = 0x2

.field public static final VOLTAGE_TYPE_LOW:B


# instance fields
.field private final BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

.field private final NO_SOURCE_DEVICE_CHANGE_INTENT:Landroid/content/Intent;

.field private mArmDeviceState:I

.field private mArmMountList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBackcarState:B

.field private mBtCallState:B

.field private mContext:Landroid/content/Context;

.field private mCurrentControllerAtArm:Z

.field private mDefaultSourceId:B

.field private mDeviceState:I

.field private mDiskInsertState:B

.field private mMcuState:B

.field private mNoSourceDeviceState:I

.field private mRdsShowState:B

.field private mVideoSignal:B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "DeviceState"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Lcom/nwd/kernel/source/DeviceState$1;

    invoke-direct {v0}, Lcom/nwd/kernel/source/DeviceState$1;-><init>()V

    sput-object v0, Lcom/nwd/kernel/source/DeviceState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x10

    iput-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_NO_SOURCE_DEVICE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->NO_SOURCE_DEVICE_CHANGE_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.ACTION_BACKCAR_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mBackcarState:B

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    iput-object p1, p0, Lcom/nwd/kernel/source/DeviceState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nwd_have_ipod"

    invoke-static {v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v0, 0x2000000

    invoke-virtual {p0, p1, v0, v1}, Lcom/nwd/kernel/source/DeviceState;->setArmDeviceState(Landroid/content/ContentResolver;IZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x10

    iput-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_NO_SOURCE_DEVICE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->NO_SOURCE_DEVICE_CHANGE_INTENT:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.ACTION_BACKCAR_STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mBackcarState:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/nwd/kernel/source/DeviceState;->mVideoSignal:B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/nwd/kernel/source/DeviceState$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/DeviceState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkSdcard(Landroid/content/ContentResolver;)V
    .locals 2

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1, v0}, Lcom/nwd/kernel/source/DeviceState;->setArmDeviceState(Landroid/content/ContentResolver;IZ)V

    sget-object p1, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mount list size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mDeviceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/DeviceState;->mArmDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected addMountPath(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///mnt/sdcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "file:///mnt/mapcard"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-direct {p0, p2}, Lcom/nwd/kernel/source/DeviceState;->checkSdcard(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getAllDeviceState()I
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    return v0
.end method

.method public getBtCallState()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mBtCallState:B

    return v0
.end method

.method protected getChangeState(I)I
    .locals 4

    sget-object v0, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lastState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    const v3, 0xffff

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",CurrentState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    and-int/2addr v0, v3

    xor-int/2addr p1, v0

    return p1
.end method

.method public getDefaultSourceId()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mDefaultSourceId:B

    return v0
.end method

.method public getDiskInsertState()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mDiskInsertState:B

    return v0
.end method

.method public getMcuDeviceState(I)Z
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    invoke-static {v2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getMcuState()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    return v0
.end method

.method public getNoSourceDeviceState(I)Z
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getRdsShowState()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mRdsShowState:B

    return v0
.end method

.method public getVideoSignal()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mVideoSignal:B

    return v0
.end method

.method protected iniDeviceState(Landroid/content/ContentResolver;I)V
    .locals 2

    iput p2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    sget-object p2, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iniDeviceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    const-string v0, "mcu_device_state"

    invoke-static {p1, v0, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method protected initNoSourceDeviceState(I)V
    .locals 0

    iput p1, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    return-void
.end method

.method public initSdcardFromEnv(Landroid/content/ContentResolver;)V
    .locals 4

    invoke-static {}, Lcom/nwd/kernel/utils/MountCheckUtil;->getMountState()I

    move-result v0

    sget-object v1, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initSdcardFromEnv,mount state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x1

    const-string v3, "file://"

    if-ne v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/kernel/utils/MountCheckUtil;->getSDPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/nwd/kernel/source/DeviceState;->addMountPath(Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_0
    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/kernel/utils/MountCheckUtil;->getUSBPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/nwd/kernel/source/DeviceState;->addMountPath(Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_1
    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/kernel/utils/MountCheckUtil;->getUSB2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/nwd/kernel/source/DeviceState;->addMountPath(Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_2
    const/16 v1, 0x8

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/kernel/utils/MountCheckUtil;->getUSB3()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/nwd/kernel/source/DeviceState;->addMountPath(Ljava/lang/String;Landroid/content/ContentResolver;)V

    :cond_3
    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/DeviceState;->checkSdcard(Landroid/content/ContentResolver;)V

    return-void
.end method

.method public isDeviceReady(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/high16 v0, 0x2000000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x4000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x8000000

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/nwd/kernel/source/DeviceState;->getMcuDeviceState(I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/nwd/kernel/source/DeviceState;->isHasSdcard()Z

    move-result p1

    return p1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/nwd/kernel/source/DeviceState;->isHaveArmDevice(I)I

    move-result p1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method protected isHasSdcard()Z
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mArmMountList size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isHaveArmDevice(I)I
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmDeviceState:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected removeMountPath(Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->mArmMountList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/nwd/kernel/source/DeviceState;->checkSdcard(Landroid/content/ContentResolver;)V

    return-void
.end method

.method protected saveBackCarState(Landroid/content/Context;B)V
    .locals 3

    sget-object v0, Lcom/nwd/kernel/source/DeviceState;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "origin backcar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v2, p0, Lcom/nwd/kernel/source/DeviceState;->mBackcarState:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",new backcar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mcu_backcar_state"

    invoke-static {v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mBackcarState:B

    if-eq v0, p2, :cond_0

    iput-byte p2, p0, Lcom/nwd/kernel/source/DeviceState;->mBackcarState:B

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_0
    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    const/4 v1, 0x3

    const-string v2, "extra_back_state"

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    iget-object p2, p0, Lcom/nwd/kernel/source/DeviceState;->BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/nwd/kernel/source/DeviceState;->mBackcarState:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nwd/kernel/source/DeviceState;->BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    :goto_0
    iget-object p2, p0, Lcom/nwd/kernel/source/DeviceState;->BACK_CAR_STATE_CHANGE_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method protected setArmDeviceState(Landroid/content/ContentResolver;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mArmDeviceState:I

    or-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mArmDeviceState:I

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, p3

    :goto_0
    iput p2, p0, Lcom/nwd/kernel/source/DeviceState;->mArmDeviceState:I

    iget p2, p0, Lcom/nwd/kernel/source/DeviceState;->mArmDeviceState:I

    const-string p3, "arm_device_state"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public setBtCallState(Landroid/content/Context;B)V
    .locals 1

    iput-byte p2, p0, Lcom/nwd/kernel/source/DeviceState;->mBtCallState:B

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-byte p2, p0, Lcom/nwd/kernel/source/DeviceState;->mBtCallState:B

    const-string v0, "bt_phone_status"

    invoke-static {p1, v0, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public setCurrentController(Landroid/content/ContentResolver;Z)Z
    .locals 2

    iget-boolean v0, p0, Lcom/nwd/kernel/source/DeviceState;->mCurrentControllerAtArm:Z

    if-eq v0, p2, :cond_0

    xor-int/lit8 v0, p2, 0x1

    const-string v1, "mcu_current_controller"

    invoke-static {p1, v1, v0}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iput-boolean p2, p0, Lcom/nwd/kernel/source/DeviceState;->mCurrentControllerAtArm:Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected setDefaultSourceId(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/DeviceState;->mDefaultSourceId:B

    return-void
.end method

.method protected setDeviceState(Landroid/content/Context;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    or-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, p3

    :goto_0
    iput p2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget p2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    const-string p3, "mcu_device_state"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public setDiskInsertState(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/DeviceState;->mDiskInsertState:B

    return-void
.end method

.method protected setMcuState(BLandroid/content/Context;)V
    .locals 1

    iput-byte p1, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "mcu_state"

    invoke-static {p2, v0, p1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method protected setNoSourceDeviceState(Landroid/content/Context;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    or-int/2addr p2, p3

    goto :goto_0

    :cond_0
    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    xor-int/lit8 p2, p2, -0x1

    and-int/2addr p2, p3

    :goto_0
    iput p2, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    iget p3, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    const-string v0, "mcu_no_source_device_state"

    invoke-static {p2, v0, p3}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/DeviceState;->NO_SOURCE_DEVICE_CHANGE_INTENT:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method protected setRdsShowState(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/DeviceState;->mRdsShowState:B

    return-void
.end method

.method protected setVideoSignal(Landroid/content/ContentResolver;B)V
    .locals 1

    iput-byte p2, p0, Lcom/nwd/kernel/source/DeviceState;->mVideoSignal:B

    const-string v0, "mcu_video_signal"

    invoke-static {p1, v0, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/nwd/kernel/source/DeviceState;->mDeviceState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/nwd/kernel/source/DeviceState;->mNoSourceDeviceState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/DeviceState;->mMcuState:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/DeviceState;->mVideoSignal:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
