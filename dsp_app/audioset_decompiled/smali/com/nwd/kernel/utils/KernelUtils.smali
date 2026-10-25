.class public Lcom/nwd/kernel/utils/KernelUtils;
.super Ljava/lang/Object;


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "KernelUtils"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final appStart(Landroid/content/Context;I)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/nwd/kernel/utils/KernelUtils;->appStart(Landroid/content/Context;III)V

    return-void
.end method

.method public static final appStart(Landroid/content/Context;III)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_APP_IN_OUT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_app_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_app_operation"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_app_event"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getLauncherPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    iget-object v1, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static final getMcuCoordinate(II)I
    .locals 1

    const v0, 0xffff

    mul-int p0, p0, v0

    div-int/2addr p0, p1

    return p0
.end method

.method public static getMcuType()I
    .locals 4

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v2, "getMcuType"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ltz v0, :cond_2

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :catch_0
    :cond_2
    :goto_1
    return v1
.end method

.method public static final hideSystemUI(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "hideSystemUI"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_hide_statis_bar"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "system_ui_visibility"

    invoke-static {p0, v0, p1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static final home(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final isBackCarOn(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "mcu_backcar_state"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final isBackLightSwitchOn(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "mcu_back_light_state"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public static final isHandBreakOff(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "mcu_hand_break"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHave3gVolume(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_volume"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x20

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHave4gVolume(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_volume"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x200

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHaveBtVolume(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_volume"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHaveCanBtVolume(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_volume"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x40

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHaveCanOnStarVolume(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_volume"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/16 v0, 0x80

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final isHaveSdcard(Landroid/content/ContentResolver;)Z
    .locals 1

    const-string v0, "arm_device_state"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNwdJsonInterface()Z
    .locals 2

    const-string v0, "persist.sys.nwd.json.interface"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static final notifySystemValueChange(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SYSTEM_VALUE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_value"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final requestACK(Lcom/nwd/kernel/aidl/IKernelFeature;BB)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Lcom/nwd/kernel/source/protocal/PublicProtocalUtil;->generateACK(BB)[B

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    invoke-interface {p0, p1}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final requestARMVolumeState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V
    .locals 0

    :try_start_0
    invoke-static {p1}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->generateARMVolumeState(I)[B

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final requestBack2AndroidSource(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/nwd/kernel/utils/KernelUtils;->requestPopSource(Landroid/content/Context;B)V

    return-void
.end method

.method public static final requestBack2CurrentSource(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_REQUEST_GOTO_CURRENT_SOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final requestBack2LastAppAndChangeSource(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/nwd/kernel/utils/KernelUtils;->requestPopSource(Landroid/content/Context;B)V

    return-void
.end method

.method public static final requestBee(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "arm_bee_switch"

    invoke-static {v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_BEEP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static final requestChangeSourceDirect(Landroid/content/Context;B)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_REQUEST_CHANGE_SOURCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_source_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;B)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final requestPopSource(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/nwd/kernel/utils/KernelUtils;->requestPopSource(Landroid/content/Context;B)V

    return-void
.end method

.method private static final requestPopSource(Landroid/content/Context;B)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    new-instance p1, Landroid/content/Intent;

    const-string v1, "com.nwd.action.EMU_RECEIVER_MCU_PROTOCAL"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "protocal"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final requestSetBackLightSwitch(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_BACKLIGHT_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_backlight_switch"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final requestSetMute(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_MUTE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_mute"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final requestTouchCoordinate(Lcom/nwd/kernel/aidl/IKernelFeature;BII)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;->generateTouchCoordinate(BII)[B

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V

    invoke-static {}, Lcom/nwd/kernel/utils/KernelUtils;->getMcuType()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    if-ne p1, v0, :cond_0

    invoke-static {p2, p3}, Lcom/nwd/kernel/utils/KernelUtils;->set360TouchCoordinate(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static set360TouchCoordinate(II)V
    .locals 5

    const-string v0, " ,y = "

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    :try_start_0
    sget-object v1, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Origin Coordinate,x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    mul-int/lit16 p0, p0, 0xff

    const v1, 0xffff

    div-int/2addr p0, v1

    mul-int/lit16 p1, p1, 0xff

    div-int/2addr p1, v1

    sget-object v1, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Conversion ,x = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x10

    or-int/lit16 p0, p0, 0x66bb

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    const-class p1, Landroid/os/Hardware;

    const-string v0, "set360TouchCoordinate"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-static {p1, v0, v2, v1}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static final set3gVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static final set4gVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method private static final setArmVolumeState(Landroid/content/Context;II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.ACTION_SET_ARM_VOLUME_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_volume_type"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_volume_state"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setArmVolumeType(Landroid/content/ContentResolver;II)V
    .locals 3

    const-string v0, "nwd_arm_volume_type"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    or-int/2addr p1, v1

    goto :goto_0

    :cond_0
    xor-int/lit8 p1, p1, -0x1

    and-int/2addr p1, v1

    :goto_0
    invoke-static {p0, v0, p1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setBtVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static final setCanBtVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x6

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static final setCanOnStarVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x7

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static final setCloudRecordVolume(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static final declared-synchronized setCvbsOutState(Landroid/content/Context;II)V
    .locals 3

    const-class v0, Lcom/nwd/kernel/utils/KernelUtils;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nwd.ACTION_SET_CVBS_STATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_cvbs_type"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "extra_cvbsout_state"

    invoke-virtual {v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static final setMcuCanTranslateVideo(Landroid/content/Context;Z)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_MCU_CAN_TRANSLATE_VIDEO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_can_translate_video"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static final setNaviVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static setNwdScriptCmd(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "sys.nwd.cmd.start"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    :try_start_0
    sget-object v2, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v2, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileWriter;

    const-string v3, "/cache/nwdcommand.cmd"

    invoke-direct {v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string v2, "chmod 777 /cache/nwdcommand.cmd"

    invoke-virtual {p1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    const-string p1, "true"

    invoke-static {p0, v0, p1}, Lcom/nwd/kernel/utils/KernelUtils;->setSystemProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public static final setRadioType(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",canRadioPackageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",canRadioClassName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "radio_type"

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "can_radio_package_name"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    :cond_0
    :try_start_1
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "can_radio_class_name"

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    invoke-virtual {v0, p0, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance p0, Ljava/io/FileOutputStream;

    sget-object p1, Lcom/nwd/kernel/utils/InternalConstant;->CAN_CONFIG:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    new-instance p0, Ljava/io/File;

    sget-object p1, Lcom/nwd/kernel/utils/InternalConstant;->CAN_CONFIG:Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/File;

    const-string p2, "/cache/can.txt"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string p1, "sync"

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final setRdsVolume(Landroid/content/Context;I)V
    .locals 1

    const/16 v0, 0x8

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static setSystemProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "nwd_system_prop"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_prop_value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object p0, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSystemProp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static final setTtsVolumeState(Landroid/content/Context;I)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p0, p1, v0}, Lcom/nwd/kernel/utils/KernelUtils;->setArmVolumeState(Landroid/content/Context;II)V

    return-void
.end method

.method public static final showSystemUI(Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    sget-object v0, Lcom/nwd/kernel/utils/KernelUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "showSystemUI"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "action_display_statis_bar"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "system_ui_visibility"

    invoke-static {p0, v0, p1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method
