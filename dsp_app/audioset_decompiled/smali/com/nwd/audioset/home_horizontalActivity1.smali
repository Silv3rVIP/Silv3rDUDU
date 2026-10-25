.class public Lcom/nwd/audioset/home_horizontalActivity1;
.super Lcom/nwd/audioset/mvpbase/BaseActivity;
.source "home_horizontalActivity1.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseActivity<",
        "Lcom/nwd/audioset/view/activity/MainActivityP;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-home_horizontalActivity"


# instance fields
.field private bassFragment:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

.field private begin:J

.field private binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

.field private dtsFragment:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

.field private fm:Landroidx/fragment/app/FragmentManager;

.field private force32Eq:I

.field private fragmentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private isShowStart:Z

.field private isSupportDts:Z

.field private kingFragment:Lcom/nwd/audioset/view/fragment/king/KingFragment;

.field private mAdapter:Lcom/nwd/audioset/adapter/MainViewAdapter;

.field private mLanguageReceiver:Landroid/content/BroadcastReceiver;

.field private mLy:Landroid/widget/LinearLayout;

.field private mainFragment:Landroidx/fragment/app/Fragment;

.field private main_btn_bass:Landroid/widget/Button;

.field private main_btn_dts:Landroid/widget/Button;

.field private main_btn_eq:Landroid/widget/Button;

.field private main_btn_king:Landroid/widget/Button;

.field private main_btn_site:Landroid/widget/Button;

.field private main_btn_track:Landroid/widget/Button;

.field private rootRL:Landroid/widget/RelativeLayout;

.field private siteFragment:Lcom/nwd/audioset/view/fragment/site/SiteFragment;

.field private trackFragment:Lcom/nwd/audioset/view/fragment/track/TrackFragment;

.field private view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;-><init>()V

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 89
    iput v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->force32Eq:I

    .line 90
    iput-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    .line 91
    iput-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isShowStart:Z

    .line 504
    new-instance v0, Lcom/nwd/audioset/home_horizontalActivity1$4;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/home_horizontalActivity1$4;-><init>(Lcom/nwd/audioset/home_horizontalActivity1;)V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mLanguageReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/home_horizontalActivity1;I)I
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/nwd/audioset/home_horizontalActivity1;)Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/home_horizontalActivity1;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    return-void
.end method

.method private getViewPagerIndex(I)I
    .locals 1

    .line 408
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    if-eqz v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method private intitFragment()V
    .locals 6

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dts Support = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-home_horizontalActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->dtsFragment:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    .line 331
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_dts:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_dts:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 341
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->force32Eq:I

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mainFragment:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 344
    :cond_1
    new-instance v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mainFragment:Landroidx/fragment/app/Fragment;

    .line 346
    :goto_1
    new-instance v0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->siteFragment:Lcom/nwd/audioset/view/fragment/site/SiteFragment;

    .line 347
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mainFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->siteFragment:Lcom/nwd/audioset/view/fragment/site/SiteFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-nez v0, :cond_2

    .line 352
    new-instance v0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->trackFragment:Lcom/nwd/audioset/view/fragment/track/TrackFragment;

    .line 353
    new-instance v0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->bassFragment:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    .line 354
    new-instance v0, Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->kingFragment:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    .line 356
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->trackFragment:Lcom/nwd/audioset/view/fragment/track/TrackFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->bassFragment:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->kingFragment:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    :cond_2
    new-instance v0, Lcom/nwd/audioset/adapter/MainViewAdapter;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fm:Landroidx/fragment/app/FragmentManager;

    invoke-direct {v0, v2}, Lcom/nwd/audioset/adapter/MainViewAdapter;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mAdapter:Lcom/nwd/audioset/adapter/MainViewAdapter;

    .line 363
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fragmentList:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Lcom/nwd/audioset/adapter/MainViewAdapter;->addFragment(Ljava/util/ArrayList;)V

    .line 364
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mAdapter:Lcom/nwd/audioset/adapter/MainViewAdapter;

    invoke-virtual {v0, v2}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 365
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    goto :cond_3

    .line 376
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    new-instance v2, Lcom/nwd/audioset/home_horizontalActivity1$2;

    invoke-direct {v2, p0}, Lcom/nwd/audioset/home_horizontalActivity1$2;-><init>(Lcom/nwd/audioset/home_horizontalActivity1;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->post(Ljava/lang/Runnable;)Z

    .line 386
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u9996\u9875\u521d\u59cb\u5316\u8017\u65f6: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->begin:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Lcom/nwd/audioset/home_horizontalActivity1$3;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/home_horizontalActivity1$3;-><init>(Lcom/nwd/audioset/home_horizontalActivity1;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/Utils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private resetConfiguration()V
    .locals 9

    const-string v0, "dsp3-home_horizontalActivity"

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 543
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/audioset/application/DspApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 544
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 545
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetConfiguration app configuration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetConfiguration activity configuration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "sys.nwd.instrument.panelheight"

    .line 548
    invoke-static {v5}, Lcom/nwd/audioset/utils/BaseUtils;->getpropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 549
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v5, "key_instrument_height"

    .line 550
    invoke-static {v5}, Lcom/nwd/audioset/utils/BaseUtils;->getWindowFeatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 552
    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 553
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-lez v6, :cond_4

    .line 555
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0701fd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 556
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resetConfiguration res res_instrument_height="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 561
    :cond_1
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 562
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 563
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 564
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 565
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetConfiguration app widthPixels="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", heightPixels="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v6, 0x7d0

    if-eq v4, v6, :cond_2

    const/16 v6, 0x780

    if-ne v4, v6, :cond_3

    :cond_2
    const/16 v4, 0x4b0

    :cond_3
    :goto_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 586
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetConfiguration instrumentHeight="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", flagReset="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-array v1, v1, [Ljava/lang/Object;

    .line 590
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resetConfiguration errror="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 591
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method private updateButtonBgUi(Ljava/lang/String;)V
    .locals 8

    const-string v0, "com.nwd.audioset.view.fragment.king.KingFragment"

    const-string v1, "com.nwd.audioset.view.fragment.site.BassFragment"

    const-string v2, "com.nwd.audioset.view.fragment.site.TrackFragment"

    const-string v3, "com.nwd.audioset.view.fragment.site.SiteFragment"

    const-string v4, "com.nwd.audioset.view.fragment.draw.MainFragment"

    const-string v5, "com.nwd.audioset.view.fragment.dts.DtsFragment"

    .line 462
    :try_start_0
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_dts:Landroid/widget/Button;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 463
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 464
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_site:Landroid/widget/Button;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 465
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_track:Landroid/widget/Button;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 466
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_bass:Landroid/widget/Button;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 467
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_king:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setSelected(Z)V

    .line 469
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget-boolean v6, v6, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-eqz v6, :cond_0

    .line 470
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnDts1:Landroid/widget/LinearLayout;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 471
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnEq1:Landroid/widget/LinearLayout;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 472
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnSite1:Landroid/widget/LinearLayout;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 473
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnTrack1:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 474
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnBass1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 475
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnKing1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 476
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget-boolean v6, v6, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget-boolean v6, v6, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v6, :cond_0

    .line 477
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvDts1:Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 478
    iget-object v5, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v5, v5, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvEq1:Landroid/widget/TextView;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 479
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvSite1:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 480
    iget-object v3, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvTrack1:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 481
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvBass1:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 482
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvKing1:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 483
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvDts1:Landroid/widget/TextView;

    const v0, 0x7f0800b0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 484
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvEq1:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 485
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvSite1:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 486
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvTrack1:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 487
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvBass1:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 488
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->tvKing1:Landroid/widget/TextView;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 492
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateDspUi()V
    .locals 7

    .line 600
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 601
    invoke-static {p0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 604
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_fragment_bg:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawablePort(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_1

    .line 607
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_fragment_bg:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->rootRL:Landroid/widget/RelativeLayout;

    invoke-static {v0, v2, v2}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 611
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_eq_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 612
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_eq_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 613
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 615
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_site_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 616
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_site_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 617
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_site:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 619
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_track_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 620
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_track_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 621
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_track:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_bass_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 624
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_bass_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 625
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_bass:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_king_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 628
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_king_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 629
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_king:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 631
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_dts_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 632
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_btn_dts_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 633
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_dts:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 635
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-eqz v0, :cond_6

    .line 636
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_btn_d:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 637
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_btn_n:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 638
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnDts1:Landroid/widget/LinearLayout;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnEq1:Landroid/widget/LinearLayout;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnSite1:Landroid/widget/LinearLayout;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 641
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnTrack1:Landroid/widget/LinearLayout;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 642
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnBass1:Landroid/widget/LinearLayout;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 643
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnKing1:Landroid/widget/LinearLayout;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 644
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_eq_n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->ivDts1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 647
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->ivEq1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 649
    :cond_2
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_sound_n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 651
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->ivSite1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 653
    :cond_3
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_channel_n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 655
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->ivTrack1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 657
    :cond_4
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_output_n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 659
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->ivBass1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 661
    :cond_5
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->menu_latency_n:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 663
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/ActivityMainBinding;->ivKing1:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_6
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isShowStart:Z

    if-eqz v0, :cond_8

    .line 668
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_open:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 669
    iget-object v2, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_close:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 670
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv:Landroid/widget/ImageView;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 671
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_bg:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 672
    iget-object v5, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v5, v5, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v5, v5, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-static {v5, v4, v4}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 673
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_dts_d:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 674
    iget-object v5, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_dts_n:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 675
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDts:Landroid/widget/LinearLayout;

    invoke-static {v6, v5, v4}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 676
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_md_n:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 677
    iget-object v5, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_md_d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 678
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStMd:Landroid/widget/LinearLayout;

    invoke-static {v6, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 679
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_yinchang_n:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 680
    iget-object v5, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_yinchang_d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 681
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStYinchang:Landroid/widget/LinearLayout;

    invoke-static {v6, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 682
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_yinxiao_n:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 683
    iget-object v5, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_yinxiao_d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 684
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStYinxiao:Landroid/widget/LinearLayout;

    invoke-static {v6, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 685
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_tiaoyin_n:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 686
    iget-object v5, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_tiaoyin_d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 687
    iget-object v6, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStTiaoyin:Landroid/widget/LinearLayout;

    invoke-static {v6, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 688
    iget-object v4, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_dsp_n:Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 689
    iget-object v5, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->st_dsp_d:Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 690
    iget-object v3, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDsp:Landroid/widget/LinearLayout;

    invoke-static {v3, v4, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 691
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v3, 0x960

    if-ne v1, v3, :cond_8

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x380

    if-eq v1, v3, :cond_7

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x384

    if-ne v1, v3, :cond_8

    .line 692
    :cond_7
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDtsSwitch:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 693
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStLeft1:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 694
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStRight1:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 695
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv1:Landroid/widget/ImageView;

    invoke-static {v1, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 696
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnLeft1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 697
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnRight1:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 701
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_0
    return-void
.end method

.method private updateUiWidth()V
    .locals 5

    .line 709
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "dsp3-home_horizontalActivity"

    .line 710
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUiWidth isLand="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", instrumentHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    iget v3, v3, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x500

    if-eqz v0, :cond_0

    .line 711
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v2, :cond_0

    .line 712
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    if-gt v2, v1, :cond_0

    .line 717
    iget-object v2, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mLy:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 718
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07025b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 721
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 722
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    if-eqz v0, :cond_1

    if-gt v2, v1, :cond_1

    const/16 v1, 0x1e0

    if-gt v3, v1, :cond_1

    .line 726
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mLy:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 727
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/16 v1, 0x1c4

    if-gt v3, v1, :cond_3

    .line 729
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 733
    :cond_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-eqz v1, :cond_2

    .line 734
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mLy:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 735
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07025d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 737
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v1, 0x300

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x400

    if-ne v0, v1, :cond_3

    .line 738
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 739
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 749
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 102
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/ActivityMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/ActivityMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    .line 103
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/ActivityMainBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 5

    .line 520
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 521
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 522
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 524
    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_1

    .line 525
    iput v4, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 526
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x19

    if-lt v3, v4, :cond_0

    .line 527
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/home_horizontalActivity1;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 529
    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    mul-float v3, v3, v1

    iput v3, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    goto :goto_0

    .line 531
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public bridge synthetic getmPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 61
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getmPrenseter()Lcom/nwd/audioset/view/activity/MainActivityP;

    move-result-object v0

    return-object v0
.end method

.method public getmPrenseter()Lcom/nwd/audioset/view/activity/MainActivityP;
    .locals 1

    .line 399
    new-instance v0, Lcom/nwd/audioset/view/activity/MainActivityP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/activity/MainActivityP;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initData()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->intitFragment()V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 114
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isSupportDts()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    .line 115
    invoke-static {p0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    invoke-static {p0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v1

    iget-object v1, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_fragment_bg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->isSupportNightMode(Ljava/lang/String;)Z

    .line 116
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/audioset/application/DspApplication;->isNightMode()Z

    .line 117
    invoke-direct {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->resetConfiguration()V

    .line 118
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/utils/utils/InternationalUtils;->loadResource()V

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->begin:J

    const v0, 0x7f09020e

    .line 121
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->rootRL:Landroid/widget/RelativeLayout;

    const v0, 0x7f0901f9

    .line 122
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mLy:Landroid/widget/LinearLayout;

    const v0, 0x7f090346

    .line 123
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    const/4 v1, 0x6

    .line 124
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setOffscreenPageLimit(I)V

    const v0, 0x7f0901ef

    .line 126
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    const v0, 0x7f0901f5

    .line 127
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_site:Landroid/widget/Button;

    const v0, 0x7f0901f7

    .line 128
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_track:Landroid/widget/Button;

    const v0, 0x7f0901eb

    .line 129
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_bass:Landroid/widget/Button;

    const v0, 0x7f0901f1

    .line 130
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_king:Landroid/widget/Button;

    const v0, 0x7f0901ed

    .line 131
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_dts:Landroid/widget/Button;

    .line 132
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->fm:Landroidx/fragment/app/FragmentManager;

    .line 135
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_FACTORYCONFIG_PATH:Ljava/lang/String;

    const-string v1, "eq_force_32_segment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadKeyValueFromSD(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->force32Eq:I

    const-string v0, "dsp3-home_horizontalActivity"

    new-array v1, v2, [Ljava/lang/Object;

    .line 136
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u82af\u7247\u7c7b\u578b: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/nwd/dsp/uitls/DspConstant;->AUDIOTYPE:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", force32Eq="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/audioset/home_horizontalActivity1;->force32Eq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    const/16 v1, 0x8

    goto :cond_1

    .line 139
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->mLy:Landroid/widget/LinearLayout;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setWeightSum(F)V

    .line 140
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_track:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_bass:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_king:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0059

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 144
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d005a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 145
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 148
    invoke-static {}, Lcom/nwd/audioset/constant/Constant;->isAspNoSound()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_site:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 151
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0061

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0d0062

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 155
    iget-object v4, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_site:Landroid/widget/Button;

    invoke-static {v4, v2, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 165
    :cond_1
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isShowStart()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isShowStart:Z

    .line 167
    invoke-direct {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->updateDspUi()V

    .line 168
    invoke-direct {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->updateUiWidth()V

    .line 170
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-eqz v0, :cond_2

    .line 171
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->llLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainLl:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isSupportDts:Z

    if-nez v0, :cond_2

    .line 174
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnDts1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 179
    :cond_2
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isShowStart:Z

    if-eqz v0, :cond_3

    .line 180
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 182
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDts:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStMd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStYinchang:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStYinxiao:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStTiaoyin:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDsp:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv1:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->setSwitchData()V

    goto :goto_1

    .line 192
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 288
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 290
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isShowStart:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 294
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_1
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onBackPressed()V

    .line 301
    :goto_0
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "N70"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 304
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "K2501"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 416
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    const v4, 0x7f0901ef

    if-eq v0, v4, :cond_c

    const v4, 0x7f0901f0

    if-eq v0, v4, :cond_c

    const v4, 0x7f0901d7

    if-ne v0, v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const v4, 0x7f0901f5

    if-eq v0, v4, :cond_b

    const v4, 0x7f0901f6

    if-eq v0, v4, :cond_b

    const v4, 0x7f0901da

    if-ne v0, v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const v4, 0x7f0901f7

    if-eq v0, v4, :cond_a

    const v4, 0x7f0901f8

    if-eq v0, v4, :cond_a

    const v4, 0x7f0901db

    if-ne v0, v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const v4, 0x7f0901eb

    if-eq v0, v4, :cond_9

    const v4, 0x7f0901ec

    if-eq v0, v4, :cond_9

    const v4, 0x7f0901d9

    if-ne v0, v4, :cond_3

    goto/16 :goto_2

    :cond_3
    const v4, 0x7f0901f1

    if-eq v0, v4, :cond_8

    const v4, 0x7f0901f2

    if-eq v0, v4, :cond_8

    const v4, 0x7f0901d3

    if-ne v0, v4, :cond_4

    goto :goto_1

    :cond_4
    const v4, 0x7f0901ed

    if-eq v0, v4, :cond_7

    const v4, 0x7f0901ee

    if-eq v0, v4, :cond_7

    const v4, 0x7f0901d4

    if-ne v0, v4, :cond_5

    goto :goto_0

    :cond_5
    const v2, 0x7f090102

    if-eq v0, v2, :cond_6

    const v2, 0x7f090103

    if-ne v0, v2, :cond_d

    .line 448
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 449
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsFunctionSwitch(I)V

    .line 450
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 451
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv1:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 452
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->dtsFragment:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    if-eqz p1, :cond_d

    .line 453
    invoke-virtual {p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->initData()V

    goto/16 :goto_6

    .line 443
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 444
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 445
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    invoke-direct {p0, v3}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    const-string p1, "com.nwd.audioset.view.fragment.dts.DtsFragment"

    .line 446
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 438
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 439
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 440
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    const-string p1, "com.nwd.audioset.view.fragment.king.KingFragment"

    .line 441
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 433
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 435
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    const-string p1, "com.nwd.audioset.view.fragment.site.BassFragment"

    .line 436
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_6

    .line 428
    :cond_a
    :goto_3
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 430
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    const-string p1, "com.nwd.audioset.view.fragment.site.TrackFragment"

    .line 431
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_6

    .line 423
    :cond_b
    :goto_4
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 424
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 425
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    const-string p1, "com.nwd.audioset.view.fragment.site.SiteFragment"

    .line 426
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_6

    .line 418
    :cond_c
    :goto_5
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 419
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object p1, p1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->rlMain:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->view_pager:Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    invoke-direct {p0, v1}, Lcom/nwd/audioset/home_horizontalActivity1;->getViewPagerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    const-string p1, "com.nwd.audioset.view.fragment.draw.MainFragment"

    .line 421
    invoke-direct {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateButtonBgUi(Ljava/lang/String;)V

    :cond_d
    :goto_6
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 498
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 499
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/audioset/application/DspApplication;->isNightMode()Z

    const-string p1, "dsp3-home_horizontalActivity"

    const-string v0, "\u914d\u7f6e\u6539\u53d8,\u53bb\u52a0\u8f7d\u8bed\u8a00"

    .line 500
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 95
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Home_HorizpntalActivity\u7684: onCreate()\u65b9\u6cd5, versionName:20260114.3.3.1.8, versionCode:20260114, Build.DISPLAY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "dsp3-home_horizontalActivity"

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->startDspService()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 269
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onDestroy()V

    const-string v0, "dsp3-home_horizontalActivity"

    const-string v1, "Home_HorizpntalActivity\u7684: onDestroy()\u65b9\u6cd5"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isInSettingActivity:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isLowRAMDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Home_HorizpntalActivity onDestroy() \u4f4e\u5185\u5b58\u8bbe\u5907\u540e\u53f0kill dsp \u91ca\u653e\u8d44\u6e90"

    .line 277
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 278
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 281
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 234
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onResume()V

    .line 235
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "Home_HorizpntalActivity\u7684: onResume()\u65b9\u6cd5"

    const-string v2, "dsp3-home_horizontalActivity"

    const/16 v3, 0x18

    if-lt v0, v3, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->isInMultiWindowMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 238
    :cond_0
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x20

    if-lt v0, v1, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fa

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->finish()V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 250
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onStop()V

    const-string v0, "dsp3-home_horizontalActivity"

    const-string v1, "Home_HorizpntalActivity\u7684: onStop()\u65b9\u6cd5"

    .line 251
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isInSettingActivity:Z

    if-nez v1, :cond_0

    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isLowRAMDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Home_HorizpntalActivity onStop() \u4f4e\u5185\u5b58\u8bbe\u5907\u540e\u53f0kill dsp \u91ca\u653e\u8d44\u6e90"

    .line 259
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 260
    invoke-static {v0}, Ljava/lang/System;->exit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_eq:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_site:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_track:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_bass:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_king:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->main_btn_dts:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnEq1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnSite1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnTrack1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnBass1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnKing1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivityMainBinding;->mainBtnDts1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setLocaleLanguageTest(Ljava/lang/String;)V
    .locals 2

    .line 759
    :try_start_0
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 760
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 762
    new-instance p1, Landroid/content/res/Configuration;

    invoke-direct {p1}, Landroid/content/res/Configuration;-><init>()V

    .line 763
    iput-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 764
    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nwd/audioset/home_horizontalActivity1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 767
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 768
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 769
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/home_horizontalActivity1;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 771
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setSwitchData()V
    .locals 2

    .line 793
    :try_start_0
    iget-boolean v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->isShowStart:Z

    if-eqz v0, :cond_0

    .line 794
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsFunctionSwitch()Z

    move-result v0

    .line 795
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 796
    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1;->binding:Lcom/nwd/audioset/databinding/ActivityMainBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ActivityMainBinding;->layoutStart:Lcom/nwd/audioset/databinding/ViewStartBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv1:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 799
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method

.method public startDspService()V
    .locals 4

    .line 202
    :try_start_0
    const-class v0, Lcom/nwd/dsp/uitls/DspServices;

    invoke-static {v0}, Lcom/blankj/utilcode/util/ServiceUtils;->isServiceRunning(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "dsp3-home_horizontalActivity"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "DspServices\u670d\u52a1\u6ca1\u542f\u52a8,\u53bb\u542f\u52a8"

    aput-object v3, v1, v2

    .line 203
    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/nwd/dsp/uitls/DspServices;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/home_horizontalActivity1;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateDoubleBass()V
    .locals 1

    .line 779
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->trackFragment:Lcom/nwd/audioset/view/fragment/track/TrackFragment;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateDoubleBass()V

    .line 782
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1;->bassFragment:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDoubleBass()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 785
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
