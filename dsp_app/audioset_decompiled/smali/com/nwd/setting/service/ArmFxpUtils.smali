.class public Lcom/nwd/setting/service/ArmFxpUtils;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_CARCONTROL_STUDY:Ljava/lang/String; = "com.android.action.ACTION_CARCONTROL_STUDY"

.field public static final CMD_FXP_STUDY_CLEAR:I = 0x1003

.field public static final CMD_FXP_STUDY_END:I = 0x1002

.field public static final CMD_FXP_STUDY_START:I = 0x1000

.field public static final EXTRA_CARCONTROL_CLEAR_KEY:Ljava/lang/String; = "extra_carcontrol_clear_key"

.field public static final EXTRA_CARCONTROL_SELECT:Ljava/lang/String; = "extra_carcontrol_select"

.field public static final EXTRA_CARCONTROL_STUDY_KEY:Ljava/lang/String; = "extra_carcontrol_study_key"

.field public static final LOG:Lcom/android/utils/log/JLog;

.field public static final STUDY_KEY_360:I = 0x20

.field public static final STUDY_KEY_ACCEPT:I = 0x13

.field public static final STUDY_KEY_AUX:I = 0x15

.field public static final STUDY_KEY_BACK:I = 0x65

.field public static final STUDY_KEY_BT:I = 0xb

.field public static final STUDY_KEY_BTMUSIC:I = 0x16

.field public static final STUDY_KEY_CARVIDEO:I = 0x17

.field public static final STUDY_KEY_DVD:I = 0xa

.field public static final STUDY_KEY_ECAR:I = 0xc

.field public static final STUDY_KEY_EQ:I = 0xd

.field public static final STUDY_KEY_HANGUP:I = 0x12

.field public static final STUDY_KEY_HD2:I = 0x22

.field public static final STUDY_KEY_HICAR:I = 0x23

.field public static final STUDY_KEY_HOME:I = 0x64

.field public static final STUDY_KEY_LIGHT:I = 0x9

.field public static final STUDY_KEY_MODE:I = 0x7

.field public static final STUDY_KEY_MUSIC:I = 0x10

.field public static final STUDY_KEY_MUTE:I = 0x5

.field public static final STUDY_KEY_NAVI:I = 0x6

.field public static final STUDY_KEY_NEXT:I = 0x4

.field public static final STUDY_KEY_NEXT_HANGUP:I = 0x19

.field public static final STUDY_KEY_PLAYPAUSE:I = 0xf

.field public static final STUDY_KEY_POWER:I = 0x0

.field public static final STUDY_KEY_PRE:I = 0x3

.field public static final STUDY_KEY_PRE_ACCEPT:I = 0x18

.field public static final STUDY_KEY_RADIO:I = 0x8

.field public static final STUDY_KEY_SIRI:I = 0x21

.field public static final STUDY_KEY_SPEECH:I = 0x11

.field public static final STUDY_KEY_TV:I = 0xe

.field public static final STUDY_KEY_VIDEO:I = 0x14

.field public static final STUDY_KEY_VOL_ADD:I = 0x1

.field public static final STUDY_KEY_VOL_DEC:I = 0x2

.field public static misFxpStudy:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "ArmFxpUtils"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized correctCarControlConfig(I)I
    .locals 10

    const-class v0, Lcom/nwd/setting/service/ArmFxpUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "correctCarControlConfig="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    sget-boolean v2, Lcom/nwd/setting/service/ArmFxpUtils;->misFxpStudy:Z

    const/16 v3, 0x1000

    if-eqz v2, :cond_0

    if-ne p0, v3, :cond_0

    sget-object p0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "is fxp study start so return"

    invoke-virtual {p0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return v1

    :cond_0
    :try_start_2
    sget-boolean v2, Lcom/nwd/setting/service/ArmFxpUtils;->misFxpStudy:Z

    const/16 v4, 0x1002

    if-nez v2, :cond_1

    if-ne p0, v4, :cond_1

    sget-object p0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "is fxp study end so return"

    invoke-virtual {p0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return v1

    :cond_1
    :try_start_3
    const-class v2, Lcom/nwd/app/NwdDeviceConfig;

    const-string v5, "correctCarControlConfig"

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v1

    new-array v8, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v2, v5, v7, v8}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    move-object v5, v2

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v5, :cond_3

    if-ne p0, v3, :cond_2

    :try_start_4
    sput-boolean v6, Lcom/nwd/setting/service/ArmFxpUtils;->misFxpStudy:Z

    goto :goto_0

    :catch_0
    move-exception p0

    move v1, v5

    goto :goto_1

    :cond_2
    if-ne p0, v4, :cond_3

    sput-boolean v1, Lcom/nwd/setting/service/ArmFxpUtils;->misFxpStudy:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :goto_0
    move v1, v5

    :cond_4
    :try_start_5
    sget-object p0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "iret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception p0

    :goto_1
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static exportCarControlConfig(Ljava/lang/String;)I
    .locals 6

    sget-object v0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exportCarControlConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/nwd/app/NwdDeviceConfig;

    const-string v2, "exportCarControlConfig"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {v1, v2, v4, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    sget-object v1, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static getCurrentCarControlConfig()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "getCurrentCarControlConfig"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v0, ""

    :try_start_0
    const-class v2, Lcom/nwd/app/NwdDeviceConfig;

    const/4 v3, 0x0

    invoke-static {v2, v1, v3, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    move-object v0, v2

    :cond_0
    sget-object v2, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static importCarControlConfig(Ljava/lang/String;)I
    .locals 6

    sget-object v0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "importCarControlConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/nwd/app/NwdDeviceConfig;

    const-string v2, "importCarControlConfig"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-static {v1, v2, v4, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object v1, p0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :cond_0
    sget-object v1, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public static isAlreadyStudied(Ljava/lang/String;I)Z
    .locals 5

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "%x"

    invoke-static {v1, p1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    aget-object v3, p0, v1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    sget-object p0, Lcom/nwd/setting/service/ArmFxpUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAlreadyStudied="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v2
.end method

.method public static isFxpStudy()Z
    .locals 1

    sget-boolean v0, Lcom/nwd/setting/service/ArmFxpUtils;->misFxpStudy:Z

    return v0
.end method
