.class public Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "SurroundModeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-SurroundModeFragment"


# instance fields
.field private final ANIM_DURATION:I

.field private anim:Landroid/graphics/drawable/AnimationDrawable;

.field private binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

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

.field private maxGian:I

.field private mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private mid_mix_tv:Landroid/widget/TextView;

.field private minGian:I

.field private pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private pre_mix_tv:Landroid/widget/TextView;

.field private seekbar_bar_p:Landroid/graphics/drawable/Drawable;

.field private surround_anim_iv:Landroid/widget/ImageView;

.field private surround_anim_list:[I

.field private virtual_reset_iv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/16 v0, 0xc8

    .line 42
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->ANIM_DURATION:I

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->surround_anim_list:[I

    const/4 v0, 0x0

    .line 53
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->minGian:I

    const/16 v0, 0xa

    .line 54
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->maxGian:I

    const/4 v0, 0x5

    .line 55
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->defGian:I

    return-void

    :array_0
    .array-data 4
        0x7f0d0047
        0x7f0d0048
        0x7f0d0049
        0x7f0d004a
        0x7f0d004b
        0x7f0d004c
    .end array-data
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;)Landroid/widget/TextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method private changeView()V
    .locals 7

    .line 99
    new-instance v0, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    .line 100
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701d2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 101
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701df

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 102
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701e0

    const v4, 0x7f0701d0

    invoke-virtual {v0, v1, v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 104
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->car_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701d8

    const v4, 0x7f0701d6

    invoke-virtual {v0, v1, v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 105
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->car_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701d7

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 106
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->car_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 108
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->surroundAnimIv:Landroid/widget/ImageView;

    const v2, 0x7f0701b0

    invoke-virtual {v0, v1, v2, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 109
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->surroundAnimIv:Landroid/widget/ImageView;

    const v2, 0x7f0701bd

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 110
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->surroundAnimIv:Landroid/widget/ImageView;

    const v2, 0x7f0701b4

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 111
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->surroundAnimIv:Landroid/widget/ImageView;

    const v2, 0x7f0701a2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 112
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->surroundAnimIv:Landroid/widget/ImageView;

    const v2, 0x7f0701a4

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 114
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v2, 0x7f0701c7

    const v3, 0x7f070193

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 115
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v4, 0x7f0701e5

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 116
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v4, 0x7f0701a1

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 118
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 119
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    const v5, 0x7f07019f

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 121
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 122
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    const v6, 0x7f0701a6

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 123
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 125
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 126
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 127
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    return-void
.end method

.method private setButtonBG()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "dsp3-SurroundModeFragment"

    aput-object v2, v0, v1

    const-string v1, "setButtonBG "

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 202
    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    .line 204
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 206
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_d:Ljava/lang/String;

    const v3, 0x7f0d001e

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 209
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_n:Ljava/lang/String;

    const v3, 0x7f0d001f

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    .line 211
    :cond_1
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v4}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 212
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v3, 0x7f0d0034

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 216
    :cond_2
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v3, 0x7f0d0035

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    .line 219
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->car_iv:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v3, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 221
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    .line 223
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f07033e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 224
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_5

    .line 225
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v4, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 226
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 228
    :cond_5
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 229
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 231
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_6

    .line 232
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_surround_anim:[Ljava/lang/String;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->surround_anim_list:[I

    const/16 v4, 0xc8

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 234
    :cond_6
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_7

    .line 235
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->surround_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 236
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 239
    :cond_7
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    .line 240
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_bottom:Ljava/lang/String;

    const v2, 0x7f0d0040

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    .line 242
    :cond_8
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 243
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateConfigValue()V
    .locals 4

    .line 251
    :try_start_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "seekbar_progress"

    invoke-static {v0, v1}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v2, "seekbar_bg"

    invoke-static {v1, v2}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
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

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->rlRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateSeekBarUi()V
    .locals 5

    .line 145
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->defGian:I

    const-string v2, "dts_surround_mode_front"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v0

    .line 146
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->defGian:I

    const-string v3, "dts_surround_mode_middle"

    invoke-virtual {v1, v3, v2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v1

    .line 147
    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->maxGian:I

    sub-int v3, v2, v0

    sub-int/2addr v2, v1

    .line 149
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v4, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 150
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v2}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "dsp3-SurroundModeFragment"

    aput-object v4, v2, v3

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSeekBarUi : front_gain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , middle_gain = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    invoke-static {v2}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 60
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->binding:Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;

    .line 61
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FrgSurroundModeBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeP;
    .locals 1

    .line 164
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 140
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 142
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->updateSeekBarUi()V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    .line 70
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->car_iv:Landroid/widget/ImageView;

    .line 71
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902f2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->surround_anim_iv:Landroid/widget/ImageView;

    .line 73
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    .line 74
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    .line 75
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    .line 78
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 79
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090236

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 81
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090203

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_tv:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090237

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_tv:Landroid/widget/TextView;

    .line 84
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->setButtonBG()V

    .line 85
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->updateConfigValue()V

    .line 86
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment$1;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;)V

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/ViewUtils;->setViewTreeObserver(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V

    .line 92
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->changeView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 156
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x1

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->defGian:I

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSurroundMode(II)V

    .line 157
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x2

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->defGian:I

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSurroundMode(II)V

    .line 158
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->updateSeekBarUi()V

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 131
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 132
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e1

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

    const-string v2, "dsp3-SurroundModeFragment"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 184
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

    .line 185
    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->maxGian:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v4

    sub-int/2addr v1, v4

    .line 186
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v4, :cond_0

    .line 187
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v5, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSurroundMode(II)V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    .line 188
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

    .line 189
    :cond_0
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v4, :cond_1

    .line 190
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSurroundMode(II)V

    new-array p1, v0, [Ljava/lang/Object;

    aput-object v2, p1, v3

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : middle_gain = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v5

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->mid_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    .line 198
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->pre_mix_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
