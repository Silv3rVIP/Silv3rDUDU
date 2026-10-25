.class public Lcom/android/utils/utils/PlatformUtils;
.super Ljava/lang/Object;


# static fields
.field public static final PLATFORM_A133_CARKIT:I = 0xf

.field public static final PLATFORM_A537_CARKIT:I = 0x15

.field public static final PLATFORM_AW_CARKIT:I = 0x3

.field public static final PLATFORM_MTK_6582_CARKIT:I = 0xe

.field public static final PLATFORM_MTK_6762_CARKIT:I = 0xb

.field public static final PLATFORM_MTK_CARKIT:I = 0x8

.field public static final PLATFORM_N3_CARKIT:I = 0x5

.field public static final PLATFORM_QUALCOMM_6115_CARKIT:I = 0x13

.field public static final PLATFORM_QUALCOMM_6225_CARKIT:I = 0x12

.field public static final PLATFORM_QUALCOMM_8937_CARKIT:I = 0x4

.field public static final PLATFORM_QUALCOMM_CARKIT:I = 0x2

.field public static final PLATFORM_SPREADTRUM_786X_CARKIT:I = 0x14

.field public static final PLATFORM_SPREADTRUM_7870_CARKIT:I = 0x10

.field public static final PLATFORM_SPREADTRUM_8141_CARKIT:I = 0xc

.field public static final PLATFORM_SPREADTRUM_8541_CARKIT:I = 0x9

.field public static final PLATFORM_SPREADTRUM_8581_CARKIT:I = 0xd

.field public static final PLATFORM_SPREADTRUM_9853_CARKIT:I = 0x8

.field public static final PLATFORM_SPREADTRUM_CARKIT:I = 0x7

.field public static final PLATFORM_T2_CARKIT:I = 0x0

.field public static final PLATFORM_T2_REAR_MIRROR:I = 0x1

.field public static final PLATFORM_T3_CARKIT:I = 0x3

.field public static final PLATFORM_T527_CARKIT:I = 0x11

.field public static final PLATFORM_T5_CARKIT:I = 0xa

.field public static final PLATFORM_T7_CARKIT:I = 0x6

.field public static final PRODUCT_TYPE_N3_NAVI_BOARD:I = 0x64

.field private static mNaviBoardType:I = -0x1

.field private static mPlatform:I = -0x1

.field private static mSubPlatform:I = -0x1


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

.method private static final ensureLoadProperties()V
    .locals 6

    sget v0, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    if-ltz v0, :cond_0

    sget v0, Lcom/android/utils/utils/PlatformUtils;->mSubPlatform:I

    if-gez v0, :cond_12

    :cond_0
    const-string v0, "ro.product.nwd.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {v0}, Lcom/android/utils/utils/PlatformUtils;->loadPlatformConfig(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "T3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "K007"

    const/4 v5, 0x3

    if-nez v2, :cond_4

    const-string v2, "K2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "K3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "K4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x7

    sput v2, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    goto :goto_2

    :cond_3
    :goto_0
    sput v3, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    goto :goto_2

    :cond_4
    :goto_1
    sput v5, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    :cond_5
    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "K20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "K21"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_6

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "K30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    const-string v1, "K31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "K32"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const-string v1, "K22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v0, 0x5

    goto :goto_4

    :cond_9
    const-string v1, "K23"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v0, 0x6

    goto :goto_4

    :cond_a
    const-string v1, "N22"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x64

    sput v0, Lcom/android/utils/utils/PlatformUtils;->mNaviBoardType:I

    goto :goto_7

    :cond_b
    const/4 v0, 0x0

    goto :goto_4

    :cond_c
    :goto_3
    const/4 v0, 0x4

    :goto_4
    sput v0, Lcom/android/utils/utils/PlatformUtils;->mSubPlatform:I

    goto :goto_7

    :cond_d
    :goto_5
    sput v3, Lcom/android/utils/utils/PlatformUtils;->mSubPlatform:I

    goto :goto_7

    :cond_e
    :goto_6
    sput v5, Lcom/android/utils/utils/PlatformUtils;->mSubPlatform:I

    :cond_f
    :goto_7
    sget v0, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    if-gez v0, :cond_12

    const-string v0, "key_product_type"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/app/UartConfig.ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-virtual {v1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_10
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catchall_0
    move-exception v0

    move-object v2, v3

    goto :goto_9

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_8

    :catchall_1
    move-exception v0

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_8
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_12

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_b

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    :goto_9
    if-eqz v2, :cond_11

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_a

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_a
    throw v0

    :cond_12
    :goto_b
    return-void
.end method

.method public static getNaviBoardType()I
    .locals 1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->ensureLoadProperties()V

    sget v0, Lcom/android/utils/utils/PlatformUtils;->mNaviBoardType:I

    return v0
.end method

.method public static final getPlatform()I
    .locals 1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->ensureLoadProperties()V

    sget v0, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    return v0
.end method

.method public static final getSubPlatform()I
    .locals 1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->ensureLoadProperties()V

    sget v0, Lcom/android/utils/utils/PlatformUtils;->mSubPlatform:I

    return v0
.end method

.method private static final isCompareValue(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static isNaviBoard()Z
    .locals 2

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->ensureLoadProperties()V

    sget v0, Lcom/android/utils/utils/PlatformUtils;->mNaviBoardType:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isP9Platform()Z
    .locals 1

    const-string v0, "K20N"

    invoke-static {v0}, Lcom/android/utils/utils/PlatformUtils;->isPlatform(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "K20P"

    invoke-static {v0}, Lcom/android/utils/utils/PlatformUtils;->isPlatform(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isPlatform(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "ro.product.nwd.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "ro.product.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static final loadPlatformConfig(Ljava/lang/String;)Z
    .locals 9

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/platform.xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v0, "utf-8"

    invoke-interface {v2, v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    if-eq v0, v1, :cond_2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Platform"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "platform"

    const-string v6, ","

    const-string v7, "compare"

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    :try_start_1
    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/utils/utils/PlatformUtils;->isCompareValue(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/utils/utils/PlatformUtils;->mPlatform:I

    goto :goto_1

    :cond_0
    const-string v4, "SubPlatform"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/utils/utils/PlatformUtils;->isCompareValue(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2, v8, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/utils/utils/PlatformUtils;->mSubPlatform:I

    :cond_1
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
