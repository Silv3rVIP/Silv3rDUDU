.class public Lcom/nwd/audioset/broadcast/StartReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StartReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "StartReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p2, "StartReceiver"

    const-string v0, "\u6536\u5230\u5f00\u673a\u5e7f\u64ad,\u53bb\u542f\u52a8Dsp\u670d\u52a1"

    .line 19
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    const-class v0, Lcom/nwd/dsp/uitls/DspServices;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ServiceUtils;->isServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "\u5e7f\u64ad\u4e2d,\u670d\u52a1\u6ca1\u542f\u52a8,\u53bb\u542f\u52a8"

    aput-object v2, v0, v1

    .line 21
    invoke-static {p2, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 22
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcom/nwd/dsp/uitls/DspServices;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    return-void
.end method
