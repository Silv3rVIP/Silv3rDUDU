.class public Lcom/nwd/audioset/view/fragment/draw/MainFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "MainFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;
.implements Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/draw/MainP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;",
        "Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-MainFragemnt"


# instance fields
.field private binding:Lcom/nwd/audioset/databinding/FragmentMainBinding;

.field private binding1:Lcom/nwd/audioset/databinding/FragmentMain1Binding;

.field private btn_add:Lcom/nwd/audioset/view/nwdview/LongClickButton;

.field private btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_low:Lcom/nwd/audioset/view/nwdview/LongClickButton;

.field private btn_mode_class:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_mode_jazz:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_mode_pop:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_mode_rock:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_mode_standard:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_reset:Landroid/widget/ImageView;

.field private btn_setting:Landroid/widget/ImageView;

.field firstHalf:[F

.field public isG5Portrait:Z

.field private isRotatePort:Z

.field private iv_eq_logo:Landroid/widget/ImageView;

.field private length_sub:I

.field private mFadeLineView:Lcom/nwd/audioset/view/nwdview/FadeLineView;

.field private mFadeLineView1:Lcom/nwd/audioset/view/nwdview/FadeLineView;

.field private mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

.field private mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

.field private mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

.field private mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

.field private mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

.field private mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

.field private mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

.field private mSparkView1:Lcom/nwd/audioset/view/nwdview/SparkView;

.field private mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

.field private mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

.field secondHalf:[F

.field private selectID:I

.field private selectType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    const-string v0, "non"

    .line 59
    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    const/16 v0, 0x10

    .line 61
    iput v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->length_sub:I

    const/4 v1, 0x0

    .line 64
    iput-boolean v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    new-array v1, v0, [F

    .line 66
    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    new-array v0, v0, [F

    .line 68
    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    return-void
.end method

.method private clickNum(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9009\u4e2d\u7684id\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-MainFragemnt"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 396
    iget v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    const p1, 0x7f0e00dc

    .line 397
    invoke-static {p1}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    return-void

    .line 400
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "customize"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v1

    const-string v5, "customizetwo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [Ljava/lang/Object;

    .line 401
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u6a21\u5f0f\u4e0d\u662f\u81ea\u5b9a\u4e49: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 404
    :cond_1
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v5, 0x304b7f

    if-eq v2, v5, :cond_3

    const v5, 0x34d735

    if-eq v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const-string v2, "qain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "gain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v4, 0x1

    :cond_4
    :goto_0
    const-string v1, "low"

    const-string v2, "add"

    if-eqz v4, :cond_b

    if-eq v4, v0, :cond_5

    goto/16 :goto_3

    .line 433
    :cond_5
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    iget v5, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {v4, v5}, Lcom/nwd/dsp/uitls/DspManager;->getOneGain(I)I

    move-result v4

    .line 434
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v5}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getmTextOnly()F

    move-result v5

    .line 435
    iget-boolean v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    iget v7, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->length_sub:I

    if-lt v6, v7, :cond_6

    .line 436
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v5}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getmTextOnly()F

    move-result v5

    :cond_6
    const/high16 v6, 0x41400000    # 12.0f

    const v7, 0x7f0e00da

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_7

    .line 452
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 453
    invoke-static {v7}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    return-void

    :cond_7
    const/high16 v6, -0x3ec00000    # -12.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_8

    .line 458
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 459
    invoke-static {v7}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    return-void

    .line 466
    :cond_8
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 467
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    add-int/2addr v4, v0

    invoke-virtual {p1, v1, v4, p2}, Lcom/nwd/dsp/uitls/DspManager;->setOneGain(IILjava/lang/String;)V

    goto :goto_1

    .line 468
    :cond_9
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 469
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    sub-int/2addr v4, v0

    invoke-virtual {p1, v1, v4, p2}, Lcom/nwd/dsp/uitls/DspManager;->setOneGain(IILjava/lang/String;)V

    .line 473
    :cond_a
    :goto_1
    invoke-direct {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto :goto_3

    .line 409
    :cond_b
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    iget v5, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {v4, v5}, Lcom/nwd/dsp/uitls/DspManager;->getOneValue(I)I

    move-result v4

    const/16 v5, 0x1f

    const v6, 0x7f0e00db

    if-lt v4, v5, :cond_c

    .line 410
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 411
    invoke-static {v6}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    return-void

    .line 415
    :cond_c
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    iget v5, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {v4, v5}, Lcom/nwd/dsp/uitls/DspManager;->getOneValue(I)I

    move-result v4

    if-gt v4, v0, :cond_d

    .line 416
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 417
    invoke-static {v6}, Lcom/blankj/utilcode/util/ToastUtils;->showShort(I)V

    return-void

    .line 423
    :cond_d
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 424
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    iget v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {v2, v4}, Lcom/nwd/dsp/uitls/DspManager;->getOneValue(I)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, p2}, Lcom/nwd/dsp/uitls/DspManager;->setOneQValue(IILjava/lang/String;)V

    goto :goto_2

    .line 425
    :cond_e
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 426
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    iget v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {v2, v4}, Lcom/nwd/dsp/uitls/DspManager;->getOneValue(I)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1, v1, v2, p2}, Lcom/nwd/dsp/uitls/DspManager;->setOneQValue(IILjava/lang/String;)V

    .line 428
    :cond_f
    :goto_2
    invoke-direct {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    :goto_3
    return-void
.end method

.method private initTabView()V
    .locals 4

    .line 331
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    const/16 v2, 0x10

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-virtual {v0, v1, v1, v3}, Lcom/nwd/audioset/view/nwdview/TableView;->setupCoordinator(Ljava/lang/String;Ljava/lang/String;[F)V

    .line 333
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-virtual {v0, v1, v1, v2}, Lcom/nwd/audioset/view/nwdview/TableView;->setupCoordinator(Ljava/lang/String;Ljava/lang/String;[F)V

    goto :goto_0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    const/16 v2, 0x20

    new-array v2, v2, [F

    fill-array-data v2, :array_2

    invoke-virtual {v0, v1, v1, v2}, Lcom/nwd/audioset/view/nwdview/TableView;->setupCoordinator(Ljava/lang/String;Ljava/lang/String;[F)V

    :goto_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
        0x41800000    # 16.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
        0x41800000    # 16.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x40000000    # 2.0f
        0x40400000    # 3.0f
        0x40800000    # 4.0f
        0x40a00000    # 5.0f
        0x40c00000    # 6.0f
        0x40e00000    # 7.0f
        0x41000000    # 8.0f
        0x41100000    # 9.0f
        0x41200000    # 10.0f
        0x41300000    # 11.0f
        0x41400000    # 12.0f
        0x41500000    # 13.0f
        0x41600000    # 14.0f
        0x41700000    # 15.0f
        0x41800000    # 16.0f
        0x41880000    # 17.0f
        0x41900000    # 18.0f
        0x41980000    # 19.0f
        0x41a00000    # 20.0f
        0x41a80000    # 21.0f
        0x41b00000    # 22.0f
        0x41b80000    # 23.0f
        0x41c00000    # 24.0f
        0x41c80000    # 25.0f
        0x41d00000    # 26.0f
        0x41d80000    # 27.0f
        0x41e00000    # 28.0f
        0x41e80000    # 29.0f
        0x41f00000    # 30.0f
        0x41f80000    # 31.0f
        0x42000000    # 32.0f
    .end array-data
.end method

.method public static newInstance()Lcom/nwd/audioset/view/fragment/draw/MainFragment;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "new \u4e00\u4e2aMainFragemnt()"

    aput-object v2, v0, v1

    const-string v1, "dsp3-MainFragemnt"

    .line 70
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    new-instance v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;-><init>()V

    return-object v0
.end method

.method private resetData()V
    .locals 1

    .line 388
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->sendReset()V

    .line 389
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateButtonBgUi(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 390
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    return-void
.end method

.method private setButtonBG()V
    .locals 7

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 212
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_d:Ljava/lang/String;

    const v2, 0x7f0d0053

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 213
    iget-object v2, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_n:Ljava/lang/String;

    const v3, 0x7f0d0056

    invoke-virtual {v0, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 215
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_standard_d:Ljava/lang/String;

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 216
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_standard_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 217
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_standard:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_0

    move-object v5, v2

    :cond_0
    if-nez v3, :cond_1

    move-object v3, v1

    :cond_1
    invoke-static {v6, v5, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 218
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_pop_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 219
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_pop_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 220
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_pop:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_2

    move-object v5, v2

    :cond_2
    if-nez v3, :cond_3

    move-object v3, v1

    :cond_3
    invoke-static {v6, v5, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_rock_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 222
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_rock_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 223
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_rock:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_4

    move-object v5, v2

    :cond_4
    if-nez v3, :cond_5

    move-object v3, v1

    :cond_5
    invoke-static {v6, v5, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 224
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_jazz_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 225
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_jazz_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 226
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_jazz:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_6

    move-object v5, v2

    :cond_6
    if-nez v3, :cond_7

    move-object v3, v1

    :cond_7
    invoke-static {v6, v5, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 227
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_class_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 228
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_class_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 229
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_class:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_8

    move-object v5, v2

    :cond_8
    if-nez v3, :cond_9

    move-object v3, v1

    :cond_9
    invoke-static {v6, v5, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 230
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_custom_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 231
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_custom_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 232
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_a

    move-object v5, v2

    :cond_a
    if-nez v3, :cond_b

    move-object v3, v1

    :cond_b
    invoke-static {v6, v5, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 233
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_custom_two_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 234
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_custom_two_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 235
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v5, :cond_c

    goto :goto_0

    :cond_c
    move-object v2, v5

    :goto_0
    if-nez v3, :cond_d

    goto :goto_1

    :cond_d
    move-object v1, v3

    :goto_1
    invoke-static {v6, v2, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_dengxiang_d:Ljava/lang/String;

    const v2, 0x7f0d0054

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 237
    iget-object v2, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_dengxiang_n:Ljava/lang/String;

    const v3, 0x7f0d0055

    invoke-virtual {v0, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 238
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_dengxiang_d:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 239
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_dengxiang_n:Ljava/lang/String;

    invoke-virtual {v0, v5, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 240
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v0, :cond_e

    goto :goto_2

    :cond_e
    move-object v2, v0

    :goto_2
    if-nez v3, :cond_f

    goto :goto_3

    :cond_f
    move-object v1, v3

    :goto_3
    invoke-static {v4, v2, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method

.method private setButtonMove()V
    .locals 16

    move-object/from16 v0, p0

    .line 147
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070138

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveOne(F)V

    .line 148
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f07013d

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveOne(F)V

    .line 149
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f07013a

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveTwo(F)V

    .line 150
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f07013f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveTwo(F)V

    .line 151
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v7, 0x7f070139

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveThree(F)V

    .line 152
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v8, 0x7f07013e

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveThree(F)V

    .line 153
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f070136

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFive(F)V

    .line 154
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7f07013b

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFive(F)V

    .line 155
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f070137

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFour(F)V

    .line 156
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f07013c

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFour(F)V

    .line 158
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v13, 0x7f07014a

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveOne(F)V

    .line 159
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v14, 0x7f07014e

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveOne(F)V

    .line 160
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f07014c

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveTwo(F)V

    .line 161
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070150

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveTwo(F)V

    .line 162
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f07014b

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveThree(F)V

    .line 163
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f07014f

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveThree(F)V

    .line 164
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070149

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFour(F)V

    .line 165
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f07014d

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFour(F)V

    .line 167
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070141

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveOne(F)V

    .line 168
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070145

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveOne(F)V

    .line 169
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070143

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveTwo(F)V

    .line 170
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070147

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveTwo(F)V

    .line 171
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070142

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveThree(F)V

    .line 172
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070146

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveThree(F)V

    .line 173
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070140

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFour(F)V

    .line 174
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v15, 0x7f070144

    invoke-virtual {v2, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFour(F)V

    .line 176
    iget-boolean v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz v1, :cond_0

    .line 177
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveOne(F)V

    .line 178
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveOne(F)V

    .line 179
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveTwo(F)V

    .line 180
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveTwo(F)V

    .line 181
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveThree(F)V

    .line 182
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveThree(F)V

    .line 183
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFive(F)V

    .line 184
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFive(F)V

    .line 185
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFour(F)V

    .line 186
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFour(F)V

    .line 188
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveOne(F)V

    .line 189
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveOne(F)V

    .line 190
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveTwo(F)V

    .line 191
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070150

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveTwo(F)V

    .line 192
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveThree(F)V

    .line 193
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveThree(F)V

    .line 194
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070149

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFour(F)V

    .line 195
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07014d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFour(F)V

    .line 197
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070141

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveOne(F)V

    .line 198
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070145

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveOne(F)V

    .line 199
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070143

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveTwo(F)V

    .line 200
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070147

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveTwo(F)V

    .line 201
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070142

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveThree(F)V

    .line 202
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070146

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveThree(F)V

    .line 203
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070140

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setXmoveFour(F)V

    .line 204
    iget-object v1, v0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070144

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setYmoveFour(F)V

    :cond_0
    return-void
.end method

.method private setInternational()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_standard:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_standard"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_pop:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_pop"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_rock:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_rock"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_jazz:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_jazz"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_class:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_class"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_custom"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "audio_eq_custom_two"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "idengxiang"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateBgCustomize()V
    .locals 3

    .line 537
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->isSelected()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "dsp3-MainFragemnt"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u9009\u4e2d\u7684\u6a21\u5f0f\u4e0d\u662f\u81ea\u5b9a\u4e49\u6216\u8005\u81ea\u5b9a\u4e492"

    aput-object v2, v0, v1

    .line 538
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    const-string v0, "customize"

    .line 539
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateButtonBgUi(Ljava/lang/String;)V

    .line 540
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->setmDspEQType(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private updateButtonBgUi(Ljava/lang/String;)V
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isOpenDengxiang()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 629
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_standard:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "standard"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 630
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_pop:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "pop"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 631
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_rock:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "rock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 632
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_jazz:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "jazz"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 633
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_class:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "classic"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 634
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "customize"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 635
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "customizetwo"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    return-void
.end method

.method private updateDspUi()V
    .locals 5

    .line 728
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 729
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_set_d:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 730
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_set_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 731
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_setting:Landroid/widget/ImageView;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 733
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_reset_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 734
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_reset_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 735
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_reset:Landroid/widget/ImageView;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 737
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_vol_add_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 738
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_vol_add_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 739
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_add:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 741
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_vol_low_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 742
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_vol_low_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 743
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_low:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 745
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_vol_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 746
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901d0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 747
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901bb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 749
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->bg_table_view:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 750
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09018b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 751
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->bg_table_view1:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 752
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09018c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 757
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_bg_xiao:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 758
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0901c3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 760
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v0, :cond_0

    .line 761
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06007b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    const v1, 0x7f090327

    .line 762
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f090332

    .line 763
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f09032c

    .line 764
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 765
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-eqz v1, :cond_0

    const v1, 0x7f090328

    .line 766
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f090333

    .line 767
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const v1, 0x7f09032d

    .line 768
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 772
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateUi(Z)V
    .locals 13

    .line 548
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getmEqGain()[I

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->intToFloat([I)[F

    move-result-object v0

    .line 549
    iget-boolean v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 551
    array-length v1, v0

    div-int/lit8 v1, v1, 0x2

    .line 552
    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v3

    iput-object v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    .line 553
    array-length v3, v0

    invoke-static {v0, v1, v3}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    .line 554
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/TableView;->setWave([F)V

    .line 555
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/TableView;->setWave([F)V

    goto :goto_0

    .line 557
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v1, v0}, Lcom/nwd/audioset/view/nwdview/TableView;->setWave([F)V

    .line 560
    :goto_0
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz v0, :cond_4

    .line 561
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getFrequence()[I

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->intToStr([I)[Ljava/lang/String;

    move-result-object v0

    .line 562
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqQValue()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeQValue([I)[Ljava/lang/String;

    move-result-object v1

    .line 563
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/dsp/uitls/DspManager;->getmEqGain()[I

    move-result-object v3

    invoke-static {v3}, Lcom/nwd/dsp/uitls/AppUtil;->disposeGValue([I)[Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x20

    if-eqz v0, :cond_3

    .line 565
    array-length v5, v0

    if-ne v5, v4, :cond_3

    if-eqz v1, :cond_3

    array-length v5, v1

    if-ne v5, v4, :cond_3

    if-eqz v3, :cond_3

    array-length v5, v3

    if-ne v5, v4, :cond_3

    .line 567
    iget v5, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->length_sub:I

    new-array v6, v5, [Ljava/lang/String;

    .line 568
    new-array v7, v5, [Ljava/lang/String;

    .line 569
    new-array v8, v5, [Ljava/lang/String;

    .line 570
    new-array v9, v5, [Ljava/lang/String;

    .line 571
    new-array v10, v5, [Ljava/lang/String;

    .line 572
    new-array v5, v5, [Ljava/lang/String;

    :goto_1
    if-ge v2, v4, :cond_2

    .line 575
    iget v11, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->length_sub:I

    if-ge v2, v11, :cond_1

    .line 576
    aget-object v11, v0, v2

    aput-object v11, v6, v2

    .line 577
    aget-object v11, v1, v2

    aput-object v11, v8, v2

    .line 578
    aget-object v11, v3, v2

    aput-object v11, v10, v2

    goto :goto_2

    :cond_1
    sub-int v11, v2, v11

    .line 581
    aget-object v12, v0, v2

    aput-object v12, v7, v11

    .line 582
    aget-object v12, v1, v2

    aput-object v12, v9, v11

    .line 583
    aget-object v12, v3, v2

    aput-object v12, v5, v11

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 586
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, v6}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 587
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, v8}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, v10}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, v7}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 591
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, v9}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    goto/16 :goto_3

    .line 594
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getFrequence()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->intToStr([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 595
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqQValue()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeQValue([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 596
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqGain()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeGValue([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 598
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getFrequence()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->intToStr([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqQValue()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeQValue([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 600
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqGain()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeGValue([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    goto :goto_3

    .line 604
    :cond_4
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getFrequence()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->intToStr([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 605
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqQValue()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeQValue([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    .line 606
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmEqGain()[I

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->disposeGValue([I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setmText([Ljava/lang/String;)V

    :goto_3
    if-eqz p1, :cond_5

    const/4 p1, -0x1

    .line 611
    iput p1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    .line 612
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 613
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 614
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz v0, :cond_5

    .line 615
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 616
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 621
    :cond_5
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateButtonBgUi(Ljava/lang/String;)V

    return-void
.end method

.method private updateUiWidth()V
    .locals 14

    const-string v0, "dsp3-MainFragemnt"

    .line 781
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v1, v1, v2

    const v2, 0x3d15bc02

    mul-float v2, v2, v1

    const v3, 0x3cc39581    # 0.023875f

    mul-float v3, v3, v1

    const-string v4, "updateUiWidth swidth=%s, marginLeft=%s, marginRight=%s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    .line 785
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v9, 0x2

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v4, 0x7f0902fe

    .line 786
    invoke-virtual {p0, v4}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v2, v2

    .line 787
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    float-to-int v3, v3

    .line 788
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 789
    iget-boolean v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v4, :cond_0

    const v4, 0x7f0902ff

    .line 790
    invoke-virtual {p0, v4}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 791
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 792
    iput v3, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 795
    :cond_0
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v2

    .line 796
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 798
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    const v5, 0x7f0901c4

    const v6, 0x7f0901c3

    if-nez v4, :cond_3

    const/16 v4, 0x2d0

    if-lt v3, v4, :cond_3

    .line 799
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f070271

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    .line 800
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f07026c

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v10, v10

    .line 801
    invoke-virtual {p0, v6}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v2, :cond_1

    const/high16 v12, 0x45100000    # 2304.0f

    cmpl-float v1, v1, v12

    if-ltz v1, :cond_1

    const/16 v1, 0x380

    if-ne v3, v1, :cond_1

    .line 803
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0702f7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 804
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 805
    invoke-virtual {p0, v5}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 806
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f07032c

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 807
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v12, 0x7d0

    if-ne v1, v12, :cond_2

    const/16 v1, 0x4b0

    if-ne v3, v1, :cond_2

    .line 809
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f070272

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 810
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07026d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    const v1, 0x7f0901c5

    .line 811
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f070287

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0901ce

    .line 812
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f070291

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0901c6

    .line 813
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0901dc

    .line 814
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f070330

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    goto :goto_0

    .line 816
    :cond_2
    iput v4, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 817
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 821
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v4, 0x500

    if-eqz v2, :cond_6

    const/16 v10, 0x400

    if-gt v1, v10, :cond_6

    const/16 v10, 0x258

    if-gt v3, v10, :cond_6

    .line 824
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "updateUiWidth Language=%s"

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v1, v10, v7

    .line 825
    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "es"

    .line 826
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v10, "uk"

    if-nez v3, :cond_4

    :try_start_1
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "ru"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_4
    const v3, 0x7f090206

    .line 827
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070367

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 828
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    const v3, 0x7f09020c

    .line 829
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    invoke-virtual {v11, v12}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 830
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v3, v11}, Landroid/widget/TextView;->setTextSize(F)V

    .line 831
    invoke-virtual {v1, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const v3, 0x7f0900df

    const v10, 0x7f090207

    if-eqz v1, :cond_5

    .line 832
    invoke-virtual {p0, v10}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070366

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 833
    invoke-virtual {p0, v10}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 834
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v1, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 835
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_1

    .line 837
    :cond_5
    invoke-virtual {p0, v10}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    invoke-virtual {v1, v11}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 838
    invoke-virtual {p0, v10}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setTextSize(F)V

    .line 839
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v1, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 840
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    :goto_1
    const v1, 0x7f09020a

    .line 842
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v3, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 843
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f090209

    .line 844
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v3, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 845
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f090208

    .line 846
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v3, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 847
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    const v1, 0x7f09020b

    .line 848
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-virtual {v3, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setTextSize(F)V

    .line 849
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->getBorderText()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextSize(F)V

    goto :goto_2

    :cond_6
    if-eqz v2, :cond_7

    if-gt v1, v4, :cond_7

    const/16 v1, 0x1e0

    if-gt v3, v1, :cond_7

    .line 853
    invoke-virtual {p0, v6}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 854
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 855
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 856
    invoke-virtual {p0, v5}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 857
    iput v9, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_7
    :goto_2
    if-eqz v2, :cond_8

    .line 860
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v1, :cond_8

    .line 861
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const-string v2, "updateUiWidth width=%s"

    new-array v3, v8, [Ljava/lang/Object;

    .line 863
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gt v1, v4, :cond_8

    .line 866
    invoke-virtual {p0, v6}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 867
    iput v9, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 868
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 869
    invoke-virtual {p0, v5}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const v1, 0x40166666    # 2.35f

    .line 870
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 885
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 75
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentMain1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentMain1Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->binding1:Lcom/nwd/audioset/databinding/FragmentMain1Binding;

    .line 78
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentMain1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentMainBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentMainBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->binding:Lcom/nwd/audioset/databinding/FragmentMainBinding;

    .line 81
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentMainBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/draw/MainP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/draw/MainP;
    .locals 1

    .line 481
    new-instance v0, Lcom/nwd/audioset/view/fragment/draw/MainP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/draw/MainP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 324
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->initTabView()V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u521d\u59cb\u5316eq\u6a21\u5f0f\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-MainFragemnt"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 326
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    return-void
.end method

.method public initView()V
    .locals 4

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/TableView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    .line 93
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/SparkView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    .line 94
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09011f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/FadeLineView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFadeLineView:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    .line 95
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/TableView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    .line 97
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/SparkView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView1:Lcom/nwd/audioset/view/nwdview/SparkView;

    .line 98
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090120

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/FadeLineView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFadeLineView1:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09011c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ButtonsView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    .line 101
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09023a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ButtonsView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    .line 102
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ButtonsView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    .line 103
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isRotatePort(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    const-string v0, "dsp3-MainFragemnt"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "new \u4e00\u4e2aMainFragemnt()\u7684initView ,isRotatePort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09011d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ButtonsView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09023b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ButtonsView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    .line 108
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ButtonsView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_standard:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 112
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09020a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_pop:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 113
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09020b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_rock:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 114
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090209

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_jazz:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 115
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_class:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 116
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090207

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 117
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090208

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 119
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09023f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_reset:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090290

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_setting:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09009d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/LongClickButton;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_add:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    .line 122
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/LongClickButton;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_low:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    .line 124
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 125
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090190

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->iv_eq_logo:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :try_start_1
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    const-string v1, "dsp_eq_logo.png"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 129
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->iv_eq_logo:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 130
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->iv_eq_logo:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 133
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->setButtonMove()V

    .line 137
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->setButtonBG()V

    .line 138
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->setInternational()V

    .line 139
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateDspUi()V

    .line 140
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUiWidth()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "standard"

    const/4 v1, 0x1

    const v2, 0x7f09020c

    if-ne p1, v2, :cond_0

    .line 343
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 344
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_0
    const v2, 0x7f09020a

    if-ne p1, v2, :cond_1

    .line 346
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "pop"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_1
    const v2, 0x7f09020b

    if-ne p1, v2, :cond_2

    .line 349
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "rock"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_2
    const v2, 0x7f090209

    if-ne p1, v2, :cond_3

    .line 352
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "jazz"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_3
    const v2, 0x7f090206

    if-ne p1, v2, :cond_4

    .line 355
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "classic"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 356
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_4
    const v2, 0x7f090207

    if-ne p1, v2, :cond_5

    .line 358
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "customize"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 359
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_5
    const v2, 0x7f090208

    if-ne p1, v2, :cond_6

    .line 361
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "customizetwo"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    goto/16 :goto_0

    :cond_6
    const v2, 0x7f09023f

    if-ne p1, v2, :cond_7

    .line 364
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->resetData()V

    goto/16 :goto_0

    :cond_7
    const v2, 0x7f090290

    if-ne p1, v2, :cond_8

    .line 366
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/nwd/audioset/view/setting/UserSettingActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->startActivity(Landroid/content/Intent;)V

    .line 367
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/FragmentActivity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_8
    const v2, 0x7f09009d

    if-ne p1, v2, :cond_9

    .line 369
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateBgCustomize()V

    .line 370
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "add"

    invoke-direct {p0, v0, p1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->clickNum(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const v2, 0x7f0900a1

    if-ne p1, v2, :cond_a

    .line 372
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateBgCustomize()V

    .line 373
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "low"

    invoke-direct {p0, v0, p1}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->clickNum(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    const v2, 0x7f0900df

    if-ne p1, v2, :cond_b

    .line 375
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->isSelected()Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 376
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->isSelected()Z

    move-result v2

    invoke-virtual {p1, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendDengxiangData(Z)V

    .line 377
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "T60_XC"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 378
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;Z)V

    :cond_b
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 712
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "dsp3-MainFragemnt"

    const-string v0, "mainfragmen: \u914d\u7f6e\u6539\u53d8"

    .line 713
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/utils/utils/InternationalUtils;->loadResource()V

    .line 716
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->setInternational()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 703
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onDestroy()V

    const-string v0, "dsp3-MainFragemnt"

    const-string v1, "mainfragment: \u7684onDestroy()"

    .line 704
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 491
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onHiddenChanged(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mainfragmen\u88ab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "dsp3-MainFragemnt"

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onItemClicked(Landroid/view/View;ILjava/lang/String;)V
    .locals 5

    .line 640
    iput p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    .line 641
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "qain"

    const-string v2, "gain"

    const/4 v3, -0x1

    const v4, 0x7f09023a

    if-ne v0, v4, :cond_2

    .line 643
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 644
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 646
    :cond_0
    iget-boolean p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz p2, :cond_1

    .line 647
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 648
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 650
    :cond_1
    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    goto :goto_2

    :cond_2
    const v4, 0x7f09015f

    if-ne v0, v4, :cond_5

    .line 652
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 653
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 655
    :cond_3
    iget-boolean p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz p2, :cond_4

    .line 656
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 657
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 659
    :cond_4
    iput-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    goto :goto_2

    :cond_5
    const v4, 0x7f09023b

    if-ne v0, v4, :cond_7

    .line 661
    iget v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->length_sub:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    .line 662
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 663
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 664
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    goto :goto_0

    .line 666
    :cond_6
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 668
    :goto_0
    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    goto :goto_2

    :cond_7
    const v4, 0x7f090160

    if-ne v0, v4, :cond_9

    .line 670
    iget v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->length_sub:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    .line 671
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 672
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 673
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    goto :goto_1

    .line 675
    :cond_8
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setSelectID(I)V

    .line 677
    :goto_1
    iput-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectType:Ljava/lang/String;

    .line 680
    :cond_9
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "id \u4e3a: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  \u70b9\u51fb\u7684\u7b2c: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->selectID:I

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "  :\u503c\u4e3a: "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dsp3-MainFragemnt"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 260
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onPause()V

    .line 261
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/TableView;->onPause()V

    .line 262
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/TableView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 685
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onResume()V

    const-string v0, "dsp3-MainFragemnt"

    const-string v1, "MainFragemnt\u7684: onResume()\u65b9\u6cd5"

    .line 686
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isUsed_customize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->setUsed_customize(Z)V

    const/4 v0, 0x1

    .line 690
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V

    :cond_0
    return-void
.end method

.method public setGainDataToSeekBar([F)V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dsp3-MainFragemnt"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabview\u7684\u56de\u8c03\u503c\u4e3a: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 501
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateBgCustomize()V

    .line 503
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 504
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    .line 505
    array-length v0, p1

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    array-length v1, v1

    add-int/2addr v0, v1

    new-array v0, v0, [F

    .line 506
    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 507
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    array-length v1, v1

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    array-length v4, v4

    invoke-static {p1, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->floatToInt([F)[I

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->send32EQGain([ILjava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->floatToInt([F)[I

    move-result-object p1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nwd/dsp/uitls/DspManager;->send32EQGain([ILjava/lang/String;)V

    .line 514
    :goto_0
    invoke-direct {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 516
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setGainDataToSeekBar1([F)V
    .locals 5

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "dsp3-MainFragemnt"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tabview1\u7684\u56de\u8c03\u503c\u4e3a: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 524
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    .line 525
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    array-length v0, v0

    array-length p1, p1

    add-int/2addr v0, p1

    new-array p1, v0, [F

    .line 526
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 527
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->firstHalf:[F

    array-length v1, v1

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->secondHalf:[F

    array-length v4, v4

    invoke-static {v0, v2, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->floatToInt([F)[I

    move-result-object p1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getmDspEQType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/nwd/dsp/uitls/DspManager;->send32EQGain([ILjava/lang/String;)V

    .line 530
    invoke-direct {p0, v3}, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->updateUi(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 532
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 3

    .line 270
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/TableView;->setTableDataListener(Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;)V

    .line 271
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/TableView;->showAnimator()V

    .line 272
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/TableView;->setTableDataListener1(Lcom/nwd/audioset/view/nwdview/TableView$TableViewDataListener;)V

    .line 274
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/TableView;->showAnimator()V

    .line 278
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspConstant;->isShowSparkView()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 279
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFadeLineView:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->setVisibility(I)V

    .line 280
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFadeLineView:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0, v2}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->setTopLevelTouchListener(Lcom/nwd/audioset/listener/TopLevelTouchListener;)V

    .line 281
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_2

    .line 282
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFadeLineView1:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mFadeLineView1:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->setTopLevelTouchListener(Lcom/nwd/audioset/listener/TopLevelTouchListener;)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/SparkView;->setVisibility(I)V

    .line 287
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0, v2}, Lcom/nwd/audioset/view/nwdview/SparkView;->setTopLevelTouchListener(Lcom/nwd/audioset/listener/TopLevelTouchListener;)V

    .line 288
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView:Lcom/nwd/audioset/view/nwdview/TableView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView:Lcom/nwd/audioset/view/nwdview/SparkView;

    invoke-virtual {v0, v2}, Lcom/nwd/audioset/view/nwdview/TableView;->setSparkView(Lcom/nwd/audioset/view/nwdview/SparkView;)V

    .line 289
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isG5Portrait:Z

    if-eqz v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView1:Lcom/nwd/audioset/view/nwdview/SparkView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/SparkView;->setVisibility(I)V

    .line 291
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView1:Lcom/nwd/audioset/view/nwdview/SparkView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/SparkView;->setTopLevelTouchListener(Lcom/nwd/audioset/listener/TopLevelTouchListener;)V

    .line 292
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mTableView1:Lcom/nwd/audioset/view/nwdview/TableView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mSparkView1:Lcom/nwd/audioset/view/nwdview/SparkView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/TableView;->setSparkView(Lcom/nwd/audioset/view/nwdview/SparkView;)V

    .line 296
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setOnItemClickListener(Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setOnItemClickListener(Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;)V

    .line 298
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->isRotatePort:Z

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mQview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setOnItemClickListener(Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->mGview2:Lcom/nwd/audioset/view/nwdview/ButtonsView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->setOnItemClickListener(Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;)V

    .line 303
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_standard:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 304
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_pop:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_rock:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 306
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_jazz:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_class:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 308
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_mode_custom_two:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 311
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_reset:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 312
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_setting:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_add:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_low:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 315
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/draw/MainFragment;->btn_dengxiang:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
