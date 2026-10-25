.class public Lcom/nwd/factory/config/ConfigPropertiesUtils;
.super Ljava/lang/Object;


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;

.field public static mFactoryProperties:Ljava/util/Properties;

.field public static mInputFactoryConfig:Ljava/io/FileInputStream;

.field public static mInputUpdateConfig:Ljava/io/FileInputStream;

.field public static mUpdateConfigProperties:Ljava/util/Properties;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "ConfigPropertiesUtils"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeFactoryConfigProperties()V
    .locals 1

    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mInputFactoryConfig:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mInputFactoryConfig:Ljava/io/FileInputStream;

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mFactoryProperties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static closeUpdateConfigProperties()V
    .locals 1

    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mInputUpdateConfig:Ljava/io/FileInputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mInputUpdateConfig:Ljava/io/FileInputStream;

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mUpdateConfigProperties:Ljava/util/Properties;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static getFactoryConfigProperties()Ljava/util/Properties;
    .locals 2

    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mFactoryProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mFactoryProperties:Ljava/util/Properties;

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/nwd/factory/config/ConfigPropertiesUtils;->onGetFactoryConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mInputFactoryConfig:Ljava/io/FileInputStream;

    sget-object v1, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mFactoryProperties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mFactoryProperties:Ljava/util/Properties;

    return-object v0
.end method

.method public static getUpdateConfigProperties()Ljava/util/Properties;
    .locals 2

    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mUpdateConfigProperties:Ljava/util/Properties;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mUpdateConfigProperties:Ljava/util/Properties;

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-static {}, Lcom/nwd/factory/config/ConfigPropertiesUtils;->onGetUpdateConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mInputUpdateConfig:Ljava/io/FileInputStream;

    sget-object v1, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mUpdateConfigProperties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->mUpdateConfigProperties:Ljava/util/Properties;

    return-object v0
.end method

.method private static onGetFactoryConfigPath()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/FactoryConfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/FactoryConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/FactoryConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-object v1
.end method

.method private static onGetUpdateConfigPath()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/UpdateConfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/UpdateConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/UpdateConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v0, Lcom/nwd/factory/config/ConfigPropertiesUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-object v1
.end method
