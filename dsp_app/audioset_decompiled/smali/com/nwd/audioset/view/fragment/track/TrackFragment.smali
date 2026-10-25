.class public Lcom/nwd/audioset/view/fragment/track/TrackFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "TrackFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/track/TrackP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-TrackFragment"


# instance fields
.field private bass_linkage_btn:Landroid/widget/Button;

.field private bass_mute_btn:Landroid/widget/Button;

.field private bass_mute_tv:Landroid/widget/TextView;

.field private bass_opp_btn:Landroid/widget/Button;

.field private bass_opp_tv:Landroid/widget/TextView;

.field private bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

.field private bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

.field private bass_tv:Landroid/widget/TextView;

.field private binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

.field private binding1:Lcom/nwd/audioset/databinding/FragmentTrack1Binding;

.field private center_mute_btn:Landroid/widget/Button;

.field private center_opp_btn:Landroid/widget/Button;

.field private center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

.field private center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

.field private center_tv:Landroid/widget/TextView;

.field private front_left_mute_btn:Landroid/widget/Button;

.field private front_left_opp_btn:Landroid/widget/Button;

.field private front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

.field private front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

.field private front_left_tv:Landroid/widget/TextView;

.field private front_linkage_btn:Landroid/widget/Button;

.field private front_mute_tv:Landroid/widget/TextView;

.field private front_opp_tv:Landroid/widget/TextView;

.field private front_right_mute_btn:Landroid/widget/Button;

.field private front_right_opp_btn:Landroid/widget/Button;

.field private front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

.field private front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

.field private front_right_tv:Landroid/widget/TextView;

.field public isG5Portrait:Z

.field private suf_left_mute_btn:Landroid/widget/Button;

.field private suf_left_opp_btn:Landroid/widget/Button;

.field private suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

.field private suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

.field private suf_left_tv:Landroid/widget/TextView;

.field private suf_linkage_btn:Landroid/widget/Button;

.field private suf_mute_tv:Landroid/widget/TextView;

.field private suf_opp_tv:Landroid/widget/TextView;

.field private suf_right_mute_btn:Landroid/widget/Button;

.field private suf_right_opp_btn:Landroid/widget/Button;

.field private suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

.field private suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

.field private suf_right_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/track/TrackFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateUiSeekbar()V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/track/TrackFragment;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateUiBottomBtn()V

    return-void
.end method

.method public static newInstance()Lcom/nwd/audioset/view/fragment/track/TrackFragment;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "new TrackFragment()"

    aput-object v2, v0, v1

    const-string v1, "dsp3-TrackFragment"

    .line 53
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    new-instance v0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;-><init>()V

    return-object v0
.end method

.method private setInternational()V
    .locals 3

    .line 581
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "front_left"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "front_right"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "rear_left"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 584
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "rear_right"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 585
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_center_text"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 586
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "heavybass"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 588
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_mute_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_mute_text"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_mute_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_mute_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_opp_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "reversed_phase"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_opp_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateConfigValue()V
    .locals 4

    .line 799
    :try_start_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "seekbar_progress"

    invoke-static {v0, v1}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 800
    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v2, "seekbar_bg"

    invoke-static {v1, v2}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 801
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 802
    iget-boolean v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v2, :cond_0

    .line 803
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 804
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 805
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 806
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 807
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 808
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 810
    :cond_0
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 811
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 812
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 813
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 814
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 815
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 819
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateDspUi()V
    .locals 10

    .line 602
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 603
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->shengdao_box_line_d:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 604
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->shengdao_box_line_n:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 605
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 606
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 607
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-static {v4, v3, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 609
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 610
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v4, 0x7f0901e3

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 612
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    const v3, 0x7f0d00a2

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 613
    iget-object v4, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 614
    iget-object v5, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    invoke-virtual {v0, v5, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 615
    iget-object v6, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    invoke-virtual {v0, v6, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 616
    iget-object v7, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    invoke-virtual {v0, v7, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 617
    iget-object v8, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    invoke-virtual {v0, v8, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 619
    iget-object v8, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0703ac

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 620
    iget-boolean v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v9, :cond_0

    .line 621
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v9, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 622
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 623
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 624
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 625
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v7}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 628
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumbOffset(I)V

    .line 629
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumbOffset(I)V

    .line 630
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumbOffset(I)V

    .line 631
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumbOffset(I)V

    .line 632
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumbOffset(I)V

    .line 633
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 635
    :cond_0
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v9, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 636
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v4}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 637
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v5}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 638
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v6}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 639
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v7}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 640
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 642
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumbOffset(I)V

    .line 643
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumbOffset(I)V

    .line 644
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumbOffset(I)V

    .line 645
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumbOffset(I)V

    .line 646
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumbOffset(I)V

    .line 647
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v1, v8}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setThumbOffset(I)V

    .line 650
    :goto_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget-boolean v1, v1, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v1, :cond_1

    .line 651
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f06007b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v3, 0x7f090148

    .line 652
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f09015d

    .line 653
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0902db

    .line 654
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0902f0

    .line 655
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0900bc

    .line 656
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f090089

    .line 657
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f09014b

    .line 658
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0902de

    .line 659
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f09007b

    .line 660
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f09014c

    .line 661
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0902df

    .line 662
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f09007d

    .line 663
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 664
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->shengdao_bar_n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f090198

    .line 666
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090199

    .line 667
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f09019a

    .line 668
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f09019b

    .line 669
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090197

    .line 670
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f090196

    .line 671
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 674
    :cond_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-eqz v0, :cond_2

    .line 675
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f090143

    .line 676
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v1, 0x7f090158

    .line 677
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v1, 0x7f0902d6

    .line 678
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v1, 0x7f0902eb

    .line 679
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v1, 0x7f09007a

    .line 680
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v1, 0x7f09007c

    .line 681
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v1, 0x7f090144

    .line 682
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v1, 0x7f090159

    .line 683
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v1, 0x7f0902d7

    .line 684
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v1, 0x7f0902ec

    .line 685
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const v1, 0x7f0900b7

    .line 686
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    const v1, 0x7f0900b8

    .line 687
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iput v0, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 690
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateUiBottomBtn()V
    .locals 2

    .line 525
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_mute_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 526
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_mute_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 527
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_mute_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 528
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_mute_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 529
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_mute_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 530
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_mute_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 533
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_opp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 534
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_opp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 535
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_opp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 536
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_opp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 537
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_opp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 538
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_opp()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 540
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_linkage()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 541
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_linkage()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    .line 542
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_linkage()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setSelected(Z)V

    return-void
.end method

.method private updateUiSeekbar()V
    .locals 5

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    if-eqz v0, :cond_25

    .line 454
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 455
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_right()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 456
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 457
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_right()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 458
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 459
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMbass_bugle()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 460
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_left()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 462
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMfront_right()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 463
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_left()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 464
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMsuf_right()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 465
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMcenter_bugle()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 466
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->getMbass_bugle()I

    move-result v1

    rsub-int/lit8 v1, v1, 0xe

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 469
    :cond_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-nez v0, :cond_25

    .line 470
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setClickable(Z)V

    .line 471
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setEnabled(Z)V

    .line 472
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setFocusable(Z)V

    .line 474
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setClickable(Z)V

    .line 475
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setEnabled(Z)V

    .line 476
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x1

    goto :goto_5

    :cond_6
    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setFocusable(Z)V

    .line 478
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    goto :goto_6

    :cond_7
    const/4 v1, 0x0

    :goto_6
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setClickable(Z)V

    .line 479
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setEnabled(Z)V

    .line 480
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    goto :goto_8

    :cond_9
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setFocusable(Z)V

    .line 482
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v1

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_9

    :cond_a
    const/4 v1, 0x0

    :goto_9
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setClickable(Z)V

    .line 483
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v1

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_a

    :cond_b
    const/4 v1, 0x0

    :goto_a
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setEnabled(Z)V

    .line 484
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto :goto_b

    :cond_c
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setFocusable(Z)V

    .line 486
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    goto :goto_c

    :cond_d
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setClickable(Z)V

    .line 487
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_d

    :cond_e
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setEnabled(Z)V

    .line 488
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_e

    :cond_f
    const/4 v1, 0x0

    :goto_e
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setFocusable(Z)V

    .line 490
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_10

    const/4 v1, 0x1

    goto :goto_f

    :cond_10
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setClickable(Z)V

    .line 491
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_10

    :cond_11
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setEnabled(Z)V

    .line 492
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_11

    :cond_12
    const/4 v1, 0x0

    :goto_11
    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setFocusable(Z)V

    .line 494
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_25

    const v0, 0x7f090147

    .line 495
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v4

    if-nez v4, :cond_13

    const/4 v4, 0x1

    goto :goto_12

    :cond_13
    const/4 v4, 0x0

    :goto_12
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 496
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v4, 0x1

    goto :goto_13

    :cond_14
    const/4 v4, 0x0

    :goto_13
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 497
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v1, 0x1

    goto :goto_14

    :cond_15
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f09015c

    .line 498
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v4

    if-nez v4, :cond_16

    const/4 v4, 0x1

    goto :goto_15

    :cond_16
    const/4 v4, 0x0

    :goto_15
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 499
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v4

    if-nez v4, :cond_17

    const/4 v4, 0x1

    goto :goto_16

    :cond_17
    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 500
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result v1

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_17

    :cond_18
    const/4 v1, 0x0

    :goto_17
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f0902da

    .line 501
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v4

    if-nez v4, :cond_19

    const/4 v4, 0x1

    goto :goto_18

    :cond_19
    const/4 v4, 0x0

    :goto_18
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x1

    goto :goto_19

    :cond_1a
    const/4 v4, 0x0

    :goto_19
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result v1

    if-nez v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1a

    :cond_1b
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f0902ef

    .line 504
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v4

    if-nez v4, :cond_1c

    const/4 v4, 0x1

    goto :goto_1b

    :cond_1c
    const/4 v4, 0x0

    :goto_1b
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 505
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    goto :goto_1c

    :cond_1d
    const/4 v4, 0x0

    :goto_1c
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 506
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result v1

    if-nez v1, :cond_1e

    const/4 v1, 0x1

    goto :goto_1d

    :cond_1e
    const/4 v1, 0x0

    :goto_1d
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f0900bb

    .line 507
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v4

    if-nez v4, :cond_1f

    const/4 v4, 0x1

    goto :goto_1e

    :cond_1f
    const/4 v4, 0x0

    :goto_1e
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 508
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v4

    if-nez v4, :cond_20

    const/4 v4, 0x1

    goto :goto_1f

    :cond_20
    const/4 v4, 0x0

    :goto_1f
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 509
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_21

    const/4 v1, 0x1

    goto :goto_20

    :cond_21
    const/4 v1, 0x0

    :goto_20
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    const v0, 0x7f090081

    .line 510
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x1

    goto :goto_21

    :cond_22
    const/4 v4, 0x0

    :goto_21
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 511
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v4

    if-nez v4, :cond_23

    const/4 v4, 0x1

    goto :goto_22

    :cond_23
    const/4 v4, 0x0

    :goto_22
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 512
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_23

    :cond_24
    const/4 v2, 0x0

    :goto_23
    invoke-virtual {v0, v2}, Landroid/view/View;->setFocusable(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_24

    :catch_0
    move-exception v0

    .line 517
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_24
    return-void
.end method

.method private updateUiWidth()V
    .locals 12

    .line 698
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    .line 702
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v1

    iget v1, v1, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    .line 703
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v2

    iget v2, v2, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    .line 705
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 706
    iget v4, v3, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    .line 707
    iget v5, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    int-to-float v5, v5

    .line 709
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget v6, v6, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v6, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v6

    iget v6, v6, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    if-lez v6, :cond_0

    .line 710
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v5

    iget v5, v5, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    int-to-float v5, v5

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v6

    .line 725
    :cond_0
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v6

    const/16 v7, 0x500

    const/4 v8, 0x0

    if-eqz v6, :cond_3

    const/16 v6, 0x258

    if-gt v2, v6, :cond_1

    const v6, 0x3f043fe6    # 0.5166f

    :goto_0
    mul-float v6, v6, v5

    float-to-int v6, v6

    goto :goto_1

    :cond_1
    const v6, 0x3f110cb3    # 0.5666f

    goto :goto_0

    .line 732
    :goto_1
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v9

    iget v9, v9, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v9, :cond_2

    if-gt v1, v7, :cond_2

    const v6, 0x3ef0a3d7    # 0.47f

    mul-float v6, v6, v5

    float-to-int v6, v6

    .line 734
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v9, v9, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute1:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x5

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 735
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v9, v9, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute2:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 736
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v9, v9, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute3:Landroid/widget/RelativeLayout;

    invoke-virtual {v9}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 738
    :cond_2
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v9, v9, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llTrackTop1:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 739
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v9, v9, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llTrackTop2:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 740
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v9, v9, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llTrackTop3:Landroid/widget/LinearLayout;

    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iput v6, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    :cond_3
    const/4 v6, 0x0

    :goto_2
    const-string v9, "dsp3-TrackFragment"

    .line 744
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "=== updateUiWidth instrumentHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v11

    iget v11, v11, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",\u8bbe\u5907\u5206\u8fa8\u7387 widthPixels="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", heightPixels="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", screenHeightDp="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", density="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", app\u53ef\u4ee5\u5bbd\u9ad8 appWidth="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",appHeight="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ",height="

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    iget-boolean v3, v3, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    if-nez v3, :cond_6

    .line 747
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute1:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    float-to-double v4, v4

    const-wide v9, 0x3fc8f5c28f5c28f6L    # 0.195

    .line 748
    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    double-to-int v4, v4

    .line 749
    :try_start_1
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 750
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute2:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 751
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 752
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute3:Landroid/widget/RelativeLayout;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 753
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eqz v0, :cond_6

    const/16 v0, 0x400

    if-gt v1, v0, :cond_4

    const/16 v0, 0x155

    goto :goto_3

    :cond_4
    const/16 v0, 0x780

    if-lt v2, v0, :cond_5

    const/16 v0, 0x21e

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-lez v0, :cond_6

    .line 765
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llTrackTop1:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 766
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llTrackTop2:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 767
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v3, v3, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llTrackTop3:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    if-ne v1, v7, :cond_7

    const/16 v0, 0x1e0

    if-ne v2, v0, :cond_7

    .line 778
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute1:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070327

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 779
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute2:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 780
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->rlBottomMute3:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_7
    if-ne v1, v7, :cond_8

    const/16 v0, 0x1c4

    if-ne v2, v0, :cond_8

    .line 783
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 784
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 785
    iput v8, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 788
    :cond_8
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v1, 0x960

    if-ne v0, v1, :cond_a

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x380

    if-eq v0, v1, :cond_9

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_a

    .line 789
    :cond_9
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llYinchangBg:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070370

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v8, v2, v8}, Landroid/widget/RelativeLayout;->setPadding(IIII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 792
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 58
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    iput-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentTrack1Binding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentTrack1Binding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding1:Lcom/nwd/audioset/databinding/FragmentTrack1Binding;

    .line 61
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentTrack1Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    .line 64
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/track/TrackP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/track/TrackP;
    .locals 1

    .line 317
    new-instance v0, Lcom/nwd/audioset/view/fragment/track/TrackP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/track/TrackP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 0

    return-void
.end method

.method public initView()V
    .locals 2

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_mute_btn:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_mute_btn:Landroid/widget/Button;

    .line 77
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_mute_btn:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902eb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_mute_btn:Landroid/widget/Button;

    .line 79
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_mute_btn:Landroid/widget/Button;

    .line 80
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_mute_btn:Landroid/widget/Button;

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    .line 83
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    .line 84
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    .line 85
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ec

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    .line 86
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    .line 87
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09007c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    .line 90
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090149

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    .line 91
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    .line 92
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090078

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    .line 95
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    .line 96
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    .line 97
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    .line 98
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    .line 99
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    .line 100
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090080

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    .line 101
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090147

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    .line 103
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    .line 104
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    .line 105
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900bb

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090081

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090148

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_tv:Landroid/widget/TextView;

    .line 111
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_tv:Landroid/widget/TextView;

    .line 112
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_tv:Landroid/widget/TextView;

    .line 113
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_tv:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_tv:Landroid/widget/TextView;

    .line 115
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_tv:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09014b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_mute_tv:Landroid/widget/TextView;

    .line 118
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_opp_tv:Landroid/widget/TextView;

    .line 119
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_mute_tv:Landroid/widget/TextView;

    .line 120
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_opp_tv:Landroid/widget/TextView;

    .line 121
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_mute_tv:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09007d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_tv:Landroid/widget/TextView;

    .line 125
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->isOnlyFourBugle()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->binding:Lcom/nwd/audioset/databinding/FragmentTrackBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FragmentTrackBinding;->llBottom:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    :cond_1
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->setInternational()V

    .line 130
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateUiWidth()V

    .line 131
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateDspUi()V

    .line 132
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateConfigValue()V

    .line 133
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateDoubleBass()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "dsp3-TrackFragment"

    const-string v1, "front_right"

    const-string v2, "front_left"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const v5, 0x7f090143

    if-ne p1, v5, :cond_1

    .line 186
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_left_mute()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 188
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 189
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "\u524d\u5de6\u524d\u53f3\u5587\u53ed\u8054\u52a8"

    .line 190
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_0
    const-string p1, "\u53d1\u9001,\u524d\u5de6\u5587\u53ed\u9759\u97f3\u6570\u636e"

    .line 194
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 196
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 197
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_1
    const v5, 0x7f090158

    if-ne p1, v5, :cond_3

    .line 201
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->isMfront_right_mute()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 202
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 203
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    const-string p1, "\u540e\u524d\u540e\u53f3\u5587\u53ed\u8054\u52a8"

    .line 204
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 208
    :cond_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 209
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 210
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    const v0, 0x7f0902d6

    const-string v5, "suf_right"

    const-string v6, "suf_left"

    if-ne p1, v0, :cond_5

    .line 214
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_left_mute()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 215
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 216
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 217
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 220
    :cond_4
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 221
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 222
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const v0, 0x7f0902eb

    if-ne p1, v0, :cond_7

    .line 226
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->isMsuf_right_mute()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 227
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 228
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 229
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v6, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 232
    :cond_6
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 233
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 234
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v6, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_7
    const v0, 0x7f0900b7

    const-string v7, "bass_bugle"

    const-string v8, "center_bugle"

    if-ne p1, v0, :cond_9

    .line 238
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->isMcenter_bugle_mute()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 239
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v8, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 240
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 241
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v7, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 244
    :cond_8
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v8, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 245
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 246
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v7, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_9
    const v0, 0x7f09007a

    if-ne p1, v0, :cond_b

    .line 250
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->isMbass_bugle_mute()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 251
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v7, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 252
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 253
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v8, v3}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 256
    :cond_a
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v7, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 257
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 258
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v8, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    const v0, 0x7f090144

    if-ne p1, v0, :cond_c

    .line 262
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 263
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 264
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 265
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 266
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_c
    const v0, 0x7f090159

    if-ne p1, v0, :cond_d

    .line 269
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 270
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 271
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 272
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 273
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_d
    const v0, 0x7f0902d7

    if-ne p1, v0, :cond_e

    .line 276
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 277
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 278
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 279
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 280
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_e
    const v0, 0x7f0902ec

    if-ne p1, v0, :cond_f

    .line 283
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 284
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 285
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 286
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 287
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v6, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_f
    const v0, 0x7f0900b8

    if-ne p1, v0, :cond_10

    .line 290
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 291
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 292
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 293
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 294
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    :cond_10
    const v0, 0x7f09007c

    if-ne p1, v0, :cond_11

    .line 297
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 298
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 299
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_14

    .line 300
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setSelected(Z)V

    .line 301
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v8, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    :cond_11
    const v0, 0x7f090149

    if-ne p1, v0, :cond_12

    .line 304
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->setMfront_linkage(Z)V

    goto :goto_0

    :cond_12
    const v0, 0x7f0902dc

    if-ne p1, v0, :cond_13

    .line 306
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->setMsuf_linkage(Z)V

    goto :goto_0

    :cond_13
    const v0, 0x7f090078

    if-ne p1, v0, :cond_14

    .line 308
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v4

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->setMcenter_linkage(Z)V

    .line 310
    :cond_14
    :goto_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateUiSeekbar()V

    .line 311
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateUiBottomBtn()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 568
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p1, "dsp3-TrackFragment"

    const-string v0, "TrackFragment: \u914d\u7f6e\u6539\u53d8"

    .line 569
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/utils/utils/InternationalUtils;->loadResource()V

    .line 572
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->setInternational()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 574
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

    .line 575
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 562
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onDestroy()V

    const-string v0, "dsp3-TrackFragment"

    const-string v1, "Track: \u7684onDestroy()"

    .line 563
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;)V
    .locals 6

    .line 328
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "dsp3-TrackFragment"

    const/4 v3, 0x2

    const/4 v4, 0x0

    const v5, 0x7f090146

    if-eq v0, v5, :cond_f

    const v5, 0x7f090147

    if-ne v0, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const v5, 0x7f09015b

    if-eq v0, v5, :cond_d

    const v5, 0x7f09015c

    if-ne v0, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const v5, 0x7f0902d9

    if-eq v0, v5, :cond_b

    const v5, 0x7f0902da

    if-ne v0, v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const v5, 0x7f0902ee

    if-eq v0, v5, :cond_9

    const v5, 0x7f0902ef

    if-ne v0, v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const v5, 0x7f0900ba

    if-eq v0, v5, :cond_7

    const v5, 0x7f0900bb

    if-ne v0, v5, :cond_4

    goto :goto_0

    :cond_4
    const v5, 0x7f090080

    if-eq v0, v5, :cond_5

    const v5, 0x7f090081

    if-ne v0, v5, :cond_11

    .line 390
    :cond_5
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_6

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "\u89e6\u6478\u7684\u662f\u91cd\u4f4e\u5587\u53ed,\u8054\u52a8\u4e2d\u7f6e\u5587\u53ed"

    aput-object v2, v0, v1

    .line 391
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 394
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    if-eqz v0, :cond_6

    .line 395
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 398
    :cond_6
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz p1, :cond_11

    .line 399
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "bass_bugle"

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 378
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_8

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "\u89e6\u6478\u7684\u662f\u4e2d\u7f6e\u5587\u53ed,\u8054\u52a8\u91cd\u4f4e\u5587\u53ed"

    aput-object v2, v0, v1

    .line 379
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 382
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    if-eqz v0, :cond_8

    .line 383
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 386
    :cond_8
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz p1, :cond_11

    .line 387
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "center_bugle"

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 366
    :cond_9
    :goto_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_a

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "\u89e6\u6478\u7684\u662f\u540e\u53f3\u5587\u53ed,\u8054\u52a8\u540e\u53f3\u5587\u53ed"

    aput-object v2, v0, v1

    .line 367
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 369
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 370
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    if-eqz v0, :cond_a

    .line 371
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 374
    :cond_a
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz p1, :cond_11

    .line 375
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "suf_right"

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 354
    :cond_b
    :goto_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_c

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "\u89e6\u6478\u7684\u662f\u540e\u5de6\u5587\u53ed,\u8054\u52a8\u540e\u5de6\u5587\u53ed"

    aput-object v2, v0, v1

    .line 355
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 357
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 358
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    if-eqz v0, :cond_c

    .line 359
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 362
    :cond_c
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz p1, :cond_11

    .line 363
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "suf_left"

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto/16 :goto_5

    .line 342
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_e

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "\u89e6\u6478\u7684\u524d\u662f\u53f3\u5587\u53ed,\u8054\u52a8\u524d\u5de6\u5587\u53ed"

    aput-object v2, v0, v1

    .line 343
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 346
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    if-eqz v0, :cond_e

    .line 347
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 350
    :cond_e
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz p1, :cond_11

    .line 351
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "front_right"

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    goto :goto_5

    .line 330
    :cond_f
    :goto_4
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_10

    new-array v0, v3, [Ljava/lang/Object;

    aput-object v2, v0, v4

    const-string v2, "\u89e6\u6478\u7684\u662f\u524d\u5de6\u5587\u53ed,\u8054\u52a8\u524d\u53f3\u5587\u53ed"

    aput-object v2, v0, v1

    .line 331
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 333
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 334
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    if-eqz v0, :cond_10

    .line 335
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setProgress(I)V

    .line 338
    :cond_10
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p1

    iget-boolean p1, p1, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz p1, :cond_11

    .line 339
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const-string v0, "front_left"

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    :cond_11
    :goto_5
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "dsp3-TrackFragment"

    const-string v0, "\u5f00\u59cb\u89e6\u6478"

    .line 407
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .line 412
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    rsub-int/lit8 v0, v0, 0xe

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u505c\u6b62\u89e6\u6478: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dsp3-TrackFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const-string v1, "front_right"

    const-string v2, "front_left"

    const v3, 0x7f090146

    if-eq p1, v3, :cond_a

    const v3, 0x7f090147

    if-ne p1, v3, :cond_0

    goto/16 :goto_4

    :cond_0
    const v3, 0x7f09015b

    if-eq p1, v3, :cond_9

    const v3, 0x7f09015c

    if-ne p1, v3, :cond_1

    goto/16 :goto_3

    :cond_1
    const v1, 0x7f0902d9

    const-string v2, "suf_right"

    const-string v3, "suf_left"

    if-eq p1, v1, :cond_8

    const v1, 0x7f0902da

    if-ne p1, v1, :cond_2

    goto :goto_2

    :cond_2
    const v1, 0x7f0902ee

    if-eq p1, v1, :cond_7

    const v1, 0x7f0902ef

    if-ne p1, v1, :cond_3

    goto :goto_1

    :cond_3
    const v1, 0x7f0900ba

    const-string v2, "bass_bugle"

    const-string v3, "center_bugle"

    if-eq p1, v1, :cond_6

    const v1, 0x7f0900bb

    if-ne p1, v1, :cond_4

    goto :goto_0

    :cond_4
    const v1, 0x7f090080

    if-eq p1, v1, :cond_5

    const v1, 0x7f090081

    if-ne p1, v1, :cond_b

    .line 443
    :cond_5
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 444
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 445
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    goto/16 :goto_5

    .line 438
    :cond_6
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 439
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 440
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    goto :goto_5

    .line 433
    :cond_7
    :goto_1
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 434
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 435
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    goto :goto_5

    .line 428
    :cond_8
    :goto_2
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v3, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 429
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 430
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    goto :goto_5

    .line 422
    :cond_9
    :goto_3
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 423
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 425
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    goto :goto_5

    .line 416
    :cond_a
    :goto_4
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 417
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 419
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 448
    :cond_b
    :goto_5
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->updateUiBottomBtn()V

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_mute_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_mute_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_mute_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_mute_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_mute_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_mute_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_opp_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_linkage_btn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 160
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 161
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 162
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 164
    iget-boolean v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->isG5Portrait:Z

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 166
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->front_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 167
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_left_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->suf_right_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    .line 170
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_seekbar1:Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 3

    .line 547
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->setUserVisibleHint(Z)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 548
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackfragmen\u88ab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-TrackFragment"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 550
    new-instance p1, Lcom/nwd/audioset/view/fragment/track/TrackFragment$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/track/TrackFragment;)V

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
    .locals 3

    .line 828
    :try_start_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    if-eqz v0, :cond_0

    .line 829
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_bass_left"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 830
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_bass_right"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 832
    :cond_0
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->center_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "str_center_text"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 835
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->bass_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/track/TrackFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v1

    const-string v2, "heavybass"

    invoke-virtual {v1, v2}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 838
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
