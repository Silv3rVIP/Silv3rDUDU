.class public Lcom/nwd/kernel/source/data/EepromParcel;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nwd/kernel/source/data/EepromParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final FEATURE_ATV:I = 0x4

.field public static final FEATURE_AUDIO_SETTING:I = 0x20040

.field public static final FEATURE_AUX:I = 0x8

.field public static final FEATURE_AUX2:I = 0x10080

.field public static final FEATURE_BACKCAR_RADAR:I = 0x20008

.field public static final FEATURE_BACK_LIGTH_SETTING:I = 0x30001

.field public static final FEATURE_BACK_MANAGER:I = 0x20002

.field public static final FEATURE_BT:I = 0x10020

.field public static final FEATURE_CAMERA:I = 0x10002

.field public static final FEATURE_CAN_BT:I = 0x50020

.field public static final FEATURE_CAN_CD:I = 0x50004

.field public static final FEATURE_CAN_GPS:I = 0x50010

.field public static final FEATURE_CAN_IPOD:I = 0x50002

.field public static final FEATURE_CAN_ONSTAR:I = 0x50040

.field public static final FEATURE_CAN_RADIO:I = 0x50008

.field public static final FEATURE_CAN_SETTING:I = 0x50080

.field public static final FEATURE_CAN_USB:I = 0x50001

.field public static final FEATURE_CDC:I = 0x10004

.field public static final FEATURE_DAB:I = 0x10040

.field public static final FEATURE_DTV:I = 0x1

.field public static final FEATURE_DVD_DISK:I = 0x40

.field public static final FEATURE_DVD_SD:I = 0x20

.field public static final FEATURE_DVD_USB:I = 0x10

.field public static final FEATURE_DVR:I = 0x40010

.field public static final FEATURE_DVR_SETTING:I = 0x40020

.field public static final FEATURE_E_DOG:I = 0x20004

.field public static final FEATURE_FACTORY_SETTING:I = 0x30008

.field public static final FEATURE_GPS:I = 0x10010

.field public static final FEATURE_GPS_MONITOR:I = 0x40001

.field public static final FEATURE_GPS_SETTING:I = 0x30002

.field public static final FEATURE_HDRADIO:I = 0x20001

.field public static final FEATURE_IPOD:I = 0x2

.field public static final FEATURE_LANGUAGE_SETTING:I = 0x30020

.field public static final FEATURE_LOGO:I = 0x40002

.field public static final FEATURE_RADIO:I = 0x80

.field public static final FEATURE_SAT:I = 0x10008

.field public static final FEATURE_SETTING:I = 0x20020

.field public static final FEATURE_STEERING_WHEEL_SETTING:I = 0x30040

.field public static final FEATURE_SYSTEM_SETTING:I = 0x20080

.field public static final FEATURE_TIME_SETTING:I = 0x30010

.field public static final FEATURE_TMPS:I = 0x20010

.field public static final FEATURE_TOUCH_ADJUST:I = 0x40008

.field public static final FEATURE_TRI_COLOR_LIGHT_SETTING:I = 0x30080

.field public static final FEATURE_VIDEO_SETTING:I = 0x30004

.field public static final FEATURE_VIR_CDC:I = 0x10001

.field public static final FEATURE_WALLPAPER:I = 0x40004

.field public static final LANGUAGE_CHINA:I = 0x10002

.field public static final LANGUAGE_ENGLISH:I = 0x10001

.field public static final LANGUAGE_FR:I = 0x10010

.field public static final LANGUAGE_GE:I = 0x10008

.field public static final LANGUAGE_HU:I = 0x10080

.field public static final LANGUAGE_NE:I = 0x10040

.field public static final LANGUAGE_SP:I = 0x10020

.field public static final LANGUAGE_TAIWAN:I = 0x10004


# instance fields
.field private mFeatureData:[B

.field private mLanguageData:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nwd/kernel/source/data/EepromParcel$1;

    invoke-direct {v0}, Lcom/nwd/kernel/source/data/EepromParcel$1;-><init>()V

    sput-object v0, Lcom/nwd/kernel/source/data/EepromParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContentResolver;[BI)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    aget-byte v0, p2, p3

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    add-int/lit8 v2, p3, 0x1

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p2, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result v1

    const-string v3, "mcu_language_data_1"

    invoke-static {p1, v3, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    add-int/2addr p3, v0

    add-int/2addr p3, v2

    aget-byte v0, p2, p3

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    array-length v1, v0

    invoke-static {p2, p3, v0, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    invoke-direct {p0, p2, v4}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_0"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    invoke-direct {p0, p2, v2}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_1"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    const/4 p3, 0x2

    invoke-direct {p0, p2, p3}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_2"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    const/4 p3, 0x3

    invoke-direct {p0, p2, p3}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_3"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    const/4 p3, 0x4

    invoke-direct {p0, p2, p3}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_4"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    const/4 p3, 0x5

    invoke-direct {p0, p2, p3}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_5"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    const/4 p3, 0x6

    invoke-direct {p0, p2, p3}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_6"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    const/4 p3, 0x7

    invoke-direct {p0, p2, p3}, Lcom/nwd/kernel/source/data/EepromParcel;->getValue([BI)B

    move-result p2

    const-string p3, "mcu_feature_data_7"

    invoke-static {p1, p3, p2}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/data/EepromParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/nwd/kernel/source/data/EepromParcel$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/data/EepromParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getValue([BI)B
    .locals 1

    if-ltz p2, :cond_0

    array-length v0, p1

    if-ge p2, v0, :cond_0

    aget-byte p1, p1, p2

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isOpen([BI)Z
    .locals 2

    shr-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-byte p1, p1, v0

    const v0, 0xffff

    and-int/2addr p2, v0

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    array-length v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getCurrentLanguage()B
    .locals 2

    iget-object v0, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    return v0
.end method

.method public isFeatureOpen(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    invoke-direct {p0, v0, p1}, Lcom/nwd/kernel/source/data/EepromParcel;->isOpen([BI)Z

    move-result p1

    return p1
.end method

.method public isLanguageOpen(I)Z
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    invoke-direct {p0, v0, p1}, Lcom/nwd/kernel/source/data/EepromParcel;->isOpen([BI)Z

    move-result p1

    return p1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mLanguageData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/EepromParcel;->mFeatureData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
