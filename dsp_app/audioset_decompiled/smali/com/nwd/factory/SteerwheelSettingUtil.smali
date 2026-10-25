.class public Lcom/nwd/factory/SteerwheelSettingUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nwd/factory/IExAndImport;
.implements Lcom/nwd/factory/IFactorySetting;


# static fields
.field private static final ATTR_STEERWHEEL_TYPE:Ljava/lang/String; = "steerwheel_type"

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final TAG_STEERWHEEL_SETTING:Ljava/lang/String; = "steerwheel_setting"

.field private static instance:Lcom/nwd/factory/SteerwheelSettingUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "SteerwheelSettingUtil"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/SteerwheelSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/nwd/factory/SteerwheelSettingUtil;
    .locals 1

    sget-object v0, Lcom/nwd/factory/SteerwheelSettingUtil;->instance:Lcom/nwd/factory/SteerwheelSettingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/SteerwheelSettingUtil;

    invoke-direct {v0}, Lcom/nwd/factory/SteerwheelSettingUtil;-><init>()V

    sput-object v0, Lcom/nwd/factory/SteerwheelSettingUtil;->instance:Lcom/nwd/factory/SteerwheelSettingUtil;

    :cond_0
    sget-object v0, Lcom/nwd/factory/SteerwheelSettingUtil;->instance:Lcom/nwd/factory/SteerwheelSettingUtil;

    return-object v0
.end method

.method public static final getSteerwheelType(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_steerwheel_type"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final setSteerwheelType(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_steerwheel_type"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initFactorySetting(Landroid/content/Context;[BI)I
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    aget-byte v1, p2, p3

    const-string v2, "factory_steerwheel_length"

    invoke-static {v0, v2, v1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const/4 v0, 0x1

    if-gt v0, v1, :cond_0

    add-int/2addr p3, v0

    aget-byte p2, p2, p3

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    sget-object p3, Lcom/nwd/factory/SteerwheelSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initFactorySetting,steerwheel type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/nwd/factory/SteerwheelSettingUtil;->setSteerwheelType(Landroid/content/Context;I)V

    if-gtz v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    add-int/2addr v1, v0

    return v1
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

    invoke-static {p2}, Lcom/nwd/factory/SteerwheelSettingUtil;->getSteerwheelType(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "steerwheel_type"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "steerwheel_setting"

    return-object v0
.end method

.method public resetIfNeed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public saveFactorySetting(Landroid/content/ContentResolver;[BI)I
    .locals 2

    const/4 v0, 0x1

    int-to-byte v1, v0

    aput-byte v1, p2, p3

    add-int/2addr p3, v0

    const-string v0, "factory_steerwheel_type"

    invoke-static {p1, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    const/4 p1, 0x2

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
    const-string v0, "steerwheel_type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p2, p1}, Lcom/nwd/factory/SteerwheelSettingUtil;->setSteerwheelType(Landroid/content/Context;I)V

    sget-object p2, Lcom/nwd/factory/SteerwheelSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set steerwheel type = "

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

    :goto_0
    return p1
.end method
