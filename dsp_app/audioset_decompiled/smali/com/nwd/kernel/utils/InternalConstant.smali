.class public Lcom/nwd/kernel/utils/InternalConstant;
.super Ljava/lang/Object;


# static fields
.field public static final CAN_CONFIG:Ljava/lang/String;

.field public static final KEY_CAN_RADIO_CLASS_NAME:Ljava/lang/String; = "can_radio_class_name"

.field public static final KEY_CAN_RADIO_PACKAGE_NAME:Ljava/lang/String; = "can_radio_package_name"

.field public static final KEY_RADIO_TYPE:Ljava/lang/String; = "radio_type"

.field private static mCanRadioClassName:Ljava/lang/String;

.field private static mCanRadioPkgName:Ljava/lang/String;

.field private static mRadioType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/can.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/kernel/utils/InternalConstant;->CAN_CONFIG:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/nwd/kernel/utils/InternalConstant;->mRadioType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final ensureLoadRadioType()V
    .locals 6

    const-string v0, "can_radio_class_name"

    const-string v1, "can_radio_package_name"

    const-string v2, "radio_type"

    sget v3, Lcom/nwd/kernel/utils/InternalConstant;->mRadioType:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_5

    :try_start_0
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/backups/can.txt"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-boolean v4, Lcom/nwd/kernel/source/MCUDeviceManager;->mbSaveRadioInfo:Z

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/cache/can.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v4, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/nwd/kernel/utils/InternalConstant;->mRadioType:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/nwd/kernel/utils/InternalConstant;->mRadioType:I

    :goto_0
    invoke-virtual {v4, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nwd/kernel/utils/InternalConstant;->mCanRadioPkgName:Ljava/lang/String;

    :cond_2
    invoke-virtual {v4, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/kernel/utils/InternalConstant;->mCanRadioClassName:Ljava/lang/String;

    :cond_3
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    sget-object v0, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "radioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/nwd/kernel/utils/InternalConstant;->mRadioType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",mCanRadioPkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/kernel/utils/InternalConstant;->mCanRadioPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",mCanRadioClassName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/kernel/utils/InternalConstant;->mCanRadioClassName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public static final getCanRadioClassName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/InternalConstant;->ensureLoadRadioType()V

    sget-object v0, Lcom/nwd/kernel/utils/InternalConstant;->mCanRadioClassName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getCanRadioPkgName()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/InternalConstant;->ensureLoadRadioType()V

    sget-object v0, Lcom/nwd/kernel/utils/InternalConstant;->mCanRadioPkgName:Ljava/lang/String;

    return-object v0
.end method

.method public static final getRadioType()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/InternalConstant;->ensureLoadRadioType()V

    sget v0, Lcom/nwd/kernel/utils/InternalConstant;->mRadioType:I

    return v0
.end method
