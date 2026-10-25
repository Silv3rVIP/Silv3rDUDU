.class final Lcom/nwd/dsp/uitls/AudioProtocalUtil$1;
.super Ljava/lang/Object;
.source "AudioProtocalUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/dsp/uitls/AudioProtocalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "dsp3-AudioProtocalUtil"

    const/4 v1, 0x0

    .line 334
    :try_start_0
    sput-boolean v1, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    .line 336
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/setting/service/SettingFeature;

    const/16 v3, 0xb

    sget-object v4, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    aget v1, v4, v1

    int-to-byte v1, v1

    invoke-interface {v2, v3, v1}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 337
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0xc

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 338
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0xd

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 339
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0xe

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v5, 0x3

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 340
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0xf

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v5, 0x4

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 341
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0x10

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v5, 0x5

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 342
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0x11

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v5, 0x6

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 343
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0x12

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/4 v5, 0x7

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 344
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0x13

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/16 v5, 0x8

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 345
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v2, 0x14

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    const/16 v5, 0x9

    aget v3, v3, v5

    int-to-byte v3, v3

    invoke-interface {v1, v2, v3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u53d1\u900110\u6bb5Eq\u6570\u636e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/dsp/uitls/DspConstant;->Gain10_TWO32:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    sput-boolean v4, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "\u504732\u6bb5\u53d1\u900110\u6bb5MCU\u6570\u636e\u62a5\u9519 "

    .line 351
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
