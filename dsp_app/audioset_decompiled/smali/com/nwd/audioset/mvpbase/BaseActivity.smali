.class public abstract Lcom/nwd/audioset/mvpbase/BaseActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nwd/audioset/mvpbase/BasePresenter;",
        ">",
        "Landroidx/fragment/app/FragmentActivity;"
    }
.end annotation


# instance fields
.field public mPrenseter:Lcom/nwd/audioset/mvpbase/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private initThis()V
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getmPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/mvpbase/BaseActivity;->mPrenseter:Lcom/nwd/audioset/mvpbase/BasePresenter;

    .line 55
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->setViewBinding()V

    .line 56
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->initView()V

    .line 57
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->setListener()V

    .line 58
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->initData()V

    return-void
.end method


# virtual methods
.method public abstract getLayountView()Landroid/view/ViewGroup;
.end method

.method public abstract getmPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract initData()V
.end method

.method public abstract initView()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "BaseActivity"

    .line 21
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    :try_start_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt p1, v1, :cond_3

    .line 24
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 25
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 26
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 27
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: heightPx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", widthPx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", densityDpi = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xf0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v3, v4, :cond_0

    .line 31
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v7, 0x960

    if-eq v4, v7, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v7, 0x380

    if-eq v4, v7, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v7, 0x384

    if-eq v4, v7, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 34
    :goto_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v7

    iget v7, v7, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v8, 0x5a0

    if-ne v7, v8, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v7

    iget v7, v7, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v8, 0x2d0

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    const/16 v6, 0x78

    if-eq v3, v6, :cond_2

    if-nez v4, :cond_2

    if-eqz v5, :cond_3

    :cond_2
    const/16 v3, 0xa0

    .line 38
    iput v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 39
    iput v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 40
    iput v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 41
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 42
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: 120\u3001240\u5bc6\u5ea6\u4fee\u6539\u4e3a160 densityDpi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenHeightDp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", screenWidthDp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getLayountView()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseActivity;->setContentView(Landroid/view/View;)V

    .line 50
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->initThis()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 114
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 104
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 68
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 109
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStop()V

    return-void
.end method

.method public abstract setListener()V
.end method

.method public abstract setViewBinding()V
.end method
