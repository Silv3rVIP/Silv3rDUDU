.class public Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "VirtualFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualP;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

.field private car_iv:Landroid/widget/ImageView;

.field private dts_car:Landroid/graphics/drawable/Drawable;

.field private dts_sound_bl_iv:Landroid/widget/ImageView;

.field private dts_sound_bottom:Landroid/graphics/drawable/Drawable;

.field private dts_sound_br_iv:Landroid/widget/ImageView;

.field private dts_sound_tl_iv:Landroid/widget/ImageView;

.field private dts_sound_tr_iv:Landroid/widget/ImageView;

.field private dts_switch_close:Landroid/graphics/drawable/Drawable;

.field private dts_switch_open:Landroid/graphics/drawable/Drawable;

.field private eq_mode_d:Landroid/graphics/drawable/Drawable;

.field private eq_mode_n:Landroid/graphics/drawable/Drawable;

.field private virtual_mask:Landroid/graphics/drawable/Drawable;

.field private virtual_mask_iv:Landroid/widget/ImageView;

.field private virtual_reset_iv:Landroid/widget/ImageView;

.field private virtual_switch_iv:Landroid/widget/ImageView;

.field private virtual_switch_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    return-void
.end method

.method private changeView()V
    .locals 7

    .line 70
    new-instance v6, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v1, 0x7f0701d2

    invoke-virtual {v6, v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 72
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v1, 0x7f0701df

    invoke-virtual {v6, v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 73
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701e0

    const v3, 0x7f0701d0

    invoke-virtual {v6, v0, v2, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 75
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->car_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701d8

    const v3, 0x7f0701d6

    invoke-virtual {v6, v0, v2, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 76
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->car_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701d7

    invoke-virtual {v6, v0, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 77
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->car_iv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 79
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v1, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualMaskIv:Landroid/widget/ImageView;

    const v2, 0x7f0701ed

    const v3, 0x7f0701ef

    const v4, 0x7f0701ee

    const v5, 0x7f0701ec

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMargins(Landroid/view/View;IIII)V

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v1, 0x7f0701c7

    const v2, 0x7f070193

    invoke-virtual {v6, v0, v2, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 83
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v3, 0x7f0701e5

    invoke-virtual {v6, v0, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 84
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v3, 0x7f0701a1

    invoke-virtual {v6, v0, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 86
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v2, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 87
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    const v4, 0x7f07019f

    invoke-virtual {v6, v0, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 89
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v2, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 90
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    const v5, 0x7f0701a6

    invoke-virtual {v6, v0, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 91
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 93
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v2, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 94
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 95
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v6, v0, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 97
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchTv:Landroid/widget/TextView;

    const v1, 0x7f0702df

    invoke-virtual {v6, v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 98
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchTv:Landroid/widget/TextView;

    const v1, 0x7f0701f1

    invoke-virtual {v6, v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 99
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchTv:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Lcom/nwd/audioset/utils/ViewAdapter;->setSizeWrap(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchFl:Landroid/widget/FrameLayout;

    const v1, 0x7f0701f0

    invoke-virtual {v6, v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 102
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchIv:Landroid/widget/ImageView;

    const v1, 0x7f0701ea

    const v2, 0x7f0701e7

    invoke-virtual {v6, v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    return-void
.end method

.method private setButtonBG()V
    .locals 4

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 150
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_d:Ljava/lang/String;

    const v2, 0x7f0d001e

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 153
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_n:Ljava/lang/String;

    const v2, 0x7f0d001f

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    .line 155
    :cond_1
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 156
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 157
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 158
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v2, 0x7f0d0034

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 160
    :cond_2
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v2, 0x7f0d0035

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    .line 163
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->car_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 164
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_switch_open:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 165
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_open:Ljava/lang/String;

    const v2, 0x7f0d004e

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_switch_open:Landroid/graphics/drawable/Drawable;

    .line 167
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_switch_close:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_5

    .line 168
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_close:Ljava/lang/String;

    const v2, 0x7f0d004d

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_switch_close:Landroid/graphics/drawable/Drawable;

    .line 170
    :cond_5
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_switch_close:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_switch_open:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 172
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_6

    .line 173
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_bottom:Ljava/lang/String;

    const v2, 0x7f0d0040

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    .line 175
    :cond_6
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 181
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_8

    .line 182
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 183
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_virtual_mask:Ljava/lang/String;

    const v2, 0x7f0d004f

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 185
    :cond_7
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_virtual_mask_port:Ljava/lang/String;

    const v2, 0x7f0d0050

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask:Landroid/graphics/drawable/Drawable;

    .line 188
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 190
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

    .line 191
    :cond_9
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->rlRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_a
    :goto_2
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->binding:Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    .line 42
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualP;
    .locals 1

    .line 131
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 2

    .line 112
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsVirtualMiddle()Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 114
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask_iv:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->car_iv:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_iv:Landroid/widget/ImageView;

    .line 54
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    .line 56
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    .line 57
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    .line 59
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_tv:Landroid/widget/TextView;

    .line 61
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_mask_iv:Landroid/widget/ImageView;

    .line 62
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->setButtonBG()V

    .line 63
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->changeView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 120
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsVirtualMiddle(I)V

    .line 121
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->initData()V

    goto :goto_0

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_iv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 124
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsVirtualMiddle(I)V

    .line 125
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->initData()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 107
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 108
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;->virtual_switch_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
