.class public Lcom/nwd/factory/FeatureSettingUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nwd/factory/IFactorySetting;
.implements Lcom/nwd/factory/IExAndImport;


# static fields
.field private static final ATTR_NAME_FEATURE:Ljava/lang/String; = "feature_config"

.field static final DEFAULT_FEATURE:I = 0x7fffffff

.field public static final FEATURE_360:I = 0x10

.field public static final FEATURE_ADAS:I = 0x80

.field public static final FEATURE_AUX:I = 0x1000

.field public static final FEATURE_BT:I = 0x100000

.field public static final FEATURE_CARLIFE:I = 0x800

.field public static final FEATURE_CARPLAY:I = 0x40000

.field public static final FEATURE_CVBS_DVR:I = 0x200

.field public static final FEATURE_DVD:I = 0x4

.field public static final FEATURE_DVD_SD:I = 0x2

.field public static final FEATURE_DVD_USB:I = 0x1

.field public static final FEATURE_DVR:I = 0x8000

.field public static final FEATURE_FAN:I = 0x200000

.field public static final FEATURE_FRONT_VIEW:I = 0x10000

.field public static final FEATURE_HD2CAMERA:I = 0x80000

.field public static final FEATURE_IPOD:I = 0x100

.field public static final FEATURE_MHL:I = 0x8

.field public static final FEATURE_MONO_360:I = 0x20000

.field public static final FEATURE_NEW_USB_DVR:I = 0x400

.field public static final FEATURE_REAR_AUX:I = 0x4000

.field public static final FEATURE_TPMS:I = 0x20

.field public static final FEATURE_TV:I = 0x2000

.field public static final FEATURE_TV2:I = 0x40

.field private static final KEY_EXCUTE_RECOVERY:Ljava/lang/String; = "key_excute_recovery"

.field public static final KEY_GOOGLE_DISABLE:Ljava/lang/String; = "key_google_disable"

.field private static final LOG:Lcom/android/utils/log/JLog;

.field public static final PACKAGE_HD2CAMERA:Ljava/lang/String; = "com.nwd.hd2camera"

.field private static final TAG_FEATURE_SETTING:Ljava/lang/String; = "feature_setting"

.field private static instance:Lcom/nwd/factory/FeatureSettingUtil;

.field private static mPackageMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const/4 v1, 0x1

    const-string v2, "FeatureSettingUtil"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v1, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    invoke-static {}, Lcom/nwd/factory/FeatureSettingUtil;->loadPackNameConfig()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v2, 0x1000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.nwd.auxin"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.nwd.dvd"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "com.nwd.dvd.sd"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.dvd.usb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.dvr"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.usb.ipod"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.ns.carphone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.tv"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v1, 0x4000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.auxin.rear"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.tpms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.nwd.tv2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/nwd/factory/FeatureSettingUtil;
    .locals 1

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->instance:Lcom/nwd/factory/FeatureSettingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/FeatureSettingUtil;

    invoke-direct {v0}, Lcom/nwd/factory/FeatureSettingUtil;-><init>()V

    sput-object v0, Lcom/nwd/factory/FeatureSettingUtil;->instance:Lcom/nwd/factory/FeatureSettingUtil;

    :cond_0
    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->instance:Lcom/nwd/factory/FeatureSettingUtil;

    return-object v0
.end method

.method public static final isFeatureOn(Landroid/content/Context;I)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_feature"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFeatureOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/2addr p0, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p0, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public static final isFeatureOn(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "com.nwd.hd2camera"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/nwd/factory/BackcarSettingUtil;->getBackcarVideoType(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "camera_rightview"

    invoke-static {p0, p1}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    sget-object p1, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "camera_rightview="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string p1, "6"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1

    :cond_2
    sget-object p0, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string p1, "getBackcarVideoType!=4"

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1

    :cond_3
    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_4
    invoke-static {p0, v1}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result p0

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkgname = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",isFeatureOn = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return p0
.end method

.method public static isHDRightView(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "camera_rightview"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static loadCurSetting(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v1, "fun"

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/nwd/factory/FactorySettingUtil;->getDefaultFun(Landroid/content/Context;)I

    move-result v0

    :cond_0
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    new-instance v1, Lcom/nwd/factory/config/UpdateConfigSetting;

    invoke-direct {v1}, Lcom/nwd/factory/config/UpdateConfigSetting;-><init>()V

    invoke-virtual {v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    and-int/lit8 v2, v0, 0x4

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/nwd/factory/service/FactorySettingManager;->setdvdconfigenable(Z)V

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lcom/nwd/factory/service/FactorySettingManager;->setdvdconfigenable(Z)V

    :goto_1
    and-int/lit8 v2, v0, 0x10

    const/16 v5, 0x10

    if-ne v2, v5, :cond_3

    const/4 v3, 0x1

    :cond_3
    invoke-static {v3}, Lcom/nwd/factory/service/FactorySettingManager;->set360ViewFunc(I)V

    invoke-virtual {v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v2

    invoke-static {v2}, Lcom/nwd/factory/service/FactorySettingManager;->set6502configenable(I)V

    invoke-virtual {v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->release()V

    :cond_4
    sget-object v1, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFactorySetting#factory feature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v1, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "factory_feature"

    invoke-static {p0, v1, v0}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static loadPackNameConfig()Z
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/need_hide_packname.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadPackNameConfig="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  |  value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/nwd/factory/FeatureSettingUtil;->mPackageMap:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "need_hide_packname.ini not exist!"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public static final setFeature(Landroid/content/Context;IZ)V
    .locals 3

    sget-object v0, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFeature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_feature"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-eqz p2, :cond_0

    or-int/2addr p1, v1

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string p2, "key_excute_recovery"

    invoke-static {p0, p2, p1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initFactorySetting(Landroid/content/Context;[BI)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x2

    const-string p3, "factory_feature_length"

    invoke-static {p1, p3, p2}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const/4 p1, 0x3

    return p1
.end method

.method public loadCurrentConfig(Ljava/util/Map;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "factory_feature"

    invoke-static {p2, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "feature_config"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "feature_setting"

    return-object v0
.end method

.method public resetIfNeed(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "factory_feature"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/nwd/factory/FactorySettingUtil;->emuSendE2PRoomDataToMcu(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public saveFactorySetting(Landroid/content/ContentResolver;[BI)I
    .locals 2

    const-string v0, "factory_feature"

    invoke-static {p1, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {v1, p2, p3, v0}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/2addr p3, v0

    invoke-static {p1, p2, p3, v1}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    const/4 p1, 0x3

    return p1
.end method

.method public setConfig(Ljava/util/Map;Landroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    :try_start_0
    const-string v0, "feature_config"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "factory_feature"

    invoke-static {p2, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    sget-object p2, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFeatureSwitch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    sget-object p2, Lcom/nwd/factory/FeatureSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "set Feature from config failed"

    invoke-virtual {p2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    return p1
.end method
