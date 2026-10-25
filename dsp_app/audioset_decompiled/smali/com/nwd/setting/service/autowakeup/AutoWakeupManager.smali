.class public Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;
.super Ljava/lang/Object;


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "AutoWakeupManager"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-virtual {p0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final isAutoWakeupEnable()Z
    .locals 2

    const-string v0, "persist.nwd.autowakeup"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static final isHaveAutoWakeupFeature(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mcu_auto_wakeup_default"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public init()V
    .locals 2

    iget-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->isHaveAutoWakeupFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "have auto wakeup feature"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->isAutoWakeupEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->setAutoWakeupEnable(Z)V

    :cond_1
    return-void
.end method

.method public onGetAutoWakeupState(I)V
    .locals 3

    iget-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->isHaveAutoWakeupFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    const-string v2, "persist.nwd.autowakeup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const-string p1, "enable"

    goto :goto_0

    :cond_0
    const-string p1, "disable"

    :goto_0
    const-string v1, "extra_prop_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager$1;

    invoke-direct {v0, p0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager$1;-><init>(Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-void
.end method

.method public setAutoWakeupEnable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/setting/service/SettingManager;->isArmCtrlIc(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->onGetAutoWakeupState(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {v0, p1}, Lcom/nwd/setting/service/protocal/PublicProtocalUtil;->requestSetAutoWakeup(Lcom/nwd/kernel/aidl/IKernelFeature;Z)V

    :goto_1
    return-void
.end method
