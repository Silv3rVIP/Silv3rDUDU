.class public Lcom/nwd/dsp/uitls/DspServices;
.super Landroid/app/Service;
.source "DspServices.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-DspServices-ych"


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/nwd/dsp/uitls/DspServices;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/dsp/uitls/DspServices;)Landroid/os/Handler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/nwd/dsp/uitls/DspServices;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static start(Landroid/content/Context;)V
    .locals 6

    .line 26
    const-class v0, Lcom/nwd/dsp/uitls/DspServices;

    const-string v1, "dsp3-DspServices-ych"

    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    invoke-static {v0}, Lcom/blankj/utilcode/util/ServiceUtils;->isServiceRunning(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "DspServices \u670d\u52a1\u6ca1\u542f\u52a8,\u53bb\u542f\u52a8"

    aput-object v5, v4, v2

    .line 28
    invoke-static {v1, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 30
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 31
    invoke-virtual {p0, v4}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    new-array p0, v3, [Ljava/lang/Object;

    const-string v0, "DspServices isRuning"

    aput-object v0, p0, v2

    .line 33
    invoke-static {v1, p0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    new-array v0, v3, [Ljava/lang/Object;

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "starting DspServices error:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v2

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 6

    .line 42
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DspServices\u670d\u52a1\u7684onCreate() AUDIOTYPE="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/nwd/dsp/uitls/DspConstant;->AUDIOTYPE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dsp version:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/AppUtils;->getAppVersionCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspServices-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    sget v1, Lcom/nwd/dsp/uitls/DspConstant;->AUDIOTYPE:I

    const/16 v4, 0xff

    if-ne v1, v4, :cond_0

    const-string v1, "\u53bb\u8fde\u63a5\u8bbe\u7f6e\u670d\u52a1,"

    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    new-instance v4, Lcom/nwd/dsp/uitls/DspServices$1;

    invoke-direct {v4, p0}, Lcom/nwd/dsp/uitls/DspServices$1;-><init>(Lcom/nwd/dsp/uitls/DspServices;)V

    invoke-virtual {v1, v4}, Lcom/nwd/dsp/uitls/SettingController;->connectService(Lcom/android/utils/utils/AbsServiceControllerHelper$OnServiceConnectSuccessListener;)V

    .line 66
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v1

    const-string v4, "first_boot"

    invoke-virtual {v1, v4, v0}, Lcom/blankj/utilcode/util/SPUtils;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u662f\u7b2c\u4e00\u6b21\u5f00\u673a: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    const-string v0, "\u7b2c\u4e00\u6b21\u5f00\u673a,\u53bb\u628a\u81ea\u5b9a\u4e49\u4e00,\u53d8\u6210\u9ed8\u8ba4\u503c"

    .line 69
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-static {}, Lcom/blankj/utilcode/util/SPUtils;->getInstance()Lcom/blankj/utilcode/util/SPUtils;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/blankj/utilcode/util/SPUtils;->put(Ljava/lang/String;Z)V

    .line 71
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->resetSystem()V

    .line 77
    :cond_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->sendInitData()V

    goto :goto_0

    .line 81
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->set10EQDate()V

    .line 87
    :goto_0
    invoke-static {p0}, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->registerAppChangeReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 106
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "DspServices\u670d\u52a1\u7684ononDestroy()"

    aput-object v2, v0, v1

    const-string v1, "dsp3-DspServices-ych"

    .line 107
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-static {p0}, Lcom/nwd/dsp/uitls/AccStatusBroadcast;->unregisterAppChangeReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    const/4 p1, 0x1

    new-array p2, p1, [Ljava/lang/Object;

    .line 100
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DspServices\u670d\u52a1\u7684onStartCommand() versionName:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/blankj/utilcode/util/MyAppUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Build.DISPLAY="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "dsp3-DspServices-ych"

    invoke-static {p3, p2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method
