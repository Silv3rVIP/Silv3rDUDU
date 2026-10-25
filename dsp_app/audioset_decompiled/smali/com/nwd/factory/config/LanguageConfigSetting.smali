.class public Lcom/nwd/factory/config/LanguageConfigSetting;
.super Ljava/lang/Object;


# static fields
.field protected static BAKLANGUAGEPATH:Ljava/lang/String;

.field protected static CURLANGUAGEPATH:Ljava/lang/String;

.field private static final LOG:Lcom/android/utils/log/JLog;

.field protected static SUPPORTLANGUAGEPATH:Ljava/lang/String;

.field private static mLanguageConfigSetting:Lcom/nwd/factory/config/LanguageConfigSetting;


# instance fields
.field protected mDefaultLang:Ljava/lang/String;

.field protected mLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mLangMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mSupportLangList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "LanguageConfig"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/SupportLanguage.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->SUPPORTLANGUAGEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/NwdLocaleConfig.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/NwdLocaleConfig.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->BAKLANGUAGEPATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/nwd/factory/config/LanguageConfigSetting;->readSupportLang()V

    sget-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/LanguageConfigSetting;->readLang(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/nwd/factory/config/LanguageConfigSetting;
    .locals 1

    sget-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLanguageConfigSetting:Lcom/nwd/factory/config/LanguageConfigSetting;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/config/LanguageConfigSetting;

    invoke-direct {v0}, Lcom/nwd/factory/config/LanguageConfigSetting;-><init>()V

    sput-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLanguageConfigSetting:Lcom/nwd/factory/config/LanguageConfigSetting;

    :cond_0
    sget-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLanguageConfigSetting:Lcom/nwd/factory/config/LanguageConfigSetting;

    return-object v0
.end method

.method public static sendUserChoosedLocalLanguage2FW()V
    .locals 2

    sget-object v0, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "sendUserChoosedLocalLanguage2FW"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v0, "persist.sys.nwd.local.modified"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAllLangList()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    return-object v0
.end method

.method public getDefaultLang()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "en_US"

    iput-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    return-object v0
.end method

.method public getLangKey(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v2, ""

    :goto_1
    return-object v2
.end method

.method public getSupportLangList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    return-object v0
.end method

.method protected readLang(Ljava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_0
    :try_start_0
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "utf-8"

    invoke-direct {v0, p1, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V

    goto :goto_1

    :cond_2
    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const-string v3, " default"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "tempStr="

    if-eq v3, v4, :cond_3

    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDefaultLang="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected readSupportLang()V
    .locals 12

    const-string v0, "\u7e41\u9ad4\u4e2d\u6587"

    const-string v1, "zh_TW"

    const-string v2, "\u7b80\u4f53\u4e2d\u6587"

    const-string v3, "zh_CN"

    const-string v4, "English"

    const-string v5, "en_US"

    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    :cond_0
    new-instance v6, Ljava/util/Properties;

    invoke-direct {v6}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v7, Ljava/io/InputStreamReader;

    new-instance v8, Ljava/io/FileInputStream;

    sget-object v9, Lcom/nwd/factory/config/LanguageConfigSetting;->SUPPORTLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const-string v9, "utf-8"

    invoke-direct {v7, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-virtual {v6}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "#"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_1

    iget-object v10, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v10, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v6

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-nez v6, :cond_3

    :goto_1
    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v6, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :goto_2
    iget-object v7, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->size()I

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v7, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v4, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mLangMap:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    goto :goto_4

    :goto_3
    throw v6

    :goto_4
    goto :goto_3
.end method

.method public save()V
    .locals 10

    const-string v0, "/cache/NwdLocaleConfig.conf"

    iget-object v1, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v4, 0x0

    :goto_0
    :try_start_2
    iget-object v5, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    sget-object v6, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mDefaultLang="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " str="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " default"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v5, Lcom/nwd/factory/config/LanguageConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    const-string v6, "add default"

    invoke-virtual {v5, v6}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\r\n"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {}, Lcom/nwd/factory/config/LanguageConfigSetting;->sendUserChoosedLocalLanguage2FW()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/nwd/factory/config/LanguageConfigSetting;->BAKLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_5

    :catch_2
    move-exception v1

    move-object v9, v3

    move-object v3, v1

    move-object v1, v9

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v9

    goto :goto_5

    :catch_3
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v3

    move-object v3, v9

    goto :goto_2

    :catchall_2
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_5

    :catch_4
    move-exception v2

    move-object v3, v2

    move-object v2, v1

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    nop

    :cond_4
    :goto_3
    if-eqz v2, :cond_5

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    :cond_5
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/nwd/factory/config/LanguageConfigSetting;->BAKLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_4
    invoke-static {v1, v2}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    goto :goto_7

    :catchall_3
    move-exception v3

    :goto_5
    if-eqz v1, :cond_6

    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    nop

    :cond_6
    :goto_6
    if-eqz v2, :cond_7

    :try_start_9
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :catch_8
    :cond_7
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    sget-object v4, Lcom/nwd/factory/config/LanguageConfigSetting;->BAKLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/nwd/factory/config/LanguageConfigSetting;->CURLANGUAGEPATH:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    throw v3

    :cond_8
    :goto_7
    return-void
.end method

.method public setDefaultLang(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setSupportLang(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mDefaultLang:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nwd/factory/config/LanguageConfigSetting;->mSupportLangList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method
