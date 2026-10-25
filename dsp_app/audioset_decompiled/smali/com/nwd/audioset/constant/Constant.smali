.class public Lcom/nwd/audioset/constant/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static ASP_NO_SOUND_FIELD:Ljava/lang/String; = "asp_no_sound_field"

.field public static final EQ_FREQUENCY:[Ljava/lang/String;

.field public static final EQ_FREQUENCY_14:[Ljava/lang/String;

.field public static final MAX_Q_VALUE:I = 0x64


# direct methods
.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "20"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "25"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const-string v1, "32"

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const-string v5, "40"

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const-string v5, "50"

    const/4 v7, 0x4

    aput-object v5, v0, v7

    const-string v5, "63"

    const/4 v8, 0x5

    aput-object v5, v0, v8

    const-string v5, "80"

    const/4 v9, 0x6

    aput-object v5, v0, v9

    const-string v5, "100"

    const/4 v10, 0x7

    aput-object v5, v0, v10

    const-string v5, "125"

    const/16 v11, 0x8

    aput-object v5, v0, v11

    const-string v12, "160"

    const/16 v13, 0x9

    aput-object v12, v0, v13

    const-string v12, "200"

    const/16 v14, 0xa

    aput-object v12, v0, v14

    const-string v12, "250"

    const/16 v15, 0xb

    aput-object v12, v0, v15

    const-string v16, "315"

    const/16 v17, 0xc

    aput-object v16, v0, v17

    const-string v16, "400"

    const/16 v18, 0xd

    aput-object v16, v0, v18

    const-string v16, "500"

    const/16 v19, 0xe

    aput-object v16, v0, v19

    const-string v20, "630"

    const/16 v21, 0xf

    aput-object v20, v0, v21

    const-string v20, "800"

    const/16 v22, 0x10

    aput-object v20, v0, v22

    const/16 v20, 0x11

    const-string v23, "1k"

    aput-object v23, v0, v20

    const/16 v20, 0x12

    const-string v23, "1.2k"

    aput-object v23, v0, v20

    const/16 v20, 0x13

    const-string v23, "1.6k"

    aput-object v23, v0, v20

    const/16 v20, 0x14

    const-string v23, "2k"

    aput-object v23, v0, v20

    const/16 v20, 0x15

    const-string v23, "2.5k"

    aput-object v23, v0, v20

    const/16 v20, 0x16

    const-string v23, "3.1k"

    aput-object v23, v0, v20

    const/16 v20, 0x17

    const-string v23, "4k"

    aput-object v23, v0, v20

    const/16 v20, 0x18

    const-string v23, "5k"

    aput-object v23, v0, v20

    const/16 v20, 0x19

    const-string v23, "6.3k"

    aput-object v23, v0, v20

    const-string v20, "8k"

    const/16 v23, 0x1a

    aput-object v20, v0, v23

    const/16 v23, 0x1b

    const-string v24, "10k"

    aput-object v24, v0, v23

    const/16 v23, 0x1c

    const-string v24, "12.5"

    aput-object v24, v0, v23

    const/16 v23, 0x1d

    const-string v24, "16k"

    aput-object v24, v0, v23

    const/16 v23, 0x1e

    const-string v24, "18k"

    aput-object v24, v0, v23

    const/16 v23, 0x1f

    const-string v24, "20k"

    aput-object v24, v0, v23

    .line 25
    sput-object v0, Lcom/nwd/audioset/constant/Constant;->EQ_FREQUENCY:[Ljava/lang/String;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/String;

    aput-object v1, v0, v2

    const-string v1, "64"

    aput-object v1, v0, v3

    aput-object v5, v0, v4

    aput-object v12, v0, v6

    const-string v1, "380"

    aput-object v1, v0, v7

    aput-object v16, v0, v8

    const-string v1, "680"

    aput-object v1, v0, v9

    const-string v1, "850"

    aput-object v1, v0, v10

    const-string v1, "1k"

    aput-object v1, v0, v11

    const-string v1, "2k"

    aput-object v1, v0, v13

    const-string v1, "4k"

    aput-object v1, v0, v14

    const-string v1, "6k"

    aput-object v1, v0, v15

    aput-object v20, v0, v17

    const-string v1, "16k"

    aput-object v1, v0, v18

    aput-object v20, v0, v19

    const-string v1, "10k"

    aput-object v1, v0, v21

    const-string v1, "12k"

    aput-object v1, v0, v22

    const/16 v1, 0x11

    const-string v2, "16"

    aput-object v2, v0, v1

    .line 30
    sput-object v0, Lcom/nwd/audioset/constant/Constant;->EQ_FREQUENCY_14:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 111
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 115
    :cond_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 117
    :try_start_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 119
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 123
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 124
    invoke-virtual {v1, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyName="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-object v0
.end method

.method public static getUartConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    .line 46
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    .line 49
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/nwd/kernel/utils/KernelConstant;->UART_CONFIG:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 57
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 53
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 63
    :goto_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_0
    return-object v0

    :catch_2
    move-exception p0

    .line 71
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getWindowFeatureValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 84
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 86
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/nwd/dsp/uitls/DspConstant;->FEATURE_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 88
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v1, 0x0

    .line 92
    :try_start_1
    invoke-virtual {v0, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    invoke-virtual {v0, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyName="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    :catch_1
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method public static isAspNoSound()Z
    .locals 3

    const/4 v0, 0x0

    .line 144
    :try_start_0
    sget-object v1, Lcom/nwd/audioset/constant/Constant;->ASP_NO_SOUND_FIELD:Ljava/lang/String;

    invoke-static {v1}, Lcom/nwd/audioset/constant/Constant;->getUartConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 149
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return v0
.end method
