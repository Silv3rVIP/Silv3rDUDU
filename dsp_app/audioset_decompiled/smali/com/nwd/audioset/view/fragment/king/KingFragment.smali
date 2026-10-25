.class public Lcom/nwd/audioset/view/fragment/king/KingFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "KingFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/king/KingP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-KingFragment"


# instance fields
.field private animBottom:Landroid/view/animation/Animation;

.field private animBottomThree:Landroid/view/animation/Animation;

.field private animBottomTwo:Landroid/view/animation/Animation;

.field private animLeft:Landroid/view/animation/Animation;

.field private animLeftThree:Landroid/view/animation/Animation;

.field private animLeftTwo:Landroid/view/animation/Animation;

.field private animRight:Landroid/view/animation/Animation;

.field private animRightThree:Landroid/view/animation/Animation;

.field private animRightTwo:Landroid/view/animation/Animation;

.field private animTop:Landroid/view/animation/Animation;

.field private animTopThree:Landroid/view/animation/Animation;

.field private animTopTwo:Landroid/view/animation/Animation;

.field private bass_anim_img:Landroid/widget/ImageView;

.field private bass_anim_img_subl:Landroid/widget/ImageView;

.field private bass_anim_img_three:Landroid/widget/ImageView;

.field private bass_anim_img_three_subl:Landroid/widget/ImageView;

.field private bass_anim_img_two:Landroid/widget/ImageView;

.field private bass_anim_img_two_subl:Landroid/widget/ImageView;

.field private bass_bugle_rl:Landroid/widget/RelativeLayout;

.field private bass_delay_text:Landroid/widget/TextView;

.field private bass_dis_text:Landroid/widget/TextView;

.field private bass_img:Landroid/widget/ImageView;

.field private bass_img_subl:Landroid/widget/ImageView;

.field private bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

.field private bass_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

.field private binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

.field private center_anim_img:Landroid/widget/ImageView;

.field private center_anim_img_three:Landroid/widget/ImageView;

.field private center_anim_img_two:Landroid/widget/ImageView;

.field private center_bugle_rl:Landroid/widget/RelativeLayout;

.field private center_delay_text:Landroid/widget/TextView;

.field private center_dis_text:Landroid/widget/TextView;

.field private center_img:Landroid/widget/ImageView;

.field private center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

.field private center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

.field private cmDimens:F

.field private front_left_anim_img:Landroid/widget/ImageView;

.field private front_left_anim_img_three:Landroid/widget/ImageView;

.field private front_left_anim_img_two:Landroid/widget/ImageView;

.field private front_left_delay_text:Landroid/widget/TextView;

.field private front_left_dis_text:Landroid/widget/TextView;

.field private front_left_img:Landroid/widget/ImageView;

.field private front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

.field private front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

.field private front_right_anim_img:Landroid/widget/ImageView;

.field private front_right_anim_img_three:Landroid/widget/ImageView;

.field private front_right_anim_img_two:Landroid/widget/ImageView;

.field private front_right_delay_text:Landroid/widget/TextView;

.field private front_right_dis_text:Landroid/widget/TextView;

.field private front_right_img:Landroid/widget/ImageView;

.field private front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

.field private front_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

.field private homeActivity:Lcom/nwd/audioset/home_horizontalActivity1;

.field private huangdiwei_bg:Landroid/graphics/drawable/Drawable;

.field private huangdiwei_bg_f:Landroid/graphics/drawable/Drawable;

.field private huangdiwei_rl:Landroid/widget/LinearLayout;

.field private isEq4CH:Z

.field private isOnlyFourBugle:Z

.field private king_ch4_btn:Landroid/widget/Button;

.field private king_ch5_btn:Landroid/widget/Button;

.field private king_reset:Landroid/widget/Button;

.field private preProgress:I

.field private suf_left_anim_img:Landroid/widget/ImageView;

.field private suf_left_anim_img_three:Landroid/widget/ImageView;

.field private suf_left_anim_img_two:Landroid/widget/ImageView;

.field private suf_left_delay_text:Landroid/widget/TextView;

.field private suf_left_dis_text:Landroid/widget/TextView;

.field private suf_left_img:Landroid/widget/ImageView;

.field private suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

.field private suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

.field private suf_right_anim_img:Landroid/widget/ImageView;

.field private suf_right_anim_img_three:Landroid/widget/ImageView;

.field private suf_right_anim_img_two:Landroid/widget/ImageView;

.field private suf_right_delay_text:Landroid/widget/TextView;

.field private suf_right_dis_text:Landroid/widget/TextView;

.field private suf_right_img:Landroid/widget/ImageView;

.field private suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

.field private suf_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const v0, 0x4059999a    # 3.4f

    .line 69
    iput v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateHuangdiweiBg()V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/king/KingFragment;)Z
    .locals 0

    .line 42
    iget-boolean p0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isOnlyFourBugle:Z

    return p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh4Btn()V

    return-void
.end method

.method static synthetic access$300(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh51Btn()V

    return-void
.end method

.method static synthetic access$400(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateUi()V

    return-void
.end method

.method private closeAnim()V
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 385
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 386
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 387
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 388
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 389
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 390
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method public static newInstance()Lcom/nwd/audioset/view/fragment/king/KingFragment;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "new KingFragment()"

    aput-object v2, v0, v1

    const-string v1, "dsp3-KingFragment"

    .line 75
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    new-instance v0, Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;-><init>()V

    return-object v0
.end method

.method private selectedCh4Btn()V
    .locals 3

    .line 763
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eq_ch4"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 764
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isEq4CH:Z

    .line 765
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    iput-boolean v0, v1, Lcom/nwd/dsp/uitls/DspManager;->isEq4CH:Z

    .line 767
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch4_btn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 768
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setSelected(Z)V

    .line 770
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 772
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/audioset/application/DspApplication;->initDspConstant()V

    .line 773
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->homeActivity:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-virtual {v1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateDoubleBass()V

    .line 774
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateDoubleBass()V

    .line 775
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh51Btn(Z)V

    .line 776
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateHuangdiweiBg()V

    .line 777
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateDspUi()V

    goto/16 :goto_0

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_rl:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg_f:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 781
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_bugle_rl:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 782
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 784
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 785
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 786
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 788
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 789
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 790
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 792
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 795
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 796
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 797
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 799
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 800
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 801
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 803
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 804
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 805
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 810
    :cond_3
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v0, :cond_4

    .line 811
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f0902ce

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 812
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateUi()V

    goto :goto_0

    .line 814
    :cond_4
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_bugle_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 821
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private selectedCh51Btn()V
    .locals 1

    const/4 v0, 0x0

    .line 826
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh51Btn(Z)V

    return-void
.end method

.method private selectedCh51Btn(Z)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 832
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "eq_ch4"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->put(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 833
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isEq4CH:Z

    .line 834
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iput-boolean v0, p1, Lcom/nwd/dsp/uitls/DspManager;->isEq4CH:Z

    .line 835
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch4_btn:Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 836
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 839
    :cond_0
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 840
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/audioset/application/DspApplication;->initDspConstant()V

    .line 841
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->homeActivity:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-virtual {p1}, Lcom/nwd/audioset/home_horizontalActivity1;->updateDoubleBass()V

    .line 842
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateDoubleBass()V

    .line 843
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateHuangdiweiBg()V

    .line 844
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateDspUi()V

    .line 849
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_rl:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 850
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_bugle_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 851
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_bugle_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 852
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ce

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 853
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-nez p1, :cond_3

    .line 854
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result p1

    if-eqz p1, :cond_2

    .line 855
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTop:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 856
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 857
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopTwo:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 858
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 859
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopThree:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 860
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 862
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getMbass_bugle_delay()I

    move-result p1

    if-eqz p1, :cond_6

    .line 863
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottom:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 864
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 865
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomTwo:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 866
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 867
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomThree:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 868
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 871
    :cond_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result p1

    if-eqz p1, :cond_4

    .line 872
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 873
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 874
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 875
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 876
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 877
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 879
    :cond_4
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left_delay()I

    move-result p1

    if-eqz p1, :cond_5

    .line 880
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 881
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 882
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 883
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 884
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 885
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 887
    :cond_5
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left_delay()I

    move-result p1

    if-eqz p1, :cond_6

    .line 888
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottom:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 889
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 890
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomTwo:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 891
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomThree:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 893
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 897
    :cond_6
    :goto_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-nez p1, :cond_7

    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 898
    :cond_7
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateUi()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 901
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    return-void
.end method

.method private setLightPoints(I)I
    .locals 0

    if-lez p1, :cond_0

    .line 757
    div-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateDspUi()V
    .locals 5

    :try_start_0
    const-string v0, "dsp3-KingFragment"

    const-string v1, "KingFragment: updateDspUi()"

    .line 910
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 912
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_4ch_d:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 913
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_4ch_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 914
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch4_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 916
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_5ch_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 917
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_5ch_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 918
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 920
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 921
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 922
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_reset:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 925
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_laba_img:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 927
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_img:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 929
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070212

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 930
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_img:Landroid/widget/ImageView;

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 931
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 932
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 933
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 934
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 935
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 936
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 937
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_img:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 938
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_img:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 939
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_img:Landroid/widget/ImageView;

    const/high16 v2, -0x3d4c0000    # -90.0f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 940
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_img:Landroid/widget/ImageView;

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->iamgeSetSrc(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 941
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 942
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_img:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 949
    :cond_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateHuangdiweiBg()V

    .line 950
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_rl:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 953
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    if-nez v0, :cond_1

    .line 954
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080087

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 957
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateHuangdiweiBg()V
    .locals 6

    .line 962
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 963
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KingFragment: updateHuangdiweiBg isRotatePort="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsp3-KingFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v1

    const v2, 0x7f0d008e

    const v3, 0x7f0d008d

    const v4, 0x7f0d008c

    if-eqz v0, :cond_1

    .line 968
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v2, 0x7f0d008c

    .line 971
    :goto_0
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_bg:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawablePort(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg:Landroid/graphics/drawable/Drawable;

    .line 972
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_bg_f:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawablePort(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg_f:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 974
    :cond_1
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_bg:Ljava/lang/String;

    .line 977
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget-boolean v5, v5, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v5, :cond_2

    .line 979
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_bg_fy:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const v2, 0x7f0d008c

    .line 981
    :goto_1
    invoke-virtual {v1, v0, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg:Landroid/graphics/drawable/Drawable;

    .line 982
    iget-object v0, v1, Lcom/nwd/audioset/utils/InternationalPictureUtils;->huangdiwei_bg_f:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_bg_f:Landroid/graphics/drawable/Drawable;

    :goto_2
    return-void
.end method

.method private updateUi()V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "updateUi getMsuf_left_delay \u6570\u503c\u4e3a: "

    const-string v3, "updateUi getMfront_left_delay \u6570\u503c\u4e3a: "

    const-string v4, "updateUi getMcenter_bugle_delay \u6570\u503c\u4e3a: "

    const-string v5, "dsp3-KingFragment"

    .line 397
    :try_start_0
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    if-nez v6, :cond_0

    .line 398
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f01001f

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    .line 400
    :cond_0
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    if-nez v6, :cond_1

    .line 401
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010021

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    .line 403
    :cond_1
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    if-nez v6, :cond_2

    .line 404
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010020

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    .line 406
    :cond_2
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRight:Landroid/view/animation/Animation;

    if-nez v6, :cond_3

    .line 407
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010022

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRight:Landroid/view/animation/Animation;

    .line 409
    :cond_3
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightTwo:Landroid/view/animation/Animation;

    if-nez v6, :cond_4

    .line 410
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010024

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightTwo:Landroid/view/animation/Animation;

    .line 412
    :cond_4
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightThree:Landroid/view/animation/Animation;

    if-nez v6, :cond_5

    .line 413
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010023

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightThree:Landroid/view/animation/Animation;

    .line 415
    :cond_5
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTop:Landroid/view/animation/Animation;

    if-nez v6, :cond_6

    .line 416
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010025

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTop:Landroid/view/animation/Animation;

    .line 418
    :cond_6
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopTwo:Landroid/view/animation/Animation;

    if-nez v6, :cond_7

    .line 419
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010027

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopTwo:Landroid/view/animation/Animation;

    .line 421
    :cond_7
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopThree:Landroid/view/animation/Animation;

    if-nez v6, :cond_8

    .line 422
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f010026

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopThree:Landroid/view/animation/Animation;

    .line 424
    :cond_8
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottom:Landroid/view/animation/Animation;

    if-nez v6, :cond_9

    .line 425
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f01001c

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottom:Landroid/view/animation/Animation;

    .line 427
    :cond_9
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomTwo:Landroid/view/animation/Animation;

    if-nez v6, :cond_a

    .line 428
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f01001e

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomTwo:Landroid/view/animation/Animation;

    .line 430
    :cond_a
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomThree:Landroid/view/animation/Animation;

    if-nez v6, :cond_b

    .line 431
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v6

    const v7, 0x7f01001d

    invoke-static {v6, v7}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    iput-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomThree:Landroid/view/animation/Animation;

    .line 433
    :cond_b
    new-instance v6, Ljava/text/DecimalFormat;

    const-string v7, "0.0"

    new-instance v8, Ljava/text/DecimalFormatSymbols;

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v8, v9}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v6, v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .line 435
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    if-eqz v7, :cond_17

    .line 436
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateUi dsp_double_bass: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v8

    iget-boolean v8, v8, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", isEq4CH: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isEq4CH:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_right_delay()I

    move-result v7
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "%.1f"

    const/4 v10, 0x1

    const v12, 0x7f0e00dd

    const-string v13, "0"

    const/4 v15, 0x0

    if-eqz v7, :cond_c

    .line 438
    :try_start_1
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRight:Landroid/view/animation/Animation;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 439
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_two:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightTwo:Landroid/view/animation/Animation;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 441
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_three:Landroid/widget/ImageView;

    iget-object v14, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightThree:Landroid/view/animation/Animation;

    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 443
    iget-object v7, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 444
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_right_delay()I

    move-result v7

    .line 445
    iget-object v14, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v7}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v11

    invoke-virtual {v14, v11}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 446
    iget-object v11, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v11, v7}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    int-to-float v7, v7

    .line 448
    iget v11, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v11, v11, v7

    move-object/from16 v16, v9

    float-to-double v8, v11

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 449
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_dis_text:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_delay_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v14, v10, [Ljava/lang/Object;

    const/high16 v17, 0x41200000    # 10.0f

    div-float v7, v7, v17

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v14, v15

    move-object/from16 v7, v16

    invoke-static {v11, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f0e00ee

    invoke-virtual {v1, v11}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    :cond_c
    move-object v7, v9

    .line 455
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 456
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 458
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 459
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 460
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v8, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 462
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v8, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 463
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_dis_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_delay_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f0e00ee

    invoke-virtual {v1, v11}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 468
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_right_delay()I

    move-result v8

    if-eqz v8, :cond_d

    .line 469
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRight:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 470
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 471
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_two:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightTwo:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 472
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_three:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animRightThree:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_right_delay()I

    move-result v8

    .line 476
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 477
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v9, v8}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    int-to-float v8, v8

    .line 479
    iget v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v9, v9, v8

    float-to-double v10, v9

    invoke-virtual {v6, v10, v11}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 480
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_dis_text:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 481
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_delay_text:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v14, 0x1

    new-array v12, v14, [Ljava/lang/Object;

    const/high16 v14, 0x41200000    # 10.0f

    div-float/2addr v8, v14

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v12, v15

    invoke-static {v11, v7, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0e00ee

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_img:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_1

    .line 485
    :cond_d
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v8, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 486
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v8, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 487
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 488
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 490
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 492
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_dis_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0e00dd

    invoke-virtual {v1, v10}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_delay_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0e00ee

    invoke-virtual {v1, v10}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 497
    :goto_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMbass_bugle_delay()I

    move-result v8

    if-eqz v8, :cond_e

    .line 498
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottom:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 499
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 500
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomTwo:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 501
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomThree:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 503
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMbass_bugle_delay()I

    move-result v8

    .line 505
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 506
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v9, v8}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    int-to-float v8, v8

    .line 507
    iget v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v9, v9, v8

    float-to-double v9, v9

    invoke-virtual {v6, v9, v10}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v9

    .line 508
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_dis_text:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f0e00dd

    invoke-virtual {v1, v9}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_delay_text:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v14, v15

    invoke-static {v11, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0e00ee

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img:Landroid/widget/ImageView;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_2

    .line 512
    :cond_e
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v8, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 513
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v8, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 514
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 515
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 516
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 517
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 519
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 520
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_dis_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0e00dd

    invoke-virtual {v1, v10}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 521
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_delay_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v10, 0x7f0e00ee

    invoke-virtual {v1, v10}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 526
    :goto_2
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v8

    iget-boolean v8, v8, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-nez v8, :cond_12

    .line 527
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left_delay()I

    move-result v2

    if-eqz v2, :cond_f

    .line 528
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 529
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 530
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 531
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 533
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 534
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left_delay()I

    move-result v2

    .line 535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMfront_left_delay \u6570\u503c\u4e3a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 537
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    int-to-float v2, v2

    .line 538
    iget v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v3, v3, v2

    float-to-double v3, v3

    invoke-virtual {v6, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 539
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_delay_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v2, v10

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v11, v15

    invoke-static {v9, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_dis_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e00dd

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 541
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_3

    .line 543
    :cond_f
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 544
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 545
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 546
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 548
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 550
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 551
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_delay_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00ee

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 552
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_dis_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00dd

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 556
    :goto_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left_delay()I

    move-result v2

    if-eqz v2, :cond_10

    .line 557
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 558
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 559
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 560
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 561
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 562
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 563
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left_delay()I

    move-result v2

    .line 564
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 565
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    int-to-float v2, v2

    .line 567
    iget v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v3, v3, v2

    float-to-double v3, v3

    invoke-virtual {v6, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 568
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_dis_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e00dd

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_delay_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v10, v15

    invoke-static {v8, v7, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 570
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_4

    .line 572
    :cond_10
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 573
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 574
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 575
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 576
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 577
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 578
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 579
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 580
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_dis_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00dd

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_delay_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00ee

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 586
    :goto_4
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result v2

    if-eqz v2, :cond_11

    .line 587
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTop:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 588
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 589
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopTwo:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 590
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 591
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animTopThree:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 592
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 593
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result v2

    .line 594
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 595
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 596
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcenter_bugle_delay \u6570\u503c\u4e3a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-float v2, v2

    .line 597
    iget v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v3, v3, v2

    float-to-double v3, v3

    invoke-virtual {v6, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 598
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_dis_text:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e00dd

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_delay_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v15

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 600
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_img:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_8

    .line 602
    :cond_11
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 603
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 604
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 605
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 607
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 609
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 610
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_dis_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00dd

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_delay_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00ee

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    goto/16 :goto_8

    .line 615
    :cond_12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v9

    invoke-virtual {v9}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result v8

    if-eqz v8, :cond_13

    .line 617
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 618
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 619
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 620
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 622
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v8, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 623
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle_delay()I

    move-result v8

    .line 624
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v9

    invoke-virtual {v4, v9}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 626
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v4, v8}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    int-to-float v4, v8

    .line 627
    iget v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v8, v8, v4

    float-to-double v8, v8

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v8

    .line 628
    iget-object v9, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_delay_text:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v12, 0x1

    new-array v14, v12, [Ljava/lang/Object;

    const/high16 v12, 0x41200000    # 10.0f

    div-float/2addr v4, v12

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v14, v15

    invoke-static {v11, v7, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00ee

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 629
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_dis_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0e00dd

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 630
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_5

    .line 632
    :cond_13
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 633
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 634
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 635
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 636
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->clearAnimation()V

    .line 637
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 638
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v4, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 639
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v4, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 640
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_delay_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f0e00ee

    invoke-virtual {v1, v9}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_dis_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v9, 0x7f0e00dd

    invoke-virtual {v1, v9}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 644
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left_delay()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left_delay()I

    move-result v4

    if-eqz v4, :cond_14

    .line 646
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeft:Landroid/view/animation/Animation;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 647
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 648
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftTwo:Landroid/view/animation/Animation;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 649
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 650
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animLeftThree:Landroid/view/animation/Animation;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 651
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v4, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 652
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left_delay()I

    move-result v4

    .line 653
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 655
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v8

    invoke-virtual {v3, v8}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    int-to-float v3, v4

    .line 657
    iget v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v4, v4, v3

    float-to-double v8, v4

    invoke-virtual {v6, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    .line 658
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_dis_text:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00dd

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_delay_text:Landroid/widget/TextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/high16 v10, 0x41200000    # 10.0f

    div-float/2addr v3, v10

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v11, v15

    invoke-static {v9, v7, v11}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e00ee

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_6

    .line 662
    :cond_14
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 663
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 664
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 665
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 667
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->clearAnimation()V

    .line 669
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_dis_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0e00dd

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_delay_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v8, 0x7f0e00ee

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 672
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 674
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left_delay()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left_delay()I

    move-result v3

    if-eqz v3, :cond_16

    iget-boolean v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isEq4CH:Z

    if-eqz v3, :cond_15

    iget-boolean v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isEq4CH:Z

    if-eqz v3, :cond_16

    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 676
    :cond_15
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottom:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 677
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 678
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomTwo:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 679
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 680
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->animBottomThree:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 681
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    invoke-virtual {v3, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 682
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left_delay()I

    move-result v3

    .line 683
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {v1, v3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 685
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    int-to-float v2, v3

    .line 686
    iget v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v3, v3, v2

    float-to-double v3, v3

    invoke-virtual {v6, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 687
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_dis_text:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f0e00dd

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 688
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_delay_text:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v8, v15

    invoke-static {v5, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0e00ee

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 689
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img_subl:Landroid/widget/ImageView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_7

    .line 691
    :cond_16
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 692
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2, v15}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgress(I)V

    .line 693
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 694
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 695
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 696
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 697
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 698
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 699
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_dis_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00dd

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 700
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_delay_text:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f0e00ee

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img_subl:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 703
    :goto_7
    iget-boolean v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isEq4CH:Z

    if-eqz v2, :cond_17

    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v2

    if-nez v2, :cond_17

    .line 704
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 705
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 706
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 707
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 708
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->clearAnimation()V

    .line 709
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 710
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img:Landroid/widget/ImageView;

    invoke-virtual {v2, v15}, Landroid/widget/ImageView;->setSelected(Z)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 719
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 717
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_17
    :goto_8
    return-void
.end method

.method private updateUiWidth()V
    .locals 24

    move-object/from16 v1, p0

    const-string v2, ", w="

    const-string v3, ", heightPixels="

    const-string v4, "KingFragment: updateUiWidth instrumentHeight="

    const-string v5, "dsp3-KingFragment"

    .line 997
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v6, v6

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    mul-float v6, v6, v7

    .line 998
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v8

    .line 999
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v9

    iget v9, v9, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v8

    iget v8, v8, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v8, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v8

    iget v8, v8, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    if-lez v8, :cond_0

    .line 1002
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v7

    iget v7, v7, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    int-to-float v7, v7

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    mul-float v7, v7, v8

    .line 1005
    :cond_0
    iget-object v8, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    float-to-double v9, v6

    const-wide v11, 0x3fd20c49ba5e353fL    # 0.282

    .line 1007
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v11, v11, v9

    double-to-int v11, v11

    float-to-double v12, v7

    const-wide v14, 0x3fbd70a3d70a3d71L    # 0.115

    .line 1008
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    double-to-int v14, v14

    const-wide v15, 0x3fcd0e5604189375L    # 0.227

    .line 1009
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v17, v14

    mul-double v14, v9, v15

    double-to-int v14, v14

    const-wide v15, 0x3fe449ba5e353f7dL    # 0.634

    .line 1010
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v18, v14

    mul-double v14, v12, v15

    double-to-int v14, v14

    const-wide v15, 0x3fb999999999999aL    # 0.1

    .line 1011
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v19, v14

    mul-double v14, v12, v15

    double-to-int v14, v14

    if-eqz v8, :cond_3

    const-wide v14, 0x3f9eb851eb851eb8L    # 0.03

    .line 1013
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    double-to-int v14, v14

    const-wide v15, 0x3fdab020c49ba5e3L    # 0.417

    .line 1014
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v17, v14

    mul-double v14, v9, v15

    double-to-int v14, v14

    const-wide v15, 0x3fdf5c28f5c28f5cL    # 0.49

    .line 1015
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v18, v14

    mul-double v14, v12, v15

    double-to-int v14, v14

    const-wide v15, 0x3fb1eb851eb851ecL    # 0.07

    .line 1016
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v19, v14

    mul-double v14, v12, v15

    double-to-int v14, v14

    .line 1017
    :try_start_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v15

    iget-boolean v15, v15, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v15, :cond_1

    const-wide v14, 0x3fb47ae147ae147bL    # 0.08

    .line 1018
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v14, v14, v12

    double-to-int v14, v14

    const-wide v15, 0x3fc1eb851eb851ecL    # 0.14

    .line 1019
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v17, v14

    mul-double v14, v12, v15

    double-to-int v14, v14

    goto :goto_1

    .line 1020
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v15

    iget v15, v15, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lez v15, :cond_2

    const-wide v15, 0x3fc3333333333333L    # 0.15

    .line 1021
    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v20, v14

    mul-double v14, v12, v15

    double-to-int v14, v14

    move-object/from16 v16, v2

    goto :goto_0

    :cond_2
    move/from16 v20, v14

    move-object/from16 v16, v2

    move/from16 v14, v17

    :goto_0
    move/from16 v15, v19

    move/from16 v2, v20

    goto :goto_2

    :cond_3
    :goto_1
    move-object/from16 v16, v2

    move v2, v14

    move/from16 v14, v17

    move/from16 v15, v19

    :goto_2
    const-wide v19, 0x3fdbb645a1cac083L    # 0.433

    .line 1026
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    move/from16 v17, v11

    move-wide/from16 v21, v12

    mul-double v11, v9, v19

    double-to-int v11, v11

    .line 1027
    :try_start_3
    iget-object v12, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070226

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    .line 1028
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move/from16 v19, v6

    const v6, 0x7f070203

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    add-float/2addr v12, v13

    iget-object v13, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    .line 1029
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v6, 0x7f070227

    invoke-virtual {v13, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v12, v6

    float-to-int v6, v12

    sub-int/2addr v11, v6

    .line 1033
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1034
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v13

    iget v13, v13, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v23, v6

    if-nez v8, :cond_4

    const/16 v6, 0x900

    if-lt v12, v6, :cond_4

    const/16 v6, 0x380

    if-ne v13, v6, :cond_4

    const/16 v6, 0x41

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 1038
    :goto_3
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v12

    iget v12, v12, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v13, 0x960

    if-ne v12, v13, :cond_6

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v12

    iget v12, v12, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v13, 0x380

    if-eq v12, v13, :cond_5

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v12

    iget v12, v12, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v13, 0x384

    if-ne v12, v13, :cond_6

    :cond_5
    const/16 v6, -0x82

    .line 1042
    :cond_6
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v12

    iget-boolean v12, v12, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v12, :cond_7

    const/16 v6, -0x8c

    const-wide v12, 0x3fc851eb851eb852L    # 0.19

    .line 1044
    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    double-to-int v9, v9

    .line 1046
    :try_start_4
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v12, 0x7f09017a

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f070204

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    float-to-int v12, v12

    const/4 v13, 0x0

    invoke-virtual {v10, v13, v13, v12, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 1047
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v10, v10, Lcom/nwd/audioset/databinding/FragmentKingBinding;->viewLine:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f060078

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    invoke-virtual {v10, v12}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_4

    :cond_7
    move/from16 v9, v18

    .line 1049
    :goto_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "KingFragment: updateUiWidth top1="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",appScreenHeightDp="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    iget v3, v3, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", density="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlKingLaba:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/2addr v6, v11

    .line 1051
    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1052
    iput v14, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1053
    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1054
    iput v15, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1057
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlFrontLeftLaba:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1059
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1061
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlFrontRightLaba:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1062
    iput v2, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1064
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlSufLeftLaba:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide v9, 0x3fb70a3d70a3d70aL    # 0.09

    .line 1065
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v21, v9

    double-to-int v3, v12

    .line 1066
    :try_start_5
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget-boolean v6, v6, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_8

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    .line 1067
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v21, v9

    double-to-int v3, v12

    .line 1069
    :cond_8
    :try_start_6
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1071
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlSufRightLaba:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1072
    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1073
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    iget v3, v3, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",\u66f4\u65b0 heightPixels="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-nez v2, :cond_9

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    const/16 v3, 0xc8

    if-le v2, v3, :cond_9

    const/high16 v2, 0x44490000    # 804.0f

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_9

    const/high16 v2, 0x3f500000    # 0.8125f

    mul-float v2, v2, v7

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 1080
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->centerBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1081
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->centerBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1082
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->centerProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1083
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->centerProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1086
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->centerKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    int-to-double v9, v2

    const-wide v12, 0x3feccccccccccccdL    # 0.9

    invoke-static {v9, v10}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v9, v9, v12

    double-to-int v4, v9

    :try_start_7
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1087
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->centerKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1091
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontLeftBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1092
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontLeftBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1093
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontLeftProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1094
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontLeftProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1097
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontLeftKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1098
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontLeftKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1100
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufLeftBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1101
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufLeftBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1102
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufLeftProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1103
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufLeftProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1106
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufLeftKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1107
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufLeftKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1111
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontRightBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1112
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontRightBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1113
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontRightProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1114
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontRightProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1115
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontRightKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1116
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->frontRightKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1118
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufRightBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1119
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufRightBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1120
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufRightProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1121
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufRightProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1122
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufRightKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1123
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->sufRightKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1125
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->bassBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1126
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->bassBugleRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1127
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->bassProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1128
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentKingBinding;->bassProView:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-virtual {v3}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1129
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->bassKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1130
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->bassKnobView:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v2}, Lcom/nwd/audioset/view/nwdview/Knob;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1134
    :cond_9
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v2

    const/16 v3, 0x500

    if-eqz v2, :cond_11

    .line 1137
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f070240

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    const v4, 0x3eb33333    # 0.35f

    mul-float v6, v19, v4

    float-to-int v4, v6

    sub-int v4, v4, v23

    sub-int/2addr v4, v2

    int-to-float v4, v4

    .line 1141
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f0701a9

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    sub-float/2addr v4, v6

    float-to-int v13, v4

    const v4, 0x3e606e1a    # 0.21917f

    mul-float v6, v19, v4

    float-to-int v4, v6

    sub-int/2addr v4, v2

    int-to-float v2, v4

    .line 1144
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070203

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v2, v4

    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v2, v4

    float-to-int v2, v2

    if-lez v13, :cond_a

    .line 1146
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/FragmentKingBinding;->llKingLabaLeft:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v13, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :cond_a
    if-lez v2, :cond_b

    .line 1149
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v4, v4, Lcom/nwd/audioset/databinding/FragmentKingBinding;->llKingLabaRight:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 1152
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v6, 0x2d0

    if-lt v4, v6, :cond_c

    .line 1155
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070099

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    .line 1156
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070095

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    float-to-int v9, v9

    .line 1157
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v10, v10, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingCh4Btn:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1158
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v10, v10, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingCh4Btn:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v9, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1159
    iget-object v10, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v10, v10, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingCh5Btn:Landroid/widget/Button;

    invoke-virtual {v10}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v6, v10, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1160
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v6, v6, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingCh5Btn:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v9, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_c
    const/high16 v6, 0x44a00000    # 1280.0f

    cmpg-float v6, v19, v6

    if-gtz v6, :cond_e

    const/16 v6, 0x1e0

    if-gt v4, v6, :cond_e

    const/16 v4, 0x82

    const/16 v6, 0x82

    .line 1168
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v9

    iget v9, v9, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    if-gt v9, v3, :cond_d

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    iget v3, v3, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v9, 0x1c4

    if-gt v3, v9, :cond_d

    const/16 v3, 0x79

    .line 1171
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0901a4

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1172
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f07030f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1173
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v6, 0x7f0901a5

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1174
    iget-object v6, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f07030f

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1176
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07032a

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const v6, 0x7f0900b3

    .line 1177
    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1178
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1179
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v6, 0x7f090140

    .line 1180
    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1181
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1182
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v6, 0x7f090155

    .line 1183
    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1184
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1185
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v6, 0x7f0902e8

    .line 1186
    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1187
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1188
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v6, 0x7f0902d3

    .line 1189
    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1190
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1191
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v6, 0x7f09007f

    .line 1192
    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1193
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1194
    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v4, 0x7f09031f

    .line 1195
    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f070309

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f09032b

    .line 1196
    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f090334

    .line 1197
    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f09032a

    .line 1198
    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f090335

    .line 1199
    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const v4, 0x7f09032e

    .line 1200
    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v6, 0x79

    goto :goto_5

    :cond_d
    const/16 v3, 0x82

    goto :goto_5

    :cond_e
    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1204
    :goto_5
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v9, 0x960

    if-ne v4, v9, :cond_10

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v9, 0x380

    if-eq v4, v9, :cond_f

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v9, 0x384

    if-ne v4, v9, :cond_10

    .line 1205
    :cond_f
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070242

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 1206
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070242

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v6, v4

    :cond_10
    if-lez v3, :cond_17

    if-lez v6, :cond_17

    .line 1210
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_bugle_rl:Landroid/widget/RelativeLayout;

    invoke-virtual {v4}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1211
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1212
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1213
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v9, 0x7f0900ae

    invoke-virtual {v4, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1214
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f09013b

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1215
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1216
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1217
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f09013c

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1218
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f0902ce

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1219
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1220
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1221
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f0902cf

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1223
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f090150

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1224
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1225
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1226
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f090151

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1227
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f0902e3

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1228
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1229
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1230
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f0902e4

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1231
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v10, 0x7f090064

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1232
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1233
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1234
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090065

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 1238
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-lt v2, v3, :cond_13

    .line 1241
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070235

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x76c

    if-lt v2, v4, :cond_12

    .line 1242
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-gtz v2, :cond_12

    const v2, 0x3e75c28f    # 0.24f

    mul-float v2, v2, v7

    float-to-int v3, v2

    .line 1245
    :cond_12
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlHuangdiweiTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1246
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f07022f

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1247
    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto/16 :goto_6

    :cond_13
    const/16 v3, 0x400

    if-lt v2, v3, :cond_15

    .line 1249
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlHuangdiweiTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1250
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070230

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1251
    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070236

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1252
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v6, 0x300

    if-ne v4, v6, :cond_14

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    if-ne v4, v3, :cond_14

    .line 1253
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070238

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_6

    .line 1254
    :cond_14
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v4, :cond_15

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v6, 0x300

    if-ne v4, v6, :cond_15

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v4

    iget v4, v4, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    if-ne v4, v3, :cond_15

    .line 1256
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070239

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1260
    :cond_15
    :goto_6
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-eqz v2, :cond_16

    .line 1261
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingCh4Btn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1262
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070225

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1263
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f070222

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1264
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingCh5Btn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1265
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1266
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1267
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->kingResetBtn:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1268
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070093

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1269
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07008c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1270
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->viewLine:Landroid/view/View;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1271
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->rlHuangdiweiTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1272
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070237

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_16
    const/4 v2, 0x0

    const/4 v13, 0x0

    .line 1275
    :cond_17
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KingFragment: top1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", left1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v17

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", left2="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v19

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", height1="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", w3="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", w5="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v8, :cond_18

    .line 1278
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v2, :cond_18

    const v2, 0x7f0900ad

    .line 1279
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1280
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070241

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1281
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f07023b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v2, 0x7f0900b9

    .line 1282
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1283
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x7f07024f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1284
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v7, 0x7f07024d

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f0900ae

    .line 1285
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1286
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f070253

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1287
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f070251

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f09013b

    .line 1290
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1291
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1292
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v2, 0x7f090145

    .line 1293
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1294
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1295
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f09013c

    .line 1296
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1297
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1298
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f0902ce

    .line 1300
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1301
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1302
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v2, 0x7f0902d8

    .line 1303
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1304
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1305
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f0902cf

    .line 1306
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1307
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1308
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f090150

    .line 1310
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1311
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1312
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v2, 0x7f09015a

    .line 1313
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1314
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1315
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f090151

    .line 1316
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1317
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1318
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f0902e3

    .line 1320
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1321
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1322
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v2, 0x7f0902ed

    .line 1323
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1324
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1325
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f0902e4

    .line 1326
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1327
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1328
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f090064

    .line 1330
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 1331
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1332
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const v2, 0x7f09007e

    .line 1333
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1334
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1335
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const v2, 0x7f090065

    .line 1336
    invoke-virtual {v1, v2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1337
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1338
    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1341
    :cond_18
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v3, 0x960

    if-ne v2, v3, :cond_1a

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x380

    if-eq v2, v3, :cond_19

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v3, 0x384

    if-ne v2, v3, :cond_1a

    .line 1342
    :cond_19
    iget-object v2, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v2, v2, Lcom/nwd/audioset/databinding/FragmentKingBinding;->huangdiweiRl:Landroid/widget/LinearLayout;

    iget-object v3, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070370

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iget-object v4, v1, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070370

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 1345
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1a
    :goto_8
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/home_horizontalActivity1;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->homeActivity:Lcom/nwd/audioset/home_horizontalActivity1;

    .line 81
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentKingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentKingBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    .line 82
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentKingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/king/KingP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/king/KingP;
    .locals 1

    .line 249
    new-instance v0, Lcom/nwd/audioset/view/fragment/king/KingP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/king/KingP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    const/16 v1, 0x8c

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMaxProgress(I)V

    .line 218
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMaxProgress(I)V

    .line 219
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMaxProgress(I)V

    .line 220
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMaxProgress(I)V

    .line 221
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMaxProgress(I)V

    .line 222
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMaxProgress(I)V

    .line 224
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    const v2, 0x7f0d0091

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setRotatDrawable(Landroid/content/Context;II)V

    .line 225
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setRotatDrawable(Landroid/content/Context;II)V

    .line 226
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setRotatDrawable(Landroid/content/Context;II)V

    .line 227
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setRotatDrawable(Landroid/content/Context;II)V

    .line 228
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setRotatDrawable(Landroid/content/Context;II)V

    .line 229
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->setRotatDrawable(Landroid/content/Context;II)V

    return-void
.end method

.method public initView()V
    .locals 5

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090145

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    .line 93
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    .line 94
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    .line 95
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ed

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    .line 97
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090141

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/Knob;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    .line 98
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090156

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/Knob;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    .line 99
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/Knob;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    .line 100
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/Knob;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    .line 102
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090138

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    .line 103
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09013a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    .line 104
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090139

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    .line 105
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_two:Landroid/widget/ImageView;

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_three:Landroid/widget/ImageView;

    .line 108
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902cb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    .line 109
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902cd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    .line 110
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902cc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    .line 111
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    .line 112
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_two:Landroid/widget/ImageView;

    .line 113
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_three:Landroid/widget/ImageView;

    .line 115
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09013f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_img:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090154

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_img:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_img:Landroid/widget/ImageView;

    .line 118
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_img:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09013e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_dis_text:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090153

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_dis_text:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_dis_text:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_dis_text:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09013d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_delay_text:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090152

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_delay_text:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_delay_text:Landroid/widget/TextView;

    .line 128
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_delay_text:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_reset:Landroid/widget/Button;

    .line 132
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    .line 133
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09007e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/PointProgressView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    .line 134
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/Knob;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    .line 135
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/Knob;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    .line 136
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_bugle_rl:Landroid/widget/RelativeLayout;

    .line 137
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_bugle_rl:Landroid/widget/RelativeLayout;

    .line 138
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch4_btn:Landroid/widget/Button;

    .line 139
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0901a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    .line 140
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_dis_text:Landroid/widget/TextView;

    .line 141
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09006b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_dis_text:Landroid/widget/TextView;

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_delay_text:Landroid/widget/TextView;

    .line 143
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09006a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_delay_text:Landroid/widget/TextView;

    .line 145
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_img:Landroid/widget/ImageView;

    .line 146
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090073

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img:Landroid/widget/ImageView;

    .line 147
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    .line 148
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    .line 149
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    .line 150
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09005c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    .line 152
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    .line 153
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09017a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->huangdiwei_rl:Landroid/widget/LinearLayout;

    .line 155
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_img_subl:Landroid/widget/ImageView;

    .line 156
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090059

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_subl:Landroid/widget/ImageView;

    .line 157
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09005d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two_subl:Landroid/widget/ImageView;

    .line 158
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09005b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three_subl:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const v0, 0x7f09024d

    const/16 v1, 0x8

    .line 162
    :try_start_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/nwd/dsp/uitls/DspManager;->isOnlyFourBugle()Z

    move-result v2

    iput-boolean v2, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->isOnlyFourBugle:Z

    if-eqz v2, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh4Btn()V

    .line 165
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 166
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f090245

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateDoubleBass()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 172
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 175
    :goto_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateDspUi()V

    .line 176
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateUiWidth()V

    .line 177
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget-boolean v2, v2, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090246

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvCenter:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e008a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvFrontLeft:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00b7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvRearLeft:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00fe

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvHeavybass:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ff

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    :cond_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v0, :cond_2

    .line 188
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvCenter:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvFrontLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 190
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvRearLeft:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 191
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvHeavybass:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvFrText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->binding:Lcom/nwd/audioset/databinding/FragmentKingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentKingBinding;->tvRrText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0901a5

    if-ne p1, v0, :cond_0

    .line 237
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->sendKingReset()V

    .line 238
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateUi()V

    goto :goto_0

    :cond_0
    const v0, 0x7f0901a3

    if-ne p1, v0, :cond_1

    .line 240
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh4Btn()V

    goto :goto_0

    :cond_1
    const v0, 0x7f0901a4

    if-ne p1, v0, :cond_2

    .line 242
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->selectedCh51Btn()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 725
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onDestroy()V

    const-string v0, "dsp3-KingFragment"

    const-string v1, "KingFragment: \u7684onDestroy()"

    .line 726
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 730
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 731
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 732
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 733
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 734
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 736
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 737
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 738
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 739
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 740
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 741
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_two:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 743
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 744
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 745
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 746
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 747
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 748
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_anim_img_three:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 750
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3

    .line 351
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onHiddenChanged(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kingfragmen\u88ab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "dsp3-KingFragment"

    invoke-static {p1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onProgressChanged(Lcom/nwd/audioset/view/nwdview/Knob;ZI)V
    .locals 8

    .line 261
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/Knob;->getId()I

    move-result p1

    const p2, 0x7f0e00dd

    const v0, 0x7f0e00ee

    const/high16 v1, 0x41200000    # 10.0f

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "%.1f"

    const-string v5, "0.0"

    const v6, 0x7f0900b4

    if-ne p1, v6, :cond_0

    .line 263
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 264
    iget p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    if-eq p3, p1, :cond_5

    .line 265
    iput p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    .line 266
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p1, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p3

    .line 267
    iget v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v5, v5, p3

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 268
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_delay_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_dis_text:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_0
    const v6, 0x7f090075

    if-ne p1, v6, :cond_1

    .line 272
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 273
    iget p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    if-eq p3, p1, :cond_5

    .line 274
    iput p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    .line 275
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p1, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p3

    .line 276
    iget v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v5, v5, p3

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 277
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_delay_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_dis_text:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_1
    const v6, 0x7f090141

    if-ne p1, v6, :cond_2

    .line 281
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 283
    iget p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    if-eq p3, p1, :cond_5

    .line 284
    iput p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    .line 285
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p1, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p3

    .line 286
    iget v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v5, v5, p3

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 287
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_delay_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_dis_text:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_2
    const v6, 0x7f090156

    if-ne p1, v6, :cond_3

    .line 291
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 293
    iget p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    if-eq p3, p1, :cond_5

    .line 294
    iput p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    .line 295
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p1, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p3

    .line 296
    iget v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v5, v5, p3

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 297
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_delay_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_dis_text:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    const v6, 0x7f0902d4

    if-ne p1, v6, :cond_4

    .line 301
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 303
    iget p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    if-eq p3, p1, :cond_5

    .line 304
    iput p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    .line 305
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p1, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p3

    .line 306
    iget v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v5, v5, p3

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 307
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_delay_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 308
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_dis_text:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const v6, 0x7f0902e9

    if-ne p1, v6, :cond_5

    .line 311
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_pro_view:Lcom/nwd/audioset/view/nwdview/PointProgressView;

    invoke-direct {p0, p3}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->setLightPoints(I)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/nwd/audioset/view/nwdview/PointProgressView;->setValue(I)V

    .line 313
    iget p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    if-eq p3, p1, :cond_5

    .line 314
    iput p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->preProgress:I

    .line 315
    new-instance p1, Ljava/text/DecimalFormat;

    new-instance v6, Ljava/text/DecimalFormatSymbols;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v6, v7}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {p1, v5, v6}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p3

    .line 316
    iget v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->cmDimens:F

    mul-float v5, v5, p3

    float-to-double v5, v5

    invoke-virtual {p1, v5, v6}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    .line 317
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_delay_text:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v3, v3, [Ljava/lang/Object;

    div-float/2addr p3, v1

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    aput-object p3, v3, v2

    invoke-static {v7, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p3, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_dis_text:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/nwd/audioset/view/nwdview/Knob;I)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Lcom/nwd/audioset/view/nwdview/Knob;I)V
    .locals 1

    .line 331
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/Knob;->getId()I

    move-result p1

    const v0, 0x7f090141

    if-ne p1, v0, :cond_0

    .line 334
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "front_left"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f090156

    if-ne p1, v0, :cond_1

    .line 336
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "front_right"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0902d4

    if-ne p1, v0, :cond_2

    .line 338
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "suf_left"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0902e9

    if-ne p1, v0, :cond_3

    .line 340
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "suf_right"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0900b4

    if-ne p1, v0, :cond_4

    .line 342
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "center_bugle"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f090075

    if-ne p1, v0, :cond_5

    .line 344
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "bass_bugle"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    .line 346
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->updateUi()V

    return-void
.end method

.method public setListener()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->center_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V

    .line 203
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->bass_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V

    .line 204
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V

    .line 205
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->front_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V

    .line 206
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_left_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V

    .line 207
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->suf_right_kview:Lcom/nwd/audioset/view/nwdview/Knob;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/Knob;->setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V

    .line 208
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_reset:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch4_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->king_ch5_btn:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 357
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->setUserVisibleHint(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kingfragmen\u88ab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-KingFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 360
    new-instance p1, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V

    const-wide/16 v0, 0x1

    invoke-static {p1, v0, v1}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThreadDelay(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->closeAnim()V

    :goto_0
    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method

.method public updateDoubleBass()V
    .locals 5

    .line 1354
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    const v1, 0x7f090246

    const/4 v2, 0x0

    const/16 v3, 0x8

    const v4, 0x7f09024d

    if-eqz v0, :cond_1

    .line 1355
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v0, :cond_0

    .line 1356
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1359
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1360
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1362
    :cond_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v0, :cond_2

    .line 1364
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1365
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1368
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
