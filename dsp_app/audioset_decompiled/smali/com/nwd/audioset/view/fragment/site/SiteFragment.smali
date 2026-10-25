.class public Lcom/nwd/audioset/view/fragment/site/SiteFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "SiteFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/site/SiteP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final ADJUST_OFFSET:I = 0x3

.field private static final TAG:Ljava/lang/String; = "dsp3-SiteFragment"


# instance fields
.field private binding:Lcom/nwd/audioset/databinding/FragmentSiteBinding;

.field private binding1:Lcom/nwd/audioset/databinding/FragmentSite1Binding;

.field private bottom_move_btn:Landroid/widget/Button;

.field private center_mode_btn:Landroid/widget/Button;

.field private fb_view:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

.field private hou_mode_btn:Landroid/widget/Button;

.field public isG5Portrait:Z

.field private left_mode_btn:Landroid/widget/Button;

.field private left_move_btn:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mMaxEqValue:I

.field private reset_btn:Landroid/widget/Button;

.field private right_mode_btn:Landroid/widget/Button;

.field private right_move_btn:Landroid/widget/Button;

.field private seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

.field private seekbarShow:Z

.field private top_move_btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->isG5Portrait:Z

    .line 310
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/nwd/audioset/view/fragment/site/SiteFragment$3;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment$3;-><init>(Lcom/nwd/audioset/view/fragment/site/SiteFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/site/SiteFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateLeftUi()V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/site/SiteFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateRightUi()V

    return-void
.end method

.method public static newInstance()Lcom/nwd/audioset/view/fragment/site/SiteFragment;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "new SiteFragment()"

    aput-object v2, v0, v1

    const-string v1, "dsp3-SiteFragment"

    .line 57
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 58
    new-instance v0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;-><init>()V

    return-object v0
.end method

.method private updateDspUi()V
    .locals 8

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 323
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_zuojiashi_d:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 324
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_zuojiashi_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 325
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_mode_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_youjiashi_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 328
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_youjiashi_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 329
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_mode_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 331
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_houpai_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 332
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_houpai_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 333
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->hou_mode_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 335
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_zhongxin_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 336
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_zhongxin_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 337
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->center_mode_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_fuwei_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 340
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_btn_fuwei_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 341
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->reset_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 344
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 346
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_che:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 347
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 350
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->site_top_move:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 351
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090310

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 352
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->site_bottom_move:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 353
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f090096

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->site_left_move:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 356
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v7, 0x7f0901b1

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 358
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->site_right_move:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 359
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090243

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz v1, :cond_0

    .line 361
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 362
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07035d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 363
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070359

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 364
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 365
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 366
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 367
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 368
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 369
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 370
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 371
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 372
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 375
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateLeftUi()V
    .locals 7

    .line 229
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getMbalance()I

    move-result v0

    .line 231
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMfader()I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_mode_btn:Landroid/widget/Button;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 233
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_mode_btn:Landroid/widget/Button;

    if-ne v1, v3, :cond_0

    if-ne v0, v3, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 234
    :cond_1
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_mode_btn:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 235
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_mode_btn:Landroid/widget/Button;

    if-ne v1, v3, :cond_2

    const/16 v3, 0xb

    if-ne v0, v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setSelected(Z)V

    .line 236
    :cond_3
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->hou_mode_btn:Landroid/widget/Button;

    const/4 v3, 0x7

    if-eqz v2, :cond_5

    .line 237
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->hou_mode_btn:Landroid/widget/Button;

    const/16 v6, 0xc

    if-ne v1, v6, :cond_4

    if-ne v0, v3, :cond_4

    const/4 v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual {v2, v6}, Landroid/widget/Button;->setSelected(Z)V

    .line 238
    :cond_5
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->center_mode_btn:Landroid/widget/Button;

    if-eqz v2, :cond_7

    .line 239
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->center_mode_btn:Landroid/widget/Button;

    if-ne v1, v3, :cond_6

    if-ne v0, v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 241
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_4
    return-void
.end method

.method private updateRightUi()V
    .locals 5

    .line 215
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getMbalance()I

    move-result v0

    .line 217
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMfader()I

    move-result v1

    const-string v2, "dsp3-SiteFragment"

    .line 218
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u4f20\u5165\u7684X\u4e3a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  \u4f20\u5165\u7684Y\u4e3a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->fb_view:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->fb_view:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    invoke-virtual {v2, v0, v1}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->setXY(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateUiWidth()V
    .locals 15

    const-string v0, ", screenHeight="

    const-string v1, "updateUiWidth width="

    const-string v2, "dsp3-SiteFragment"

    .line 384
    :try_start_0
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 385
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 386
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 389
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v5

    .line 390
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v6

    .line 391
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", \u53ef\u7528height="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget v6, v6, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v6, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget v6, v6, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    if-lez v6, :cond_0

    .line 394
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget v5, v5, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v6

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",\u66f4\u65b0 \u53ef\u7528height="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 398
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-nez v1, :cond_5

    const v1, 0x7f09029c

    const v2, 0x7f090298

    const v4, 0x7f090299

    const v6, 0x7f09029b

    const v7, 0x7f09025e

    const v8, 0x7f09029a

    const v9, 0x7f09025a

    const v10, 0x7f09025f

    if-eqz v0, :cond_3

    .line 401
    invoke-virtual {p0, v9}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v11, v3

    const-wide v13, 0x3fd5c28f5c28f5c3L    # 0.34

    .line 403
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v11

    double-to-int v3, v13

    .line 404
    :try_start_1
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 405
    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v9, 0x19

    .line 406
    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 407
    invoke-virtual {p0, v8}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-double v8, v3

    const-wide v13, 0x3fdced916872b021L    # 0.452

    .line 408
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    double-to-int v3, v13

    .line 409
    :try_start_2
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 410
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 411
    invoke-virtual {p0, v6}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 412
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 413
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 414
    invoke-virtual {p0, v4}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 415
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 416
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 417
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 418
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 419
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 420
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide v1, 0x3fdb645a1cac0831L    # 0.428

    .line 421
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v1

    double-to-int v1, v8

    .line 422
    :try_start_3
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 423
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 426
    invoke-virtual {p0, v7}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 427
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070357

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v5, v2

    const-wide v2, 0x3fe0a3d70a3d70a4L    # 0.52

    .line 429
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v11

    double-to-int v2, v2

    .line 430
    :try_start_4
    iget-boolean v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbarShow:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_1

    const-wide v2, 0x3fdc28f5c28f5c29L    # 0.44

    .line 431
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v2

    double-to-int v2, v11

    :cond_1
    cmpg-float v3, v1, v5

    if-gez v3, :cond_2

    move v1, v5

    :cond_2
    float-to-int v3, v1

    add-int/lit8 v3, v3, 0x37

    .line 436
    :try_start_5
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 437
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 438
    invoke-virtual {p0, v10}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    int-to-double v2, v2

    const-wide v4, 0x3fe4cccccccccccdL    # 0.65

    .line 439
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    double-to-int v2, v2

    :try_start_6
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    float-to-double v1, v1

    const-wide v3, 0x3fe88b4395810625L    # 0.767

    .line 440
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v3

    double-to-int v1, v1

    :try_start_7
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_3
    float-to-double v11, v3

    const-wide v13, 0x3fda9fbe76c8b439L    # 0.416

    .line 445
    invoke-static {v11, v12}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v13

    double-to-int v0, v11

    .line 446
    :try_start_8
    invoke-virtual {p0, v10}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    int-to-double v10, v0

    const-wide v12, 0x3fe6c8b439581062L    # 0.712

    .line 447
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    double-to-int v10, v10

    :try_start_9
    iput v10, v3, Landroid/view/ViewGroup$LayoutParams;->width:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    float-to-double v10, v5

    const-wide v12, 0x3fe55810624dd2f2L    # 0.667

    .line 448
    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v12

    double-to-int v10, v10

    :try_start_a
    iput v10, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 450
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-nez v3, :cond_4

    .line 451
    invoke-virtual {p0, v7}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 452
    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v0, 0x445c0000    # 880.0f

    cmpg-float v0, v5, v0

    if-gtz v0, :cond_4

    const v0, 0x7f0901d1

    .line 454
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f0901d2

    .line 455
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    const v5, 0x3dcccccd    # 0.1f

    .line 456
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 457
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 461
    :cond_4
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v3, 0x500

    if-ne v0, v3, :cond_5

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x2d0

    if-ne v0, v3, :cond_5

    .line 462
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f070353

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 463
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07034c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 464
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f070356

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    .line 465
    invoke-virtual {p0, v9}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 466
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 467
    iput v0, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 468
    invoke-virtual {p0, v8}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 469
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 470
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 471
    invoke-virtual {p0, v6}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 472
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 473
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 474
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 475
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 476
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 477
    invoke-virtual {p0, v4}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 478
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 479
    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 480
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 481
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 482
    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 62
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentSite1Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->binding1:Lcom/nwd/audioset/databinding/FragmentSite1Binding;

    .line 65
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentSiteBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->binding:Lcom/nwd/audioset/databinding/FragmentSiteBinding;

    .line 68
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/site/SiteP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/site/SiteP;
    .locals 1

    .line 194
    new-instance v0, Lcom/nwd/audioset/view/fragment/site/SiteP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/site/SiteP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->fb_view:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    const/16 v1, 0xe

    invoke-virtual {v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->setMaxValueXY(II)V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901b1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_move_btn:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090243

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_move_btn:Landroid/widget/Button;

    .line 81
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090310

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->top_move_btn:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->bottom_move_btn:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09029a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_mode_btn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09029b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_mode_btn:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->hou_mode_btn:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09029c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->reset_btn:Landroid/widget/Button;

    .line 88
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->center_mode_btn:Landroid/widget/Button;

    .line 89
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09011e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->fb_view:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    .line 92
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_FACTORYCONFIG_PATH:Ljava/lang/String;

    const-string v1, "eq_force_32_segment"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadKeyValueFromSD(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "dsp3-SiteFragment"

    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initView force32Eq="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v1

    if-eqz v1, :cond_1

    if-ne v0, v2, :cond_1

    .line 96
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09010d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/4 v1, 0x0

    .line 97
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setVisibility(I)V

    .line 98
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dsp_max_eq"

    invoke-static {v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mMaxEqValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 100
    iput v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mMaxEqValue:I

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setAdjustOffset(I)V

    .line 103
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const v3, 0x7f0e0104

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setName(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    iget v3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mMaxEqValue:I

    invoke-virtual {v0, v3}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setMax(I)V

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "eq_64hz"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {v1, v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setGainValue(I)V

    .line 112
    iput-boolean v2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbarShow:Z

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateUiWidth()V

    .line 115
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateDspUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onBallMove(II)V
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \u56de\u8c03\u7684X\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  \u56de\u8c03\u7684Y\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-SiteFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    .line 249
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateLeftUi()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 161
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getMfader()I

    move-result v0

    .line 162
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMbalance()I

    move-result v1

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v2, 0x7f0901b1

    if-ne p1, v2, :cond_1

    if-nez v1, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto/16 :goto_0

    :cond_1
    const v2, 0x7f090243

    const/16 v3, 0xe

    if-ne p1, v2, :cond_3

    if-lt v1, v3, :cond_2

    return-void

    .line 170
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto :goto_0

    :cond_3
    const v2, 0x7f090310

    if-ne p1, v2, :cond_5

    if-nez v0, :cond_4

    return-void

    .line 173
    :cond_4
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto :goto_0

    :cond_5
    const v2, 0x7f090096

    if-ne p1, v2, :cond_7

    if-lt v0, v3, :cond_6

    return-void

    .line 176
    :cond_6
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto :goto_0

    :cond_7
    const v0, 0x7f09029a

    const/4 v1, 0x3

    if-ne p1, v0, :cond_8

    .line 178
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto :goto_0

    :cond_8
    const v0, 0x7f09029b

    if-ne p1, v0, :cond_9

    .line 180
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/16 v0, 0xb

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto :goto_0

    :cond_9
    const v0, 0x7f090298

    const/4 v1, 0x7

    if-ne p1, v0, :cond_a

    .line 182
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    goto :goto_0

    :cond_a
    const v0, 0x7f090299

    if-eq p1, v0, :cond_b

    const v0, 0x7f09029c

    if-ne p1, v0, :cond_c

    .line 184
    :cond_b
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendSiteData(II)V

    .line 186
    :cond_c
    :goto_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateLeftUi()V

    .line 187
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateRightUi()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 204
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onDestroy()V

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 256
    :try_start_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "dsp3-SiteFragment"

    .line 258
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged \u503c= "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {p3}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 259
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {p2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateDSPAudio(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 273
    :try_start_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "dsp3-SiteFragment"

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStopTrackingTouch \u503c= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 276
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->updateDSPAudio(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_move_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_move_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->top_move_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->bottom_move_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->left_mode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->right_mode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->hou_mode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->center_mode_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->reset_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->fb_view:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->setOnBallMoveListener(Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 141
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 143
    new-instance p1, Lcom/nwd/audioset/view/fragment/site/SiteFragment$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/site/SiteFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThreadDelay(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method

.method protected updateDSPAudio(ZI)V
    .locals 3

    :try_start_0
    const-string v0, "dsp3-SiteFragment"

    .line 284
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDSPAudio setDspAudio \u53d1\u90010x0c:eq-64hz 2\u6bb5 value11="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isInit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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

    .line 285
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->seekbar:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {v0, p2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setGainValue(I)V

    .line 287
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eq_64hz"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/site/SiteFragment;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;

    invoke-direct {v0, p0, p2}, Lcom/nwd/audioset/view/fragment/site/SiteFragment$2;-><init>(Lcom/nwd/audioset/view/fragment/site/SiteFragment;I)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 302
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 303
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nwd/setting/service/SettingFeature;

    const/16 v0, 0xc

    int-to-byte p2, p2

    invoke-interface {p1, v0, p2}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 307
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
