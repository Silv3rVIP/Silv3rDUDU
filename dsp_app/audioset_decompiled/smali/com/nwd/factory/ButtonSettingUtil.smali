.class public Lcom/nwd/factory/ButtonSettingUtil;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nwd/factory/IFactorySetting;
.implements Lcom/nwd/factory/IExAndImport;


# static fields
.field private static final ATTR_NAME_KNOB_BUTTON:Ljava/lang/String; = "knob_button_config"

.field private static final ATTR_NAME_PANEL_BUTTON:Ljava/lang/String; = "panel_button_config"

.field static final DEFAULT_PANEL_BUTTON:I = 0x9

.field static final DEFAULT_PANEL_KNOB_BUTTON:I = 0x1

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final TAG_BUTTON_SETTING:Ljava/lang/String; = "button_setting"

.field private static instance:Lcom/nwd/factory/ButtonSettingUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "ButtonSettingUtil"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/ButtonSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lcom/nwd/factory/ButtonSettingUtil;
    .locals 1

    sget-object v0, Lcom/nwd/factory/ButtonSettingUtil;->instance:Lcom/nwd/factory/ButtonSettingUtil;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/ButtonSettingUtil;

    invoke-direct {v0}, Lcom/nwd/factory/ButtonSettingUtil;-><init>()V

    sput-object v0, Lcom/nwd/factory/ButtonSettingUtil;->instance:Lcom/nwd/factory/ButtonSettingUtil;

    :cond_0
    sget-object v0, Lcom/nwd/factory/ButtonSettingUtil;->instance:Lcom/nwd/factory/ButtonSettingUtil;

    return-object v0
.end method

.method public static final getKnobButtonType(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_knob_button"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getPanelButtonType(Landroid/content/Context;)I
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_button"

    invoke-static {p0, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final setKnobButtonType(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_knob_button"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setPanelButtonType(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "factory_button"

    invoke-static {p0, v0, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public initFactorySetting(Landroid/content/Context;[BI)I
    .locals 5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, "factory_button_length"

    invoke-static {v0, v2, v1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    add-int/lit8 v0, p3, 0x1

    aget-byte v0, p2, v0

    sget-object v2, Lcom/nwd/factory/ButtonSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initFactorySetting#factory button = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "factory_button"

    invoke-static {v2, v3, v0}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    add-int/2addr p3, v1

    aget-byte p2, p2, p3

    sget-object p3, Lcom/nwd/factory/ButtonSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFactorySetting#factory knob button = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "factory_knob_button"

    invoke-static {p1, p3, p2}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const/4 p1, 0x3

    return p1
.end method

.method public loadCurrentConfig(Ljava/util/Map;Landroid/content/Context;)V
    .locals 2
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

    invoke-static {p2}, Lcom/nwd/factory/ButtonSettingUtil;->getPanelButtonType(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "panel_button_config"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/ButtonSettingUtil;->getKnobButtonType(Landroid/content/Context;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v0, "knob_button_config"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "button_setting"

    return-object v0
.end method

.method public resetIfNeed(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "factory_button_length"

    invoke-static {p1, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    return-void
.end method

.method public saveFactorySetting(Landroid/content/ContentResolver;[BI)I
    .locals 4

    const-string v0, "factory_button"

    invoke-static {p1, v0}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    const-string v1, "factory_knob_button"

    invoke-static {p1, v1}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, p2, p3, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/lit8 v3, p3, 0x1

    invoke-static {v0, p2, v3, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    add-int/2addr p3, v1

    invoke-static {p1, p2, p3, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->int2byte(I[BII)V

    const/4 p1, 0x3

    return p1
.end method

.method public setConfig(Ljava/util/Map;Landroid/content/Context;)Z
    .locals 3
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

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    :try_start_0
    const-string v0, "panel_button_config"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "factory_button"

    invoke-static {p2, v1, v0}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v1, "knob_button_config"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "factory_knob_button"

    invoke-static {p2, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    sget-object p2, Lcom/nwd/factory/ButtonSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPanelButtonType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mKnobButtonType = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

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

    sget-object p2, Lcom/nwd/factory/ButtonSettingUtil;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "set Button from config failed"

    invoke-virtual {p2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    return p1
.end method
