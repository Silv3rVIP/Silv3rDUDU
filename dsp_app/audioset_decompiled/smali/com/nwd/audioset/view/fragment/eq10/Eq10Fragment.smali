.class public Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "Eq10Fragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/eq10/Eq10P;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final ADJUST_OFFSET:I = 0x3

.field protected static final MSG_REFRESH_ALL:I = 0x1

.field protected static final MSG_REFRESH_DSP_SINGLE:I = 0x2

.field protected static final MSG_REFRESH_SINGLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "dsp3-Eq10Fragment"


# instance fields
.field private binding:Lcom/nwd/audioset/databinding/LayoutCommonAudioEffectSettingBinding;

.field private mBtnEffectDefault:Landroid/widget/Button;

.field private mBtnLoundLenss:Landroid/widget/ImageButton;

.field private mBtnStorageSetting:Landroid/widget/Button;

.field private mEQTypeLeftBtn:Landroid/widget/ImageButton;

.field private mEQTypeRightBtn:Landroid/widget/ImageButton;

.field private mEqDescription:[Ljava/lang/String;

.field private mEqIndex:I

.field private mEqType:Landroid/widget/TextView;

.field private mEqhz:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/nwd/audioset/view/nwdview/SeekBarView;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

.field private mLoudlessState:Z

.field private mMaxEqValue:I

.field mSettingController:Lcom/nwd/dsp/uitls/SettingController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    .line 474
    new-instance v0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment$1;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment$1;-><init>(Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private resetAll()V
    .locals 2

    const-string v0, "dsp3-Eq10Fragment"

    const-string v1, "resetAll"

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 456
    :try_start_0
    iput v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    const-string v1, "standard"

    .line 457
    invoke-direct {p0, v0, v1}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setDspEqGain(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 459
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setDspEqGain(ILjava/lang/String;)V
    .locals 4

    .line 321
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getEqValues(Ljava/lang/String;)[I

    move-result-object v0

    const-string v1, "dsp3-Eq10Fragment"

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDspEqGain values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", eqType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", eqIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eqIndex"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setmDsp10EQType(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 329
    :goto_0
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 330
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/nwd/audioset/view/nwdview/SeekBarView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 336
    :try_start_1
    aget v1, v0, p1

    invoke-virtual {p2, v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setGainValue(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 341
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 344
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send10EQGain([I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 346
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private setLoundLess(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 259
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mBtnLoundLenss:Landroid/widget/ImageButton;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageLevel(I)V

    goto :goto_0

    .line 262
    :cond_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mBtnLoundLenss:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setImageLevel(I)V

    :goto_0
    return-void
.end method

.method private setTextResource(Landroid/view/View;)V
    .locals 5

    .line 238
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 239
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    const/4 v1, 0x0

    .line 240
    :goto_0
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 241
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v0, 0x7f09009b

    .line 243
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mBtnEffectDefault:Landroid/widget/Button;

    .line 244
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    const-string v2, "huifumoren"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mBtnEffectDefault:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090330

    .line 251
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    const-string v1, "idengxiang"

    invoke-virtual {v0, v1}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateDspUi()V
    .locals 3

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 468
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_bg:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0901bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 471
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateUiWidth()V
    .locals 12

    .line 501
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 503
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    .line 504
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v3

    const v3, 0x3f2c8b44    # 0.674f

    mul-float v3, v3, v1

    if-eqz v0, :cond_0

    const v3, 0x3f6e147b    # 0.93f

    mul-float v3, v3, v1

    :cond_0
    const/high16 v4, 0x41200000    # 10.0f

    div-float v4, v3, v4

    float-to-int v4, v4

    .line 512
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070050

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const v6, 0x3f19999a    # 0.6f

    mul-float v6, v6, v2

    float-to-int v6, v6

    .line 515
    iget-object v7, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07034d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    if-eqz v0, :cond_1

    const v6, 0x3ecccccd    # 0.4f

    mul-float v6, v6, v2

    float-to-int v6, v6

    :cond_1
    const-string v8, "dsp3-Eq10Fragment"

    const-string v9, "updateUiWidth width=%s, height=%s,  w1=%s, w2=%s, w3=%s, h1=%s, h2=%s"

    const/4 v10, 0x7

    new-array v10, v10, [Ljava/lang/Object;

    .line 519
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v10, v11

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v10, v2

    const/4 v1, 0x2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    const/4 v1, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v10, v1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    if-ge v4, v5, :cond_2

    move v4, v5

    .line 528
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v11, v0, :cond_3

    .line 529
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    .line 530
    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 534
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090281

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 535
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090282

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 536
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090283

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 537
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090284

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 538
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090285

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 539
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090286

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 540
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090287

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 541
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090288

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 542
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090289

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 543
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09028a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v6, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public getEqValues(Ljava/lang/String;)[I
    .locals 5

    const-string v0, "standard"

    .line 352
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    sget-object p1, Lcom/nwd/audioset/utils/Constant;->eq_standard:[I

    goto :goto_1

    :cond_0
    const-string v0, "pop"

    .line 354
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    sget-object p1, Lcom/nwd/audioset/utils/Constant;->eq_pop:[I

    goto :goto_1

    :cond_1
    const-string v0, "rock"

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    sget-object p1, Lcom/nwd/audioset/utils/Constant;->eq_rock:[I

    goto :goto_1

    :cond_2
    const-string v0, "classic"

    .line 358
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 359
    sget-object p1, Lcom/nwd/audioset/utils/Constant;->eq_class:[I

    goto :goto_1

    :cond_3
    const-string v0, "jazz"

    .line 360
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 361
    sget-object p1, Lcom/nwd/audioset/utils/Constant;->eq_jazz:[I

    goto :goto_1

    :cond_4
    const/16 p1, 0xa

    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_5

    .line 365
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/nwd/audioset/utils/Constant;->EQ_FREQUENCY_COMMON:[Ljava/lang/String;

    aget-object v3, v3, v1

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move-object p1, v0

    .line 368
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEqValues values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-Eq10Fragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/LayoutCommonAudioEffectSettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/LayoutCommonAudioEffectSettingBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->binding:Lcom/nwd/audioset/databinding/LayoutCommonAudioEffectSettingBinding;

    .line 64
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/LayoutCommonAudioEffectSettingBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/eq10/Eq10P;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/eq10/Eq10P;
    .locals 1

    .line 146
    new-instance v0, Lcom/nwd/audioset/view/fragment/eq10/Eq10P;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10P;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 7

    .line 114
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "eqIndex"

    invoke-static {v0, v3, v2}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    .line 115
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "dsp_max_eq"

    .line 116
    invoke-static {v0, v2}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mMaxEqValue:I

    if-nez v0, :cond_0

    const/4 v0, 0x6

    .line 119
    iput v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mMaxEqValue:I

    .line 121
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v0

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMaxEqValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mMaxEqValue:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mEqIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", eqType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "dsp3-Eq10Fragment"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getEqValues(Ljava/lang/String;)[I

    move-result-object v0

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 125
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/4 v4, 0x3

    .line 126
    invoke-virtual {v2, v4}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setAdjustOffset(I)V

    .line 127
    sget-object v4, Lcom/nwd/audioset/utils/Constant;->EQ_FREQUENCY_COMMON:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v2, v4}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setName(Ljava/lang/String;)V

    .line 128
    invoke-virtual {v2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d00a3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getSeekBar()Landroid/widget/SeekBar;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    .line 131
    aget v4, v0, v1

    invoke-virtual {v2, v4}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setGainValue(I)V

    .line 132
    iget v4, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mMaxEqValue:I

    invoke-virtual {p0, v2, v4}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->initSeekbarView(Lcom/nwd/audioset/view/nwdview/SeekBarView;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_2

    if-ltz v0, :cond_2

    .line 136
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqType:Landroid/widget/TextView;

    aget-object v0, v1, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isOpenDengxiang()Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLoudlessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setLoundLess(Z)V

    return-void
.end method

.method protected initSeekbarView(Lcom/nwd/audioset/view/nwdview/SeekBarView;I)V
    .locals 0

    .line 232
    invoke-virtual {p1, p0}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 233
    invoke-virtual {p1, p2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setMax(I)V

    return-void
.end method

.method public initView()V
    .locals 3

    .line 73
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    .line 74
    invoke-virtual {v0}, Lcom/android/utils/utils/InternationalUtils;->loadResource()V

    .line 75
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setTextResource(Landroid/view/View;)V

    .line 76
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090189

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEQTypeLeftBtn:Landroid/widget/ImageButton;

    .line 77
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090188

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEQTypeRightBtn:Landroid/widget/ImageButton;

    .line 79
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09009c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mBtnLoundLenss:Landroid/widget/ImageButton;

    .line 83
    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    .line 85
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09010d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09010e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09010f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090110

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090111

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090112

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090113

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090114

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090115

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09031c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqType:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mSettingController:Lcom/nwd/dsp/uitls/SettingController;

    .line 97
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDspUi()V

    .line 98
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateUiWidth()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 166
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0x7f090188

    const-string v1, "jazz"

    const/4 v2, 0x4

    const-string v3, "classic"

    const/4 v4, 0x3

    const-string v5, "rock"

    const/4 v6, 0x2

    const-string v7, "pop"

    const-string v8, "standard"

    const-string v9, "customize"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-ne p1, v0, :cond_6

    .line 168
    :try_start_1
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    add-int/2addr p1, v11

    iput p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    .line 169
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    array-length v0, v0

    if-ne p1, v0, :cond_0

    .line 170
    iput v10, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    .line 175
    :cond_0
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-nez p1, :cond_1

    move-object v1, v8

    goto :goto_0

    .line 177
    :cond_1
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v11, :cond_2

    move-object v1, v7

    goto :goto_0

    .line 179
    :cond_2
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v6, :cond_3

    move-object v1, v5

    goto :goto_0

    .line 181
    :cond_3
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v4, :cond_4

    move-object v1, v3

    goto :goto_0

    .line 183
    :cond_4
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v2, :cond_5

    goto :goto_0

    :cond_5
    move-object v1, v9

    .line 186
    :goto_0
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    invoke-direct {p0, p1, v1}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setDspEqGain(ILjava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    const v0, 0x7f090189

    if-ne p1, v0, :cond_d

    .line 189
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    sub-int/2addr p1, v11

    iput p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-gez p1, :cond_7

    .line 191
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v11

    iput p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    .line 195
    :cond_7
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-nez p1, :cond_8

    move-object v1, v8

    goto :goto_1

    .line 197
    :cond_8
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v11, :cond_9

    move-object v1, v7

    goto :goto_1

    .line 199
    :cond_9
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v6, :cond_a

    move-object v1, v5

    goto :goto_1

    .line 201
    :cond_a
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v4, :cond_b

    move-object v1, v3

    goto :goto_1

    .line 203
    :cond_b
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    if-ne p1, v2, :cond_c

    goto :goto_1

    :cond_c
    move-object v1, v9

    .line 206
    :goto_1
    iget p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    invoke-direct {p0, p1, v1}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setDspEqGain(ILjava/lang/String;)V

    goto :goto_2

    :cond_d
    const v0, 0x7f09009b

    if-ne p1, v0, :cond_e

    .line 208
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->resetAll()V

    goto :goto_2

    :cond_e
    const v0, 0x7f09009c

    if-ne p1, v0, :cond_10

    .line 216
    iget-boolean p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    if-nez p1, :cond_f

    const/4 v10, 0x1

    :cond_f
    iput-boolean v10, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    .line 217
    invoke-direct {p0, v10}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setLoundLess(Z)V

    .line 218
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDengxiangData(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 222
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_10
    :goto_2
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    const/4 p2, 0x0

    .line 268
    :goto_0
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 269
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    .line 270
    invoke-virtual {p3, p1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->isEqual(Landroid/widget/SeekBar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onProgressChanged\u503c"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", i="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "dsp3-Eq10Fragment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mSettingController:Lcom/nwd/dsp/uitls/SettingController;

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mSettingController:Lcom/nwd/dsp/uitls/SettingController;

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nwd/setting/service/SettingFeature;

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    int-to-byte p2, p2

    invoke-virtual {p3}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result p3

    int-to-byte p3, p3

    invoke-interface {p1, p2, p3}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 277
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 103
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onResume()V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 5

    const/4 v0, 0x0

    .line 292
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    .line 294
    invoke-virtual {v1, p1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->isEqual(Landroid/widget/SeekBar;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "dsp3-Eq10Fragment"

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStopTouchSeekBar value= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", i="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", g="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getGainVlue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mEqhz.size="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mSettingController:Lcom/nwd/dsp/uitls/SettingController;

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mSettingController:Lcom/nwd/dsp/uitls/SettingController;

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/setting/service/SettingFeature;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v4

    int-to-byte v4, v4

    invoke-interface {v2, v3, v4}, Lcom/nwd/setting/service/SettingFeature;->setDspAudio(BB)V

    .line 300
    :cond_0
    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setGainValue(I)V

    .line 301
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/nwd/audioset/utils/Constant;->EQ_FREQUENCY_COMMON:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    const-string v2, "customize"

    invoke-virtual {v1, v2}, Lcom/nwd/dsp/uitls/DspManager;->setmDsp10EQType(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 304
    iput v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    .line 305
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eqIndex"

    iget v3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqType:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    iget v3, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 308
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/nwd/audioset/utils/Constant;->EQ_FREQUENCY_COMMON:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :catch_1
    move-exception p1

    .line 315
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method

.method protected updateAllState()V
    .locals 4

    .line 391
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mSettingController:Lcom/nwd/dsp/uitls/SettingController;

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/setting/service/SettingFeature;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0xb

    .line 394
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v1, 0xc

    .line 395
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v1, 0xd

    .line 396
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v1, 0xe

    .line 397
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v1, 0xf

    .line 398
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v1, 0x10

    .line 399
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v1, 0x11

    .line 400
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v2, 0x12

    .line 401
    invoke-interface {v0, v2}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v2, 0x13

    .line 402
    invoke-interface {v0, v2}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/16 v2, 0x14

    .line 403
    invoke-interface {v0, v2}, Lcom/nwd/setting/service/SettingFeature;->getDspAudio(B)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    const/4 v2, 0x5

    .line 404
    invoke-interface {v0, v2}, Lcom/nwd/setting/service/SettingFeature;->getAudioParam(I)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateAudio(II)V

    .line 405
    invoke-interface {v0, v1}, Lcom/nwd/setting/service/SettingFeature;->getAudioParam(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateAudio(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected updateAudio(II)V
    .locals 2

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAudio \u4e2dtype= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  \u503c\u4e3a= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YCH"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 419
    :goto_0
    iput-boolean p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mLoudlessState:Z

    .line 420
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->setLoundLess(Z)V

    goto :goto_1

    .line 415
    :cond_2
    iput p2, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqIndex:I

    .line 416
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqType:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqDescription:[Ljava/lang/String;

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method protected updateDSPAudio(II)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDSPAudioupdata eq,type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-Eq10Fragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 442
    :pswitch_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->mEqhz:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    invoke-virtual {p1, p2}, Lcom/nwd/audioset/view/nwdview/SeekBarView;->setGainValue(I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
