.class public Lcom/nwd/audioset/view/fragment/bass/BassFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "BassFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/bass/BassP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-BassFragment"


# instance fields
.field private animBottom:Landroid/view/animation/Animation;

.field private animLeft:Landroid/view/animation/Animation;

.field private animRight:Landroid/view/animation/Animation;

.field private animTop:Landroid/view/animation/Animation;

.field private area1_left_btn:Landroid/widget/ImageView;

.field private area2_left_btn:Landroid/widget/ImageView;

.field private area3_bottom_btn:Landroid/widget/ImageView;

.field private area3_top_btn:Landroid/widget/ImageView;

.field area_one_value:[F

.field area_three_value:[F

.field area_two_value:[F

.field private bass_anim_img:Landroid/widget/ImageView;

.field private bass_bass_img:Landroid/widget/ImageView;

.field private bass_bass_rl:Landroid/widget/RelativeLayout;

.field private bass_center_anim_img:Landroid/widget/ImageView;

.field private bass_center_img:Landroid/widget/ImageView;

.field private bass_center_rl:Landroid/widget/RelativeLayout;

.field private bass_front_left_anim_img:Landroid/widget/ImageView;

.field private bass_front_left_img:Landroid/widget/ImageView;

.field private bass_front_left_rl:Landroid/widget/RelativeLayout;

.field private bass_front_right_anim_img:Landroid/widget/ImageView;

.field private bass_front_right_img:Landroid/widget/ImageView;

.field private bass_front_right_rl:Landroid/widget/RelativeLayout;

.field private bass_laba:Landroid/widget/ImageView;

.field private bass_laba_subl:Landroid/widget/ImageView;

.field private bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private bass_suf_left_anim_img:Landroid/widget/ImageView;

.field private bass_suf_left_img:Landroid/widget/ImageView;

.field private bass_suf_left_rl:Landroid/widget/RelativeLayout;

.field private bass_suf_right_anim_img:Landroid/widget/ImageView;

.field private bass_suf_right_img:Landroid/widget/ImageView;

.field private bass_suf_right_rl:Landroid/widget/RelativeLayout;

.field private bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

.field private binding:Lcom/nwd/audioset/databinding/FragmentBassBinding;

.field private binding1:Lcom/nwd/audioset/databinding/FragmentBass1Binding;

.field private center_laba:Landroid/widget/ImageView;

.field private center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private commen_reset_d:Landroid/graphics/drawable/Drawable;

.field private commen_reset_n:Landroid/graphics/drawable/Drawable;

.field private dbb_btn:Landroid/widget/Button;

.field private dbb_reset_btn:Landroid/widget/Button;

.field private front_left_laba:Landroid/widget/ImageView;

.field private front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private front_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private front_right_laba:Landroid/widget/ImageView;

.field private height_low_btn:Landroid/widget/Button;

.field private hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

.field private hl_reset_btn:Landroid/widget/Button;

.field private hpf_frequency_tv:Landroid/widget/TextView;

.field private hpf_tv:Landroid/widget/TextView;

.field private hsp:Landroid/widget/Spinner;

.field private hsp_tv:Landroid/widget/TextView;

.field private isFirst:Z

.field public isG5Portrait:Z

.field private ll_3d:Landroid/widget/RelativeLayout;

.field private ll_bdd:Landroid/widget/LinearLayout;

.field private ll_height_low:Landroid/widget/LinearLayout;

.field private lpf_frequency_tv:Landroid/widget/TextView;

.field private lpf_tv:Landroid/widget/TextView;

.field private lsp:Landroid/widget/Spinner;

.field private lsp_tv:Landroid/widget/TextView;

.field private lstTimeMs:J

.field private round3d_btn:Landroid/widget/Button;

.field private round_bass_laba:Landroid/widget/ImageView;

.field private round_center_laba:Landroid/widget/ImageView;

.field private round_front_left_laba:Landroid/widget/ImageView;

.field private round_front_right_laba:Landroid/widget/ImageView;

.field private round_suf_left_laba:Landroid/widget/ImageView;

.field private round_suf_right_laba:Landroid/widget/ImageView;

.field private round_switch:Landroid/widget/Button;

.field private round_waveview:Lcom/nwd/audioset/view/nwdview/WaveView;

.field private suf_left_laba:Landroid/widget/ImageView;

.field private suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private suf_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private suf_right_laba:Landroid/widget/ImageView;

.field private vModePlace:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/16 v0, 0x8

    new-array v1, v0, [F

    .line 75
    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_one_value:[F

    new-array v1, v0, [F

    .line 76
    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_two_value:[F

    new-array v0, v0, [F

    .line 77
    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_three_value:[F

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->isG5Portrait:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDbbUi()V

    return-void
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updataRoundUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    return-object p0
.end method

.method private setButtonBG()V
    .locals 0

    return-void
.end method

.method private setInternational()V
    .locals 3

    .line 785
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_frequency_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "other_frequeny"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 786
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_frequency_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 787
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_slope"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 788
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_rl"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_rlrr"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 791
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_center"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 792
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_subwoof"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updataRoundUi()V
    .locals 3

    .line 382
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->ismRound_switch()Z

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    if-eqz v0, :cond_0

    .line 385
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_waveview:Lcom/nwd/audioset/view/nwdview/WaveView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/WaveView;->start()V

    goto :goto_0

    .line 387
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_waveview:Lcom/nwd/audioset/view/nwdview/WaveView;

    invoke-virtual {v1}, Lcom/nwd/audioset/view/nwdview/WaveView;->stop()V

    .line 389
    :goto_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_front_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 390
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_front_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 391
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_suf_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 392
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_suf_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 393
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_center_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 394
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_bass_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 395
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v1, :cond_1

    .line 396
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090266

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setSelected(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 399
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private updateDbbUi()V
    .locals 10

    .line 554
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animLeft:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 555
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f01001f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animLeft:Landroid/view/animation/Animation;

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animRight:Landroid/view/animation/Animation;

    if-nez v0, :cond_1

    .line 558
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f010022

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animRight:Landroid/view/animation/Animation;

    .line 560
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animTop:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 561
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f010025

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animTop:Landroid/view/animation/Animation;

    .line 563
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animBottom:Landroid/view/animation/Animation;

    if-nez v0, :cond_3

    .line 564
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const v1, 0x7f01001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animBottom:Landroid/view/animation/Animation;

    .line 566
    :cond_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getPf_dbb_area()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f4e\u97f3\u589e\u5f3a\u9009\u4e2d\u533a\u57df\u4e3a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsp3-BassFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 568
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x634a604c

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_6

    const v4, -0x634a4c66

    if-eq v3, v4, :cond_5

    const v4, 0x46107b6c

    if-eq v3, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v3, "area_three"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_5
    const-string v3, "area_two"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v3, "area_one"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    :cond_7
    :goto_0
    const-string v0, " \u503c\u4e3a: "

    const/4 v3, 0x0

    const v4, 0x7f090061

    const/16 v8, 0x8

    if-eqz v1, :cond_f

    if-eq v1, v6, :cond_c

    if-eq v1, v5, :cond_8

    goto/16 :goto_6

    .line 670
    :cond_8
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_top_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 671
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 672
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 673
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_bottom_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 675
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 676
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 677
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 678
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 679
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 680
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_bass_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 682
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_three_value:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 683
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMarea_three_frequence()I

    move-result v1

    .line 684
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/dsp/uitls/DspManager;->getMarea_three_qValue()I

    move-result v3

    .line 685
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u533a\u57df\u4e09\u9891\u7387: "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f09005f

    if-nez v3, :cond_a

    .line 689
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v2, :cond_9

    .line 690
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 691
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 692
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 694
    :cond_9
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 695
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    :goto_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 698
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 700
    :cond_a
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v2, :cond_b

    .line 701
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 702
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animBottom:Landroid/view/animation/Animation;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 703
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 705
    :cond_b
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_anim_img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animTop:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 706
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    :goto_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_anim_img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animBottom:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 709
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 712
    :goto_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_three_value:[F

    int-to-float v2, v3

    aput v2, v0, v1

    .line 713
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {v1, v0}, Lcom/nwd/audioset/view/nwdview/TableView2;->setWave([F)V

    goto/16 :goto_6

    .line 626
    :cond_c
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_top_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 627
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 628
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 629
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_bottom_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 631
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 632
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 633
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 634
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 635
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 636
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_bass_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 637
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v1, :cond_d

    .line 638
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 641
    :cond_d
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_two_value:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 642
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMarea_two_frequence()I

    move-result v1

    .line 643
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/dsp/uitls/DspManager;->getMarea_two_qValue()I

    move-result v3

    .line 644
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u533a\u57df\u4e8c\u9891\u7387: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_e

    .line 649
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 650
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 651
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4

    .line 655
    :cond_e
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_anim_img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 656
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_anim_img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 657
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 658
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    :goto_4
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_two_value:[F

    int-to-float v2, v3

    aput v2, v0, v1

    .line 662
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {v1, v0}, Lcom/nwd/audioset/view/nwdview/TableView2;->setWave([F)V

    goto/16 :goto_6

    .line 575
    :cond_f
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_top_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 576
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 577
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 578
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_bottom_btn:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 581
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 582
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 583
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 584
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 585
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 586
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_bass_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 587
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v1, :cond_10

    .line 588
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 592
    :cond_10
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_one_value:[F

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([FF)V

    .line 594
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMarea_one_frequence()I

    move-result v1

    .line 595
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/dsp/uitls/DspManager;->getMarea_one_qValue()I

    move-result v3

    .line 596
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u533a\u57df\u4e00\u9891\u7387: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v3, :cond_11

    .line 602
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 603
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 605
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 610
    :cond_11
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_anim_img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 614
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_anim_img:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->animRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 617
    :goto_5
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area_one_value:[F

    int-to-float v2, v3

    aput v2, v0, v1

    .line 618
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {v1, v0}, Lcom/nwd/audioset/view/nwdview/TableView2;->setWave([F)V

    :goto_6
    return-void
.end method

.method private updateDspUi()V
    .locals 7

    .line 825
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 826
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_d:Ljava/lang/String;

    const v2, 0x7f0d0053

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 827
    iget-object v2, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_n:Ljava/lang/String;

    const v3, 0x7f0d0056

    invoke-virtual {v0, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 828
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v3, v2, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 829
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v3, v2, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 830
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v3, v2, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 831
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v3, v2, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 833
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_gaoditong_d:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 834
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_gaoditong_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 835
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->height_low_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 837
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_dbb_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 838
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_dbb_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 839
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 841
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_3d_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 842
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_3d_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 843
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round3d_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 845
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_d:Landroid/graphics/drawable/Drawable;

    .line 846
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_n:Landroid/graphics/drawable/Drawable;

    .line 847
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hl_reset_btn:Landroid/widget/Button;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_d:Landroid/graphics/drawable/Drawable;

    invoke-static {v3, v1, v4}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 848
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_reset_btn:Landroid/widget/Button;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_n:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v4}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 850
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 851
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901c8

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 852
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_bar_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 853
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901c7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 855
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->table_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 857
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f09019e

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 858
    :cond_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v1, :cond_1

    .line 859
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06007b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 860
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090177

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 861
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090175

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 862
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090179

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 863
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901e7

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 864
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901e5

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 865
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901e9

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 867
    :cond_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-eqz v1, :cond_2

    .line 869
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090348

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    .line 870
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 871
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090347

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 872
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 873
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090072

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, 0x0

    .line 874
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 875
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 876
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0900ed

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v5, 0xa

    .line 877
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 879
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090247

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 880
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070102

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 881
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0700fc

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 882
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f090088

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 883
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070377

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 886
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070054

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v1, v3, v3, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    const v1, 0x7f090344

    .line 887
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 890
    :cond_2
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->isG5Portrait:Z

    if-eqz v1, :cond_4

    .line 891
    :cond_3
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->diyin_laba_xuanzhong_n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 893
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d002c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 894
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_top_btn:Landroid/widget/ImageView;

    invoke-static {v4, v1, v3}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 895
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    invoke-static {v4, v1, v3}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 896
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    invoke-static {v4, v1, v3}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 897
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_bottom_btn:Landroid/widget/ImageView;

    invoke-static {v4, v1, v3}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 901
    :cond_4
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->gaoditong_che:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 902
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090193

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 903
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->round_3d_che:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 904
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090195

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 905
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_che:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 906
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901a0

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 909
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isShowStart()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 911
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701eb

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 912
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701e8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 913
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->invalidate()V

    .line 914
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_open:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 915
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_close:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 916
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 920
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method private updateHLUI()V
    .locals 6

    const-string v0, "dsp3-BassFragment"

    .line 438
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result v1

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u9ad8\u4f4e\u901a\u533a\u57df\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7f0e00e8

    const v3, 0x7f0e00e7

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_6

    if-eq v1, v4, :cond_4

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto/16 :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 523
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 524
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 525
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 526
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 527
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 528
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 531
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 532
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 533
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 534
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v4}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 537
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_four()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 538
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_four()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_four_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 541
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_four_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 497
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 498
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 499
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 500
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 501
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 502
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 503
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 504
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 507
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 508
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v4}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 509
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 513
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_three()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 514
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_three()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_three_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 517
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_three_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 467
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 468
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 469
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 470
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 471
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 472
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 473
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 474
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 476
    :cond_5
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 477
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 478
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 479
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 483
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_two_qvalue()I

    move-result v1

    .line 484
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4fdd\u5b58\u7684: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_two()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 486
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_two()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 490
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_two_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 491
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_two_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_0

    .line 443
    :cond_6
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 444
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 445
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_left_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 446
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_right_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 447
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 448
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 449
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    .line 450
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 452
    :cond_7
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v4}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 453
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 454
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 455
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v5}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 458
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_one()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_tv:Landroid/widget/TextView;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_one()I

    move-result v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_one_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 462
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_one_qvalue()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->QgetValue(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updateLeftBtn(I)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_btn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 425
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->height_low_btn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 426
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round3d_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 427
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_height_low:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_bdd:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_3d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 417
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->height_low_btn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 418
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round3d_btn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 419
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_height_low:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 420
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_bdd:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 421
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_3d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 407
    :cond_2
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->height_low_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 408
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_btn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 409
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round3d_btn:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 410
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_height_low:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 411
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_bdd:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 412
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_3d:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 413
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hl_reset_btn:Landroid/widget/Button;

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_n:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->commen_reset_d:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method private updateUiWidth()V
    .locals 17

    move-object/from16 v1, p0

    .line 930
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    mul-float v3, v3, v4

    .line 933
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v5

    .line 935
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget v5, v5, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v6, "dsp3-BassFragment"

    if-lez v5, :cond_0

    :try_start_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget v5, v5, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    if-lez v5, :cond_0

    .line 936
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v5

    .line 937
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUiWidth width="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v7, ", screenHeight="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",\u66f4\u65b0 \u53ef\u7528height="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const v5, 0x7f0901bf

    const/high16 v7, 0x44a00000    # 1280.0f

    const/16 v8, 0x380

    const v9, 0x44548000    # 850.0f

    const v10, 0x7f09024c

    const v11, 0x7f0901c0

    const/4 v12, 0x0

    const/4 v13, 0x5

    const/4 v14, 0x0

    if-eqz v2, :cond_1

    .line 940
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v15

    iget-boolean v15, v15, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-nez v15, :cond_4

    .line 941
    iget-object v15, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->vModePlace:Landroid/view/View;

    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    goto/16 :goto_0

    .line 945
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->heightPixels:I

    cmpg-float v16, v4, v9

    if-gtz v16, :cond_2

    .line 946
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v9

    iget v9, v9, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v9, :cond_2

    .line 947
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->vModePlace:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 948
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto/16 :goto_0

    :cond_2
    const/high16 v9, 0x45100000    # 2304.0f

    cmpl-float v9, v3, v9

    if-ltz v9, :cond_3

    if-ne v15, v8, :cond_3

    .line 950
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->vModePlace:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 951
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 952
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 953
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 954
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v15, 0x7f0902dd

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 955
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v15, 0x7f0900b6

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 956
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v15, 0x7f090079

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v13, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 957
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v15, 0x7f090348

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const v15, 0x3e99999a    # 0.3f

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 958
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v15, 0x7f090347

    invoke-virtual {v9, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const v15, 0x3e99999a    # 0.3f

    iput v15, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    .line 959
    :cond_3
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v9

    iget v9, v9, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v9, :cond_4

    cmpg-float v9, v3, v7

    if-gtz v9, :cond_4

    .line 960
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v9, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 961
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 962
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 963
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 964
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 965
    iput v14, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :cond_4
    :goto_0
    const v15, 0x7f090179

    const v8, 0x7f0901e6

    const v5, 0x7f090176

    if-nez v2, :cond_a

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v13, 0x7f0700e0

    invoke-virtual {v14, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    .line 972
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v11, 0x7f07025a

    invoke-virtual {v14, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v12, 0x7f0700ef

    invoke-virtual {v14, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 974
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v7, 0x7f0700cb

    invoke-virtual {v14, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 975
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v9, 0x7f0700c8

    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    sub-float v13, v4, v13

    sub-float/2addr v13, v11

    sub-float/2addr v13, v12

    sub-float/2addr v13, v7

    sub-float/2addr v13, v9

    const/high16 v7, 0x41200000    # 10.0f

    sub-float/2addr v13, v7

    .line 978
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v9, v13

    .line 979
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v11, 0x41f00000    # 30.0f

    sub-float/2addr v13, v11

    const/high16 v11, 0x40c00000    # 6.0f

    div-float/2addr v13, v11

    float-to-int v12, v13

    .line 983
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0700a8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    int-to-float v14, v12

    cmpl-float v13, v14, v13

    if-lez v13, :cond_5

    .line 985
    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 986
    iput v12, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 987
    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 988
    iput v12, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 990
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v10, 0x7f0700bb

    invoke-virtual {v13, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    cmpl-float v10, v14, v10

    if-lez v10, :cond_6

    .line 992
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v13, 0x7f090175

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 993
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 994
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v13, 0x7f0901e5

    invoke-virtual {v10, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 995
    iput v12, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 997
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v13, 0x7f0700ad

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    cmpl-float v13, v14, v10

    if-lez v13, :cond_7

    .line 999
    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f090174

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    add-float/2addr v10, v11

    float-to-int v10, v10

    .line 1000
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1001
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v13, 0x7f0901e4

    invoke-virtual {v8, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1002
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1004
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0700bb

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    cmpl-float v8, v14, v8

    if-lez v8, :cond_8

    .line 1006
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1007
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1008
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f0901e9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1009
    iput v12, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1011
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x7f0700b8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    cmpl-float v10, v14, v8

    if-lez v10, :cond_9

    .line 1013
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v12, 0x7f090178

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    add-float/2addr v8, v11

    float-to-int v8, v8

    .line 1014
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1015
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0901e8

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 1016
    iput v8, v10, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1019
    :cond_9
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v8

    iget v8, v8, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v8, :cond_a

    const/high16 v8, 0x44a00000    # 1280.0f

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_a

    .line 1020
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v8, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v10, 0x1e

    .line 1021
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1022
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0901e6

    invoke-virtual {v8, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1023
    iput v10, v8, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1024
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v8, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1025
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v10, 0x1

    .line 1026
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1027
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f0901e9

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v10, 0x1e

    .line 1028
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v10, 0x1

    .line 1029
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/lit8 v9, v9, 0x14

    .line 1030
    iput v9, v7, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1035
    :cond_a
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07006e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    float-to-int v7, v7

    int-to-double v8, v7

    const-wide v10, 0x3fc3333333333333L    # 0.15

    .line 1036
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v10, v10, v8

    double-to-int v10, v10

    .line 1037
    :try_start_2
    iget-object v11, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1038
    iput v10, v11, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide v11, 0x3fd1eb851eb851ecL    # 0.28

    .line 1039
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v8

    double-to-int v11, v11

    const/16 v12, 0x400

    const-wide v13, 0x3fc70a3d70a3d70aL    # 0.18

    if-eqz v2, :cond_b

    const v16, 0x44548000    # 850.0f

    cmpg-float v16, v4, v16

    if-gtz v16, :cond_b

    .line 1041
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    :goto_1
    mul-double v13, v13, v8

    double-to-int v11, v13

    goto :goto_2

    :cond_b
    if-eqz v2, :cond_c

    .line 1042
    :try_start_3
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v15

    iget v15, v15, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v5, 0x300

    if-ne v15, v5, :cond_c

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget v5, v5, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v5, v12, :cond_c

    .line 1043
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    goto :goto_1

    .line 1046
    :cond_c
    :goto_2
    :try_start_4
    iget-object v5, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1047
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1048
    iget-object v5, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide v13, 0x3fc851eb851eb852L    # 0.19

    .line 1049
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v13, v13, v8

    double-to-int v11, v13

    .line 1051
    :try_start_5
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1052
    iget-object v5, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1053
    iput v11, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    const-wide v13, 0x3fc0a3d70a3d70a4L    # 0.13

    .line 1054
    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v13

    double-to-int v5, v8

    .line 1055
    :try_start_6
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1056
    iput v5, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1057
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v8}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1058
    iput v5, v8, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    if-nez v2, :cond_d

    .line 1060
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget v5, v5, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-nez v5, :cond_d

    const v5, 0x3eb33333    # 0.35f

    mul-float v3, v3, v5

    float-to-int v3, v3

    const v5, 0x3efd70a4    # 0.495f

    mul-float v5, v5, v4

    float-to-int v5, v5

    int-to-float v8, v5

    const v9, 0x3e19999a    # 0.15f

    mul-float v8, v8, v9

    float-to-int v8, v8

    int-to-float v9, v3

    const v11, 0x3dae147b    # 0.085f

    mul-float v11, v11, v9

    float-to-int v11, v11

    const v13, 0x3d54fdf4    # 0.052f

    mul-float v9, v9, v13

    float-to-int v9, v9

    .line 1067
    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v14, 0x7f090247

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 1068
    iput v3, v13, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1069
    iput v5, v13, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1070
    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v14, 0x7f090088

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1071
    iput v8, v13, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1072
    iput v11, v13, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1073
    iput v9, v13, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Object;

    const-string v13, "updateUiWidth--w1=%s, h1=%s, bottom1=%s, leftMargin=%s, rightMargin=%s"

    const/4 v15, 0x5

    new-array v12, v15, [Ljava/lang/Object;

    .line 1074
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v15, 0x0

    aput-object v3, v12, v15

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v12, v5

    const/4 v3, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v3

    const/4 v3, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v3

    const/4 v3, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v3

    invoke-static {v13, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v14, v5

    invoke-static {v6, v14}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_d
    const v3, 0x7f090261

    const v5, 0x7f0900d7

    const/16 v8, 0x500

    if-nez v2, :cond_10

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1079
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v9

    iget v9, v9, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v11, 0x2d0

    if-lt v2, v11, :cond_e

    .line 1082
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f070099

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1083
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070095

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    const v12, 0x7f09016f

    .line 1084
    invoke-virtual {v1, v12}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v12, 0x7f09016f

    .line 1085
    invoke-virtual {v1, v12}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1086
    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1087
    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v11, v12, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1088
    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    iput v2, v12, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1089
    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f0700e1

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 1092
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070131

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f07012b

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    .line 1094
    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v14, 0x7f0901c7

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    iput v2, v13, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1095
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v13, 0x7f09019e

    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1096
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0900ed

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v12, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1097
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090072

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070092

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1098
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090072

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07008b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1099
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090069

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f070092

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1100
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090069

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07008b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1102
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-nez v2, :cond_f

    .line 1103
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0901c0

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1104
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0700d4

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v11, v11

    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_3

    :cond_e
    const/16 v11, 0x258

    if-gt v2, v11, :cond_f

    .line 1107
    iget-object v11, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v12, 0x7f09024c

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    const v12, 0x3f8ccccd    # 1.1f

    .line 1108
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1109
    iget-object v12, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v13, 0x7f0901c0

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const v13, 0x3f666666    # 0.9f

    .line 1110
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1111
    iget-object v12, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v13, 0x7f090347

    invoke-virtual {v12, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v13, 0x0

    .line 1112
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    if-gt v9, v8, :cond_f

    const/16 v12, 0x1e0

    if-gt v2, v12, :cond_f

    .line 1116
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v12, 0x7f0700cf

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 1117
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1118
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1119
    iget-object v11, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v12, 0x7f0901c0

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 1120
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1121
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1122
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090342

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    .line 1123
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1125
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090176

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v11, 0x1e

    .line 1126
    iput v11, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1127
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v12, 0x7f0901e6

    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1128
    iput v11, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1129
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090179

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x19

    .line 1130
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, 0x1

    .line 1131
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1132
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0901e9

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x19

    .line 1133
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v11, 0x1

    .line 1134
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1135
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090175

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x17

    .line 1136
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1137
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0901e5

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x17

    .line 1138
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1139
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f090174

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1c

    .line 1140
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1141
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v11, 0x7f0901e4

    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v11, 0x1c

    .line 1142
    iput v11, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_f
    :goto_3
    const/16 v2, 0x400

    if-gt v9, v2, :cond_11

    .line 1147
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0901b2

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1148
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v11, 0x7f070077

    invoke-virtual {v9, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v9, 0x0

    .line 1149
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1150
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f090247

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0xa

    .line 1151
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/16 v9, 0xa

    .line 1152
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    goto :goto_4

    .line 1155
    :cond_10
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-nez v2, :cond_11

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v8, :cond_11

    .line 1159
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0901de

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1160
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1161
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0901df

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v9, 0x3f800000    # 1.0f

    .line 1162
    iput v9, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1167
    :cond_11
    :goto_4
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    if-ne v2, v8, :cond_12

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v8, 0x1c4

    if-ne v2, v8, :cond_12

    .line 1168
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1169
    iget-object v5, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070306

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1170
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1171
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070306

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1172
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0901bf

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x5

    .line 1173
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 1174
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0901c9

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1175
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1176
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090267

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1177
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0702f8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1180
    :cond_12
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_14

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x380

    if-eq v2, v3, :cond_13

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x384

    if-ne v2, v3, :cond_14

    .line 1181
    :cond_13
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FragmentBassBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentBassBinding;->llGaoditongBg:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f070370

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v5, v1, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f070370

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v8, v5, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_14
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateUiWidth--height: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", top1: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", sheight="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v6, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1186
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 82
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentBass1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentBass1Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->binding1:Lcom/nwd/audioset/databinding/FragmentBass1Binding;

    .line 85
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentBass1Binding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentBassBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentBassBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FragmentBassBinding;

    .line 88
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentBassBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 47
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/bass/BassP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/bass/BassP;
    .locals 1

    .line 252
    new-instance v0, Lcom/nwd/audioset/view/fragment/bass/BassP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/bass/BassP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 221
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->setYMaxValue(I)V

    .line 222
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    const/16 v1, 0x8

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    const-string v2, ""

    invoke-virtual {v0, v2, v2, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->setupCoordinator(Ljava/lang/String;Ljava/lang/String;[F)V

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
    .end array-data
.end method

.method public initView()V
    .locals 10

    .line 99
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->height_low_btn:Landroid/widget/Button;

    .line 100
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_btn:Landroid/widget/Button;

    .line 101
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round3d_btn:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_height_low:Landroid/widget/LinearLayout;

    .line 103
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901c1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_bdd:Landroid/widget/LinearLayout;

    .line 104
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->ll_3d:Landroid/widget/RelativeLayout;

    .line 105
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/WaveView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_waveview:Lcom/nwd/audioset/view/nwdview/WaveView;

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/TableView2;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    .line 108
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09006e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_rl:Landroid/widget/RelativeLayout;

    .line 109
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090071

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_rl:Landroid/widget/RelativeLayout;

    .line 110
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_rl:Landroid/widget/RelativeLayout;

    .line 111
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_rl:Landroid/widget/RelativeLayout;

    .line 112
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090068

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_rl:Landroid/widget/RelativeLayout;

    .line 113
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f090062

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_bass_rl:Landroid/widget/RelativeLayout;

    .line 114
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09006d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_img:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090070

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_img:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090083

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_img:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090086

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_img:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090067

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_img:Landroid/widget/ImageView;

    .line 119
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090060

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_bass_img:Landroid/widget/ImageView;

    .line 121
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09006c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_anim_img:Landroid/widget/ImageView;

    .line 122
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09006f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_anim_img:Landroid/widget/ImageView;

    .line 123
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090082

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_anim_img:Landroid/widget/ImageView;

    .line 124
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090085

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_anim_img:Landroid/widget/ImageView;

    .line 125
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090066

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_anim_img:Landroid/widget/ImageView;

    .line 126
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09005e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_anim_img:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09014a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 129
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0902dd

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 130
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v5, 0x7f0900b6

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 131
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f090079

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 133
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v7, 0x7f090142

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_left_laba:Landroid/widget/ImageView;

    .line 134
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v7, 0x7f090157

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_right_laba:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v7, 0x7f0902d5

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_left_laba:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v7, 0x7f0902ea

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_right_laba:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v7, 0x7f0900b5

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v8, 0x7f090076

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f090077

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    .line 140
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f090174

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_tv:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0901e4

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_tv:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 143
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 144
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 145
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 146
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090072

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hl_reset_btn:Landroid/widget/Button;

    .line 147
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090069

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_reset_btn:Landroid/widget/Button;

    .line 149
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090268

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_front_left_laba:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090269

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_front_right_laba:Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09026a

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_suf_left_laba:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09026b

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_suf_right_laba:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090267

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_center_laba:Landroid/widget/ImageView;

    .line 154
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090264

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_bass_laba:Landroid/widget/ImageView;

    .line 155
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0901e5

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_frequency_tv:Landroid/widget/TextView;

    .line 156
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090175

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_frequency_tv:Landroid/widget/TextView;

    .line 157
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0901e9

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp_tv:Landroid/widget/TextView;

    .line 158
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090179

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp_tv:Landroid/widget/TextView;

    .line 159
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0900ed

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    .line 160
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f0901e8

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    .line 161
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090178

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    .line 163
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f09004f

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_top_btn:Landroid/widget/ImageView;

    .line 164
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09004c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09004d

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    .line 166
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f09004e

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_bottom_btn:Landroid/widget/ImageView;

    .line 167
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f090342

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->vModePlace:Landroid/view/View;

    .line 172
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isOnlyFourBugle()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v7, 0x8

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateLeftBtn(I)V

    .line 185
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->setButtonBG()V

    .line 186
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->setInternational()V

    .line 187
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDspUi()V

    .line 188
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateUiWidth()V

    .line 189
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDoubleBass()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 310
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f09016f

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 312
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateLeftBtn(I)V

    goto/16 :goto_1

    :cond_0
    const v0, 0x7f0900d7

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 314
    invoke-direct {p0, v1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateLeftBtn(I)V

    goto/16 :goto_1

    :cond_1
    const v0, 0x7f090261

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    .line 316
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateLeftBtn(I)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f09014a

    const-string v2, "area_one"

    const/high16 v3, 0x41f80000    # 31.0f

    const/4 v4, 0x0

    if-ne p1, v0, :cond_3

    .line 318
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendAreaData(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 320
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v5

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v7

    .line 321
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v8

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v9

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v10

    .line 320
    invoke-virtual/range {v5 .. v10}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    .line 322
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    .line 323
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_one()I

    move-result v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_one()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setData(II)V

    .line 324
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-virtual {p1, v4, v3}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setMaxValue(FF)V

    goto/16 :goto_1

    :cond_3
    const v0, 0x7f0902dd

    const-string v5, "area_two"

    if-ne p1, v0, :cond_4

    .line 326
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/nwd/dsp/uitls/DspManager;->sendAreaData(Ljava/lang/String;)V

    .line 327
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 328
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v5

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v7

    .line 329
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v8

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v9

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v10

    .line 328
    invoke-virtual/range {v5 .. v10}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    .line 330
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    .line 331
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_two()I

    move-result v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_two()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setData(II)V

    .line 332
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-virtual {p1, v4, v3}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setMaxValue(FF)V

    goto/16 :goto_1

    :cond_4
    const v0, 0x7f0900b6

    const-string v6, "area_three"

    if-ne p1, v0, :cond_5

    .line 334
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/nwd/dsp/uitls/DspManager;->sendAreaData(Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 336
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v5

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v7

    .line 337
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v8

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v9

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v10

    .line 336
    invoke-virtual/range {v5 .. v10}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    .line 338
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    .line 340
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_three()I

    move-result v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_three()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setData(II)V

    .line 341
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-virtual {p1, v4, v3}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setMaxValue(FF)V

    goto/16 :goto_1

    :cond_5
    const v0, 0x7f090079

    if-ne p1, v0, :cond_6

    .line 343
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "area_four"

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendAreaData(Ljava/lang/String;)V

    .line 344
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 345
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v5

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v7

    .line 346
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v8

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v9

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v10

    .line 345
    invoke-virtual/range {v5 .. v10}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    .line 347
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    .line 348
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getHpf_area_four()I

    move-result v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getLpf_area_four()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setData(II)V

    .line 355
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-virtual {p1, v4, v3}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setMaxValue(FF)V

    goto/16 :goto_1

    :cond_6
    const v0, 0x7f090072

    if-ne p1, v0, :cond_7

    .line 357
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendHLPFReset(Ljava/lang/String;)V

    .line 358
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    .line 359
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 360
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v1

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setData(II)V

    goto/16 :goto_1

    :cond_7
    const v0, 0x7f09004c

    if-ne p1, v0, :cond_8

    .line 362
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendDBBAreaData(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDbbUi()V

    goto :goto_1

    :cond_8
    const v0, 0x7f09004d

    if-ne p1, v0, :cond_9

    .line 365
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/nwd/dsp/uitls/DspManager;->sendDBBAreaData(Ljava/lang/String;)V

    .line 366
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDbbUi()V

    goto :goto_1

    :cond_9
    const v0, 0x7f09004f

    if-eq p1, v0, :cond_c

    const v0, 0x7f09004e

    if-ne p1, v0, :cond_a

    goto :goto_0

    :cond_a
    const v0, 0x7f090069

    if-ne p1, v0, :cond_b

    .line 371
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getPf_dbb_area()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDBBReset(Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDbbUi()V

    goto :goto_1

    :cond_b
    const v0, 0x7f090262

    if-ne p1, v0, :cond_d

    .line 374
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 375
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendRound3DDate(Z)V

    .line 376
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updataRoundUi()V

    goto :goto_1

    .line 368
    :cond_c
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/nwd/dsp/uitls/DspManager;->sendDBBAreaData(Ljava/lang/String;)V

    .line 369
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateDbbUi()V

    :cond_d
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 772
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "dsp3-BassFragment"

    const-string v0, "BassFragment: \u914d\u7f6e\u6539\u53d8"

    .line 773
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/utils/utils/InternationalUtils;->loadResource()V

    .line 776
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->setInternational()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 778
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

    .line 779
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDataChange(II)V
    .locals 7

    .line 806
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hpf_tv:Landroid/widget/TextView;

    const v1, 0x7f0e00e7

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0e00e8

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v2, v4}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 807
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lpf_tv:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/nwd/dsp/uitls/AppUtil;->HFrequency(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 810
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 811
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sget-object v3, Lcom/nwd/audioset/application/DspApplication;->build_N65:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lstTimeMs:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 812
    iput-wide v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lstTimeMs:J

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 813
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataChange--sendHLData \u5de6\u8fb9\u7684\u6570\u636e\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " \u53f3\u8fb9\u7684\u6570\u636e\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "dsp3-BassFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 814
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result v0

    .line 815
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v4

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v6

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 766
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onDestroy()V

    const-string v0, "dsp3-BassFragment"

    const-string v1, "BassFragment: \u7684onDestroy()"

    .line 767
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 733
    :try_start_0
    check-cast p2, Landroid/widget/TextView;

    if-eqz p2, :cond_0

    const/4 p4, -0x1

    .line 735
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 736
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0700a5

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p4

    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextSize(F)V

    :cond_0
    const-string p2, "dsp3-BassFragment"

    .line 738
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "sp\u9009\u4e2d\u4e0b\u6807\u4e3a: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    iget-boolean p2, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->isFirst:Z

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 740
    iput-boolean p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->isFirst:Z

    return-void

    .line 743
    :cond_1
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result p1

    const p2, 0x7f090178

    if-ne p1, p2, :cond_2

    .line 745
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 746
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v2

    .line 747
    invoke-static {p3}, Lcom/nwd/dsp/uitls/AppUtil;->QValue(I)I

    move-result v3

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v4

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v5

    .line 746
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    goto :goto_0

    :cond_2
    const p2, 0x7f0901e8

    if-ne p1, p2, :cond_3

    .line 749
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result p1

    .line 750
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v2

    .line 751
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v3

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v4

    invoke-static {p3}, Lcom/nwd/dsp/uitls/AppUtil;->QValue(I)I

    move-result v5

    .line 750
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 754
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :catchall_0
    :cond_3
    :goto_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public onStopChange(II)V
    .locals 7

    .line 797
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5de6\u8fb9\u7684\u6570\u636e\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u53f3\u8fb9\u7684\u6570\u636e\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-BassFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result v0

    .line 800
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->areaHQValue(I)I

    move-result v4

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->areaLQValue(I)I

    move-result v6

    move v3, p1

    move v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    .line 801
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    return-void
.end method

.method public setGainDataToSeekBar(II)V
    .locals 2

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DBB \u56de\u8c03\u70b9\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  ,"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-BassFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getPf_dbb_area()I

    move-result v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/AppUtil;->area(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendAreayData(Ljava/lang/String;II)V

    return-void
.end method

.method public setListener()V
    .locals 4

    .line 262
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->height_low_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 263
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round3d_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_tabview:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/TableView2;->setTableDataListener(Lcom/nwd/audioset/view/nwdview/TableView2$TableViewDataListener;)V

    .line 266
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_left_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_front_right_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_left_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_suf_right_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_center_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_bass_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->front_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 273
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->suf_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hl_reset_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->dbb_reset_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_switch:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hlSeekbar:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setOnDataChangeListener(Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;)V

    .line 283
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_top_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area1_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area2_left_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->area3_bottom_btn:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 289
    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    const v3, 0x7f0c0052

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v0, 0x7f0c0053

    .line 291
    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 293
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 295
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->isFirst:Z

    .line 302
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->updateHLUI()V

    .line 303
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->lsp:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 304
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->hsp:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 2

    .line 229
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 231
    new-instance p1, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThreadDelay(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method

.method public updateDoubleBass()V
    .locals 12

    .line 1196
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    const v1, 0x7f090265

    const v2, 0x7f090266

    const v3, 0x7f090062

    const v4, 0x7f090063

    const v5, 0x7f090068

    const v6, 0x7f09004e

    const v7, 0x7f09004f

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-eqz v0, :cond_2

    .line 1198
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v10

    const-string v11, "str_subl"

    invoke-virtual {v10, v11}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v10

    const-string v11, "str_subr"

    invoke-virtual {v10, v11}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1201
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->requestLayout()V

    .line 1202
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->requestLayout()V

    .line 1204
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f090248

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1205
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0d00d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1206
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1207
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1210
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1211
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1214
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1216
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1217
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1219
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v2, 0x500

    if-ne v1, v2, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v2, 0x1c4

    if-ne v1, v2, :cond_1

    .line 1220
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070322

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 1222
    :cond_1
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    .line 1224
    :cond_2
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1226
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v10

    const-string v11, "str_center"

    invoke-virtual {v10, v11}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1227
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v10

    invoke-static {v10}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v10

    const-string v11, "str_subwoof"

    invoke-virtual {v10, v11}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1228
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->requestLayout()V

    .line 1229
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_mode_btn:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->requestLayout()V

    .line 1230
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1231
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->bass_laba_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1233
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1234
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1235
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1236
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1237
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->round_center_laba:Landroid/widget/ImageView;

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1240
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1242
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07010c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1246
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method
