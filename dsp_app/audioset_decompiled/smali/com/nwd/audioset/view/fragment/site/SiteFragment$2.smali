.class Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;
.super Ljava/lang/Object;
.source "SiteFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateDSPAudio(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/site/SiteFragment;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/site/SiteFragment;I)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;->this$0:Lcom/nwd/audioset/view/fragment/site/SiteFragment;

    iput p2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    const-string v0, "dsp3-SiteFragment"

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDSPAudio setDspAudio eq_64hz value111="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;->val$value:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Instance="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/setting/service/SettingFeature;

    const/16 v1, 0xc

    iget v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;->val$value:I

    int-to-byte v2, v2

    invoke-interface {v0, v1, v2}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
