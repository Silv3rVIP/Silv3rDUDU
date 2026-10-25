.class public Lcom/nwd/kernel/utils/SettingConfigUtils;
.super Ljava/lang/Object;


# static fields
.field private static BACKLIGHT_CONTROL_BY_MCU:Z = false

.field private static final KEY_MCU_SET_BACKLIGHT:Ljava/lang/String; = "mcu_set_backLight"

.field private static final KEY_MCU_SET_VOLUME:Ljava/lang/String; = "mcu_set_volume"

.field private static VOLUME_CONTROL_BY_MCU:Z = true

.field private static isLoadConfig:Z = false


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

.method private static final ensureLoadConfig()V
    .locals 1

    sget-boolean v0, Lcom/nwd/kernel/utils/SettingConfigUtils;->isLoadConfig:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/nwd/kernel/utils/SettingConfigUtils;->isLoadConfig:Z

    invoke-static {}, Lcom/nwd/kernel/utils/SettingConfigUtils;->loadConfig()V

    :cond_0
    return-void
.end method

.method public static final isMcuSetBackLight()Z
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/SettingConfigUtils;->ensureLoadConfig()V

    sget-boolean v0, Lcom/nwd/kernel/utils/SettingConfigUtils;->BACKLIGHT_CONTROL_BY_MCU:Z

    return v0
.end method

.method public static final isMcuSetVolume()Z
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/SettingConfigUtils;->ensureLoadConfig()V

    sget-boolean v0, Lcom/nwd/kernel/utils/SettingConfigUtils;->VOLUME_CONTROL_BY_MCU:Z

    return v0
.end method

.method private static final loadConfig()V
    .locals 6

    const-string v0, "mcu_set_volume"

    const-string v1, "mcu_set_backLight"

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

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

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v2, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1"

    if-eqz v3, :cond_0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/nwd/kernel/utils/SettingConfigUtils;->BACKLIGHT_CONTROL_BY_MCU:Z

    :cond_0
    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v2, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/nwd/kernel/utils/SettingConfigUtils;->VOLUME_CONTROL_BY_MCU:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
