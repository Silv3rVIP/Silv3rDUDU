.class public Lcom/nwd/factory/can/CanFactorySettingUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nwd/factory/IExAndImport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;
    }
.end annotation


# static fields
.field private static final ATTR_NAME_CAN:Ljava/lang/String; = "can_config"

.field private static CAN_APP_PATH:Ljava/lang/String; = null

.field private static CAN_CONFIG_PATH:Ljava/lang/String; = null

.field private static final CAN_SAVE_PATH:Ljava/lang/String; = "/config/app/can.ini"

.field public static final DEFAULT_CAN_NUMBER:I = 0x0

.field private static final KEY_APP_CAN_PATH:Ljava/lang/String; = "app_can_path"

.field private static final KEY_CAN_FEATURE:Ljava/lang/String; = "can_feature"

.field private static final KEY_CAN_NUMBER:Ljava/lang/String; = "can_number"

.field private static final KEY_CAN_VERSION:Ljava/lang/String; = "can_version"

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final PROPERTIES_MOUNT:Ljava/lang/String; = "persist.sys.mount.config"

.field private static final PROPERTIES_VALUE_READ_ONLY:Ljava/lang/String; = "system,ro"

.field private static final PROPERTIES_VALUE_RW:Ljava/lang/String; = "system,rw"

.field private static final SYSTEM_APP_PATH:Ljava/lang/String; = "/config/app/.app/"

.field private static final TAG_CAN_SETTING:Ljava/lang/String; = "can_setting"

.field private static instance:Lcom/nwd/factory/can/CanFactorySettingUtil;


# instance fields
.field private mCanCopyListener:Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

.field private mCanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/factory/can/CanInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

.field private mIsCopyingFlag:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "CanFactorySettingUtil"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "/mnt/card/can/"

    sput-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_APP_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_APP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_CONFIG_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mIsCopyingFlag:Z

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/nwd/kernel/utils/KernelConstant;->UART_CONFIG:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "load uart config complete"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v1, "app_can_path"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_APP_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_APP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_CONFIG_PATH:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAN_CONFIG_PATH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Lcom/nwd/factory/can/CanInfo;

    invoke-direct {v0}, Lcom/nwd/factory/can/CanInfo;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-direct {p0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->loadCanNumber()V

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/factory/can/CanFactorySettingUtil;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100()Lcom/android/utils/log/JLog;
    .locals 1

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/nwd/factory/can/CanFactorySettingUtil;Landroid/content/Context;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nwd/factory/can/CanFactorySettingUtil;->setSystemProp(Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/nwd/factory/can/CanFactorySettingUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->deleteAllCanApp()V

    return-void
.end method

.method static synthetic access$400(Lcom/nwd/factory/can/CanFactorySettingUtil;Lcom/nwd/factory/can/CanInfo;I)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nwd/factory/can/CanFactorySettingUtil;->copyCan2System(Lcom/nwd/factory/can/CanInfo;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/nwd/factory/can/CanFactorySettingUtil;Lcom/nwd/factory/can/CanInfo;)Lcom/nwd/factory/can/CanInfo;
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    return-object p1
.end method

.method static synthetic access$600(Lcom/nwd/factory/can/CanFactorySettingUtil;)V
    .locals 0

    invoke-direct {p0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->saveCanNumber()V

    return-void
.end method

.method static synthetic access$700(Lcom/nwd/factory/can/CanFactorySettingUtil;)Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;
    .locals 0

    iget-object p0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanCopyListener:Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    return-object p0
.end method

.method static synthetic access$802(Lcom/nwd/factory/can/CanFactorySettingUtil;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mIsCopyingFlag:Z

    return p1
.end method

.method private checkMd5(Lcom/nwd/factory/can/AppInfo;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method private copyCan2System(Lcom/nwd/factory/can/CanInfo;I)I
    .locals 7

    invoke-virtual {p1}, Lcom/nwd/factory/can/CanInfo;->getAppList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-virtual {p1}, Lcom/nwd/factory/can/CanInfo;->getAppList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nwd/factory/can/AppInfo;

    invoke-direct {p0, v3}, Lcom/nwd/factory/can/CanFactorySettingUtil;->copyCanApp2System(Lcom/nwd/factory/can/AppInfo;)Z

    move-result v4

    const-string v5, "copy "

    if-eqz v4, :cond_0

    sget-object v4, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " to system/app success"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanCopyListener:Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    if-eqz v3, :cond_2

    add-int/lit8 v4, v1, 0x1

    invoke-interface {v3, v4, v0}, Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;->onCanCopyProgress(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    if-le v2, p2, :cond_1

    sget-object p1, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "more than "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " time faild to copy can app to system!!!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, -0x1

    sget-object v4, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " faild,copy again"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v2
.end method

.method private copyCanApp2System(Lcom/nwd/factory/can/AppInfo;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/nwd/factory/can/CanFactorySettingUtil;->getCanAppPathFromSystem(Lcom/nwd/factory/can/AppInfo;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/nwd/factory/can/CanFactorySettingUtil;->getCanAppFilePath(Lcom/nwd/factory/can/AppInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2000

    new-array v4, v4, [B

    :goto_0
    invoke-virtual {v2, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    if-ltz v5, :cond_1

    invoke-virtual {v3, v4, v1, v5}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    invoke-direct {p0, p1, v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->checkMd5(Lcom/nwd/factory/can/AppInfo;Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private deleteAllCanApp()V
    .locals 9

    new-instance v0, Ljava/io/File;

    const-string v1, "/config/app/.app/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    sget-object v5, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete file = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v5, v5, 0x1

    :try_start_0
    sget-object v6, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "after delete, wait 500ms and check if the file still exist, try time = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private deleteOriginApp(Lcom/nwd/factory/can/CanInfo;)V
    .locals 5

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete canInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/nwd/factory/can/CanInfo;->getAppList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/factory/can/AppInfo;

    const/4 v1, 0x0

    new-instance v2, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->getCanAppPathFromSystem(Lcom/nwd/factory/can/AppInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete appFile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ge v1, v0, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v1, v1, 0x1

    :try_start_0
    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after delete, wait 500ms and check if the file still exist, try time = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-wide/16 v3, 0x1f4

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getCanAppFilePath(Lcom/nwd/factory/can/AppInfo;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_APP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nwd/factory/can/AppInfo;->getParentCanInfo()Lcom/nwd/factory/can/CanInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/factory/can/CanInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nwd/factory/can/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCanAppFilePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-object p1
.end method

.method private getCanAppPathFromSystem(Lcom/nwd/factory/can/AppInfo;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/config/app/.app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/nwd/factory/can/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static final getInstance()Lcom/nwd/factory/can/CanFactorySettingUtil;
    .locals 1

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->instance:Lcom/nwd/factory/can/CanFactorySettingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-direct {v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;-><init>()V

    sput-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->instance:Lcom/nwd/factory/can/CanFactorySettingUtil;

    :cond_0
    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->instance:Lcom/nwd/factory/can/CanFactorySettingUtil;

    return-object v0
.end method

.method private loadCanNumber()V
    .locals 5

    :try_start_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/config/app/can.ini"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v1, "can_number"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "can_version"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v2, v1}, Lcom/nwd/factory/can/CanInfo;->setId(I)V

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v2, v0}, Lcom/nwd/factory/can/CanInfo;->setVersionName(Ljava/lang/String;)V

    sget-object v2, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadCanNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",version = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/can/CanInfo;

    invoke-direct {v0}, Lcom/nwd/factory/can/CanInfo;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nwd/factory/can/CanInfo;->setId(I)V

    :goto_0
    return-void
.end method

.method private readConfig(Ljava/lang/String;)Z
    .locals 11

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "=======readConfig start=========="

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, "utf-8"

    invoke-interface {v2, v3, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v1

    move-object v5, v4

    :goto_0
    if-eq p1, v0, :cond_5

    const/4 v6, 0x2

    const-string v7, "app"

    const-string v8, "can"

    if-ne p1, v6, :cond_1

    :try_start_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    sget-object v6, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start tag = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    new-instance p1, Lcom/nwd/factory/can/CanInfo;

    invoke-direct {p1}, Lcom/nwd/factory/can/CanInfo;-><init>()V

    const-string v4, "name"

    invoke-interface {v2, v1, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "id"

    invoke-interface {v2, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "version"

    invoke-interface {v2, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "->name = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ",version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/factory/can/CanInfo;->setId(I)V

    invoke-virtual {p1, v4}, Lcom/nwd/factory/can/CanInfo;->setName(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Lcom/nwd/factory/can/CanInfo;->setVersionName(Ljava/lang/String;)V

    move-object v4, p1

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance v5, Lcom/nwd/factory/can/AppInfo;

    invoke-direct {v5}, Lcom/nwd/factory/can/AppInfo;-><init>()V

    const-string p1, "md5"

    invoke-interface {v2, v1, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "-->app = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",md5 = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lcom/nwd/factory/can/AppInfo;->setAppName(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Lcom/nwd/factory/can/AppInfo;->setMd5(Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x3

    if-ne p1, v6, :cond_4

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v6, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "->add canInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "-->add appInfo = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/nwd/factory/can/CanInfo;->addApp(Lcom/nwd/factory/can/AppInfo;)V

    :cond_3
    :goto_1
    sget-object v6, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "end tag = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_4
    :goto_2
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    :cond_5
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catchall_0
    move-exception p1

    move-object v1, v3

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v1, v3

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_2
    move-exception p1

    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v0, 0x0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    sget-object p1, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "=======readConfig end=========="

    invoke-virtual {p1, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v0

    :goto_5
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    goto :goto_8

    :goto_7
    throw p1

    :goto_8
    goto :goto_7
.end method

.method private saveCanNumber()V
    .locals 4

    const-string v0, "/config/app/can.ini"

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_0
    const-string v2, "can_number"

    iget-object v3, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v3}, Lcom/nwd/factory/can/CanInfo;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "can_version"

    iget-object v3, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v3}, Lcom/nwd/factory/can/CanInfo;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v2, "can_feature"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save can number success,can number = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v2}, Lcom/nwd/factory/can/CanInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "chmod 777 /config/app/can.ini"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setSystemProp(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "persist.sys.mount.config"

    if-eqz p2, :cond_0

    :try_start_0
    const-string p2, "system,rw"

    goto :goto_0

    :cond_0
    const-string p2, "system,ro"

    :goto_0
    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setprop persist.sys.mount.config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_prop_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_prop_value"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getprop persist.sys.mount.config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x1f4

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public checkConfigFileAndLoadConfig()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nwd/factory/can/CanFactorySettingUtil;->CAN_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->readConfig(Ljava/lang/String;)Z

    move-result v0

    iget-object v1, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v1}, Lcom/nwd/factory/can/CanInfo;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nwd/factory/can/CanFactorySettingUtil;->getCanInfoByCanNumber(I)Lcom/nwd/factory/can/CanInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCanInfoByCanNumber(I)Lcom/nwd/factory/can/CanInfo;
    .locals 3

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/factory/can/CanInfo;

    invoke-virtual {v1}, Lcom/nwd/factory/can/CanInfo;->getId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCanInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nwd/factory/can/CanInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    return-object v0
.end method

.method public getCurrentCanInfo()Lcom/nwd/factory/can/CanInfo;
    .locals 1

    invoke-direct {p0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->loadCanNumber()V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCurrentCanInfo:Lcom/nwd/factory/can/CanInfo;

    return-object v0
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

    invoke-virtual {p0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->getCurrentCanInfo()Lcom/nwd/factory/can/CanInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/nwd/factory/can/CanInfo;->getId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "can_config"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "can_setting"

    return-object v0
.end method

.method public selectNewCan(Landroid/content/Context;I)V
    .locals 2

    iget-boolean v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mIsCopyingFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mIsCopyingFlag:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nwd/factory/can/CanFactorySettingUtil$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/nwd/factory/can/CanFactorySettingUtil$1;-><init>(Lcom/nwd/factory/can/CanFactorySettingUtil;Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public setCanCopyListener(Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanCopyListener:Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    return-void
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
    const-string v0, "can_config"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil;->mCanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->checkConfigFileAndLoadConfig()Z

    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/nwd/factory/can/CanFactorySettingUtil;->selectNewCan(Landroid/content/Context;I)V

    sget-object p2, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCanId = "

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

    sget-object p2, Lcom/nwd/factory/can/CanFactorySettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "set Button from config failed"

    invoke-virtual {p2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    return p1
.end method
