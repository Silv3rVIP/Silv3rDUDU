.class public Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "SoundGatheringFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-SoundGatheringFragment"


# instance fields
.field private final ANIM_DURATION:I

.field private anim_top_list:[I

.field private behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private behind_tv:Landroid/widget/TextView;

.field private binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

.field private blAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private brAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private car_iv:Landroid/widget/ImageView;

.field private defGian:I

.field private dts_car:Landroid/graphics/drawable/Drawable;

.field private dts_sound_bl_iv:Landroid/widget/ImageView;

.field private dts_sound_bottom:Landroid/graphics/drawable/Drawable;

.field private dts_sound_br_iv:Landroid/widget/ImageView;

.field private dts_sound_tl_iv:Landroid/widget/ImageView;

.field private dts_sound_tr_iv:Landroid/widget/ImageView;

.field private eq_mode_d:Landroid/graphics/drawable/Drawable;

.field private eq_mode_n:Landroid/graphics/drawable/Drawable;

.field private font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private font_tv:Landroid/widget/TextView;

.field private maxGian:I

.field private minGian:I

.field private seekbar_bar_p:Landroid/graphics/drawable/Drawable;

.field private sound_bl_anim_iv:Landroid/widget/ImageView;

.field private sound_br_anim_iv:Landroid/widget/ImageView;

.field private sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private sound_center_tv:Landroid/widget/TextView;

.field private sound_tl_anim_iv:Landroid/widget/ImageView;

.field private sound_tr_anim_iv:Landroid/widget/ImageView;

.field private tlAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private trAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private virtual_reset_iv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->minGian:I

    const/16 v0, 0xa

    .line 51
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->maxGian:I

    const/4 v0, 0x5

    .line 52
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    new-array v0, v0, [I

    .line 55
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->anim_top_list:[I

    const/16 v0, 0xc8

    .line 58
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->ANIM_DURATION:I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0d0041
        0x7f0d0042
        0x7f0d0043
        0x7f0d0044
        0x7f0d0045
    .end array-data
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method private changeView()V
    .locals 10

    .line 108
    new-instance v0, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    .line 109
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701d2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 110
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701df

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 111
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701e0

    const v4, 0x7f0701d0

    invoke-virtual {v0, v1, v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 113
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->car_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701d8

    const v4, 0x7f0701d6

    invoke-virtual {v0, v1, v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 114
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->car_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701d7

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 115
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->car_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 117
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTlRl:Landroid/widget/RelativeLayout;

    const v2, 0x7f0701a5

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 118
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTlRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f0701e5

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 119
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTlRl:Landroid/widget/RelativeLayout;

    const v4, 0x7f07019a

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 121
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v5, 0x7f0701c7

    const v6, 0x7f070193

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 122
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundTlAnimIv:Landroid/widget/ImageView;

    const v7, 0x7f0701b9

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 123
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundTlAnimIv:Landroid/widget/ImageView;

    const v8, 0x7f0701c4

    invoke-virtual {v0, v1, v2, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 125
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 126
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 127
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTrRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f070196

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 129
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 130
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundTrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 131
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundTrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 133
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBlRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 134
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBlRl:Landroid/widget/RelativeLayout;

    const v9, 0x7f0701a6

    invoke-virtual {v0, v1, v9}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 135
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBlRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 137
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 138
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundBlAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 139
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundBlAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 141
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 142
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v9}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 143
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 145
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 146
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundBrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 147
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->soundBrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setButtonBG()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "dsp3-SoundGatheringFragment"

    aput-object v2, v0, v1

    const-string v1, "setButtonBG "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 236
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    .line 238
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 240
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_d:Ljava/lang/String;

    const v3, 0x7f0d001e

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 243
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_n:Ljava/lang/String;

    const v3, 0x7f0d001f

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v4}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 248
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 249
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v3, 0x7f0d0034

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 251
    :cond_2
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v3, 0x7f0d0035

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    .line 254
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->car_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 256
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 257
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_bottom:Ljava/lang/String;

    const v3, 0x7f0d0040

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 263
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    .line 264
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    .line 267
    :cond_5
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07033e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 268
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 269
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v4, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 270
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 271
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 273
    :cond_6
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 274
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 275
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 277
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v3, 0xc8

    if-nez v1, :cond_7

    .line 278
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->anim_top_list:[I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 280
    :cond_7
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_8

    .line 281
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_tl_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 282
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 284
    :cond_8
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_9

    .line 285
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->anim_top_list:[I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 287
    :cond_9
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_a

    .line 288
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_tr_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 289
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 291
    :cond_a
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_b

    .line 292
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->anim_top_list:[I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 294
    :cond_b
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_c

    .line 295
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_br_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 296
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 298
    :cond_c
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_d

    .line 299
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->anim_top_list:[I

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 301
    :cond_d
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_e

    .line 302
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_bl_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 303
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_e
    return-void
.end method

.method private updateConfigValue()V
    .locals 4

    .line 312
    :try_start_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "seekbar_progress"

    invoke-static {v0, v1}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 313
    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v2, "seekbar_bg"

    invoke-static {v1, v2}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 315
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 316
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    :cond_0
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v1, 0x960

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x380

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_2

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->rlRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSeekBarUi()V
    .locals 7

    .line 161
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    const-string v2, "dts_sound_gathering_front"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v0

    .line 162
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    const-string v3, "dts_sound_gathering_after"

    invoke-virtual {v1, v3, v2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v1

    .line 163
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    iget v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    const-string v4, "dts_sound_gathering_middle"

    invoke-virtual {v2, v4, v3}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v2

    .line 164
    iget v3, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->maxGian:I

    sub-int v4, v3, v0

    sub-int v5, v3, v1

    sub-int/2addr v3, v2

    .line 167
    iget-object v6, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v6, v4}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 168
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v4, v5}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 169
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v4, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "dsp3-SoundGatheringFragment"

    aput-object v5, v3, v4

    .line 170
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSeekBarUi : front_gain = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , behind_gain = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , middle_gain = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v3}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 63
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->binding:Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;

    .line 64
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FrgSoundGatheringBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringP;
    .locals 1

    .line 192
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 154
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 155
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 156
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->updateSeekBarUi()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 72
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->car_iv:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    .line 77
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    .line 80
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_tl_anim_iv:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_tr_anim_iv:Landroid/widget/ImageView;

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_bl_anim_iv:Landroid/widget/ImageView;

    .line 83
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_br_anim_iv:Landroid/widget/ImageView;

    .line 85
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 86
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 87
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 89
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_tv:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_tv:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_tv:Landroid/widget/TextView;

    .line 93
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->setButtonBG()V

    .line 94
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->updateConfigValue()V

    .line 95
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment$1;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;)V

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/ViewUtils;->setViewTreeObserver(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V

    .line 101
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->changeView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 175
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSoundFocus(II)V

    .line 176
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x2

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSoundFocus(II)V

    .line 177
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x3

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->defGian:I

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSoundFocus(II)V

    .line 178
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->updateSeekBarUi()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 184
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 185
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "dsp3-SoundGatheringFragment"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StopTrackingTouch : Progress = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v1, v5

    invoke-static {v1}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    .line 214
    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->maxGian:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    sub-int/2addr v1, v4

    .line 215
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v4, :cond_0

    .line 216
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSoundFocus(II)V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : front_gain = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v4, :cond_1

    .line 219
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSoundFocus(II)V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : behind_gain = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    goto :goto_0

    .line 221
    :cond_1
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v4, :cond_2

    .line 222
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSoundFocus(II)V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : middle_gain = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    .line 231
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    .line 232
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;->sound_center_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
