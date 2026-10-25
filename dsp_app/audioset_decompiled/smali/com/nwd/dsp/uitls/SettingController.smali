.class public Lcom/nwd/dsp/uitls/SettingController;
.super Lcom/android/utils/utils/AbsServiceControllerHelper;
.source "SettingController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/utils/utils/AbsServiceControllerHelper<",
        "Lcom/nwd/setting/service/SettingFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static instance:Lcom/nwd/dsp/uitls/SettingController;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/android/utils/utils/AbsServiceControllerHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;
    .locals 1

    .line 26
    sget-object v0, Lcom/nwd/dsp/uitls/SettingController;->instance:Lcom/nwd/dsp/uitls/SettingController;

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Lcom/nwd/dsp/uitls/SettingController;

    invoke-direct {v0, p0}, Lcom/nwd/dsp/uitls/SettingController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nwd/dsp/uitls/SettingController;->instance:Lcom/nwd/dsp/uitls/SettingController;

    .line 29
    :cond_0
    sget-object p0, Lcom/nwd/dsp/uitls/SettingController;->instance:Lcom/nwd/dsp/uitls/SettingController;

    return-object p0
.end method


# virtual methods
.method protected doRelease()V
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/SettingController;->disconnectService()V

    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/nwd/dsp/uitls/SettingController;->instance:Lcom/nwd/dsp/uitls/SettingController;

    return-void
.end method

.method protected doServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "YCH"

    const-string v0, "SettingController\u4e2d\u670d\u52a1\u8fde\u63a5\u6210\u529f"

    .line 47
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p2}, Lcom/nwd/setting/service/SettingFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nwd/setting/service/SettingFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/dsp/uitls/SettingController;->mFeature:Ljava/lang/Object;

    return-void
.end method

.method protected doServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "YCH"

    const-string v0, "SettingController\u4e2d\u670d\u52a1\u65ad\u5f00\u8fde\u63a5"

    .line 41
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected getServiceIntent()Landroid/content/Intent;
    .locals 3

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.nwd.setting.service"

    const-string v2, "com.nwd.setting.service.SettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
