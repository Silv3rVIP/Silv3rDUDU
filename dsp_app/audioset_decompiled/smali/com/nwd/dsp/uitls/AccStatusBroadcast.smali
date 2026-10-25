.class public Lcom/nwd/dsp/uitls/AccStatusBroadcast;
.super Landroid/content/BroadcastReceiver;
.source "AccStatusBroadcast.java"


# static fields
.field public static final ACTION_REINIT_DSP_DATA:Ljava/lang/String; = "com.nwd.action.ACTION_REINIT_DSP_DATA"

.field private static final TAG:Ljava/lang/String; = "dsp3-AccStatusBroadcast"

.field private static accStatusBroadcast:Lcom/nwd/dsp/uitls/AccStatusBroadcast;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mMcuState:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput-byte v0, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mMcuState:B

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private dspInit()V
    .locals 4

    .line 54
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "dsp3-AccStatusBroadcast"

    if-nez v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "dsp\u53bb\u521d\u59cb\u5316 sendInitData"

    aput-object v2, v0, v1

    .line 55
    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->sendInitData()V

    goto :goto_0

    :cond_0
    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "dsp\u53bb\u521d\u59cb\u5316 set10EQDate"

    aput-object v2, v0, v1

    .line 58
    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    iget-object v0, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/nwd/dsp/uitls/AccStatusBroadcast$1;

    invoke-direct {v1, p0}, Lcom/nwd/dsp/uitls/AccStatusBroadcast$1;-><init>(Lcom/nwd/dsp/uitls/AccStatusBroadcast;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private mcuAction(Landroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x1

    const-string v1, "extra_mcu_state"

    .line 38
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getByteExtra(Ljava/lang/String;B)B

    move-result p1

    new-array v1, v0, [Ljava/lang/Object;

    .line 39
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u5230mcu\u7684\u5e7f\u64ad \u539fmMcuState\u503c\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v3, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mMcuState:B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u65b0\u6536\u5230Mcu\u72b6\u6001\u503c\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-AccStatusBroadcast"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    iget-byte v1, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mMcuState:B

    if-eq v1, p1, :cond_1

    if-nez v1, :cond_0

    if-ne p1, v0, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "acc\u4f11\u7720\u8d77\u6765\u53bb\u521d\u59cb\u5316: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    invoke-direct {p0}, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->dspInit()V

    .line 49
    :cond_0
    iput-byte p1, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mMcuState:B

    :cond_1
    return-void
.end method

.method public static registerAppChangeReceiver(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u6ce8\u518cacc\u72b6\u6001\u5e7f\u64ad"

    aput-object v2, v0, v1

    const-string v1, "dsp3-AccStatusBroadcast"

    .line 72
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    sget-object v0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->accStatusBroadcast:Lcom/nwd/dsp/uitls/AccStatusBroadcast;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;

    invoke-direct {v0}, Lcom/nwd/dsp/uitls/AccStatusBroadcast;-><init>()V

    sput-object v0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->accStatusBroadcast:Lcom/nwd/dsp/uitls/AccStatusBroadcast;

    .line 76
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.nwd.action.ACTION_REINIT_DSP_DATA"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    sget-object v1, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->accStatusBroadcast:Lcom/nwd/dsp/uitls/AccStatusBroadcast;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static unregisterAppChangeReceiver(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u53d6\u6d88acc\u72b6\u6001\u5e7f\u64ad"

    aput-object v2, v0, v1

    const-string v1, "dsp3-AccStatusBroadcast"

    .line 84
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->accStatusBroadcast:Lcom/nwd/dsp/uitls/AccStatusBroadcast;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 89
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6536\u5230\u5e7f\u64ad\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-AccStatusBroadcast"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v4, -0x1bf0f2ed

    if-eq v1, v4, :cond_1

    const v4, 0x1b950d4f

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.nwd.action.ACTION_MCU_STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "com.nwd.action.ACTION_REINIT_DSP_DATA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v0, :cond_3

    goto :goto_2

    :cond_3
    new-array p1, v0, [Ljava/lang/Object;

    const-string p2, "\u91cd\u65b0\u521d\u59cb\u5316DSP\u6570\u636e\u7684\u5e7f\u64ad"

    aput-object p2, p1, v3

    .line 30
    invoke-static {v2, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-direct {p0}, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->dspInit()V

    goto :goto_2

    .line 27
    :cond_4
    invoke-direct {p0, p2}, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->mcuAction(Landroid/content/Intent;)V

    :goto_2
    return-void
.end method
