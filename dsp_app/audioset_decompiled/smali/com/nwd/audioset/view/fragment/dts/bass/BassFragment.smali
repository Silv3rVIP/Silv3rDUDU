.class public Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "BassFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/dts/bass/BassP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-Dts-BassFragment"


# instance fields
.field private final ANIM_DURATION:I

.field private final BASS_TYPE_BEHIND:I

.field private final BASS_TYPE_FONT:I

.field private final BASS_TYPE_HEAVY:I

.field private final SEND_DELAY_MILLIS:I

.field private anim_list:[I

.field private behind_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

.field private behind_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

.field private behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private behind_tv:Landroid/widget/TextView;

.field private binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

.field private blAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private brAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private car_iv:Landroid/widget/ImageView;

.field private defGian:I

.field private dts_car:Landroid/graphics/drawable/Drawable;

.field private dts_sound_bl_iv:Landroid/widget/ImageView;

.field private dts_sound_bottom:Landroid/graphics/drawable/Drawable;

.field private dts_sound_br_iv:Landroid/widget/ImageView;

.field private dts_sound_right_iv:Landroid/widget/ImageView;

.field private dts_sound_tl_iv:Landroid/widget/ImageView;

.field private dts_sound_tr_iv:Landroid/widget/ImageView;

.field private eq_mode_d:Landroid/graphics/drawable/Drawable;

.field private eq_mode_n:Landroid/graphics/drawable/Drawable;

.field private font_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

.field private font_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

.field private font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private font_tv:Landroid/widget/TextView;

.field private frequencyData:[Ljava/lang/String;

.field private frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

.field private frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

.field private frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

.field private handler:Landroid/os/Handler;

.field private heavy_bass_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

.field private heavy_bass_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

.field private heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

.field private heavy_bass_tv:Landroid/widget/TextView;

.field private innerScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private maxGian:I

.field private minGian:I

.field private rightAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private seekbar_bar_p:Landroid/graphics/drawable/Drawable;

.field private sound_bl_anim_iv:Landroid/widget/ImageView;

.field private sound_br_anim_iv:Landroid/widget/ImageView;

.field private sound_right_anim_iv:Landroid/widget/ImageView;

.field private sound_tl_anim_iv:Landroid/widget/ImageView;

.field private sound_tr_anim_iv:Landroid/widget/ImageView;

.field private tlAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private trAnim:Landroid/graphics/drawable/AnimationDrawable;

.field private viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

.field private virtual_reset_iv:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 10

    .line 44
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    .line 48
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->anim_list:[I

    const/16 v1, 0xc8

    .line 62
    iput v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->ANIM_DURATION:I

    const/16 v1, 0xa

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, ""

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v5, "40Hz"

    const/4 v6, 0x1

    aput-object v5, v2, v6

    const-string v5, "60Hz"

    const/4 v7, 0x2

    aput-object v5, v2, v7

    const-string v5, "100Hz"

    const/4 v8, 0x3

    aput-object v5, v2, v8

    const/4 v5, 0x4

    const-string v9, "150Hz"

    aput-object v9, v2, v5

    const-string v5, "200Hz"

    const/4 v9, 0x5

    aput-object v5, v2, v9

    const-string v5, "250Hz"

    aput-object v5, v2, v0

    const/4 v0, 0x7

    const-string v5, "300Hz"

    aput-object v5, v2, v0

    const/16 v0, 0x8

    const-string v5, "400Hz"

    aput-object v5, v2, v0

    const/16 v0, 0x9

    aput-object v3, v2, v0

    .line 63
    iput-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyData:[Ljava/lang/String;

    .line 66
    iput v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->minGian:I

    .line 67
    iput v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    .line 68
    iput v9, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    .line 70
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    invoke-direct {v0, v2}, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    .line 71
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyData:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    .line 72
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyData:[Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;-><init>([Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    const/16 v0, 0x96

    .line 76
    iput v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->SEND_DELAY_MILLIS:I

    .line 78
    iput v6, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->BASS_TYPE_FONT:I

    .line 79
    iput v7, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->BASS_TYPE_BEHIND:I

    .line 80
    iput v8, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->BASS_TYPE_HEAVY:I

    .line 83
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->handler:Landroid/os/Handler;

    .line 450
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->innerScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void

    :array_0
    .array-data 4
        0x7f0d002e
        0x7f0d002f
        0x7f0d0030
        0x7f0d0031
        0x7f0d0032
        0x7f0d0033
    .end array-data
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;II)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sendBassOption(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/widget/TextView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    return-object p0
.end method

.method static synthetic access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    return-object p0
.end method

.method private changeView()V
    .locals 13

    .line 165
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701d2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 166
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701df

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 167
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701e0

    const v4, 0x7f0701d0

    invoke-virtual {v0, v1, v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 169
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->car_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701d8

    const v4, 0x7f0701d6

    invoke-virtual {v0, v1, v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 170
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->car_iv:Landroid/widget/ImageView;

    const v3, 0x7f0701d7

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 171
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->car_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 173
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTlRl:Landroid/widget/RelativeLayout;

    const v2, 0x7f0701a5

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 174
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTlRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f0701e5

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 175
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTlRl:Landroid/widget/RelativeLayout;

    const v4, 0x7f07019a

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 177
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    const v5, 0x7f0701c7

    const v6, 0x7f070193

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 178
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundTlAnimIv:Landroid/widget/ImageView;

    const v7, 0x7f0701b2

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 179
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundTlAnimIv:Landroid/widget/ImageView;

    const v8, 0x7f0701bf

    const v9, 0x7f0701c8

    invoke-virtual {v0, v1, v9, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 181
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 182
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 183
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTrRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f070196

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 185
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 186
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundTrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 187
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundTrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v9, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 189
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBlRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 190
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBlRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f0701a6

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 191
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBlRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 193
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 194
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundBlAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 195
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundBlAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v9, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 197
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBrRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 198
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBrRl:Landroid/widget/RelativeLayout;

    const v2, 0x7f0701a6

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 199
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBrRl:Landroid/widget/RelativeLayout;

    const v2, 0x7f070196

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 201
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 202
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundBrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 203
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundBrAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v9, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 206
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundRightRl:Landroid/widget/RelativeLayout;

    const v2, 0x7f0701c6

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 208
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->dtsSoundRightIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 209
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundRightAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 210
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->soundRightAnimIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v9, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 212
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequencyRl:Landroid/widget/FrameLayout;

    const v2, 0x7f0701cd

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setHeight(Landroid/view/View;I)V

    .line 213
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequencyRl:Landroid/widget/FrameLayout;

    const v2, 0x7f0701c9

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 214
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequencyRl:Landroid/widget/FrameLayout;

    const v3, 0x7f0701aa

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 215
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency1Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 216
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency1Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    const v3, 0x7f0702dc

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 217
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency1Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 218
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency2Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 219
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency2Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 220
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency2Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 221
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency3Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 222
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency3Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 223
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency3Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 224
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->frequency3Recyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 226
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontRl:Landroid/widget/RelativeLayout;

    const v2, 0x7f070195

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 227
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f0701cf

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 228
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f0701a7

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 229
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontRl:Landroid/widget/RelativeLayout;

    const v3, 0x7f07019e

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 230
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font10Tv:Landroid/widget/TextView;

    const v3, 0x7f0701ad

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 231
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font10Tv:Landroid/widget/TextView;

    const v4, 0x7f070367

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 232
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font10Tv:Landroid/widget/TextView;

    const v5, 0x7f0701a0

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 233
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 234
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 235
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 236
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 237
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 238
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->font0Tv:Landroid/widget/TextView;

    const v6, 0x7f07019c

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 239
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontIv:Landroid/widget/ImageView;

    const v7, 0x7f0701bc

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 240
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 241
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontIv:Landroid/widget/ImageView;

    const v8, 0x7f0701c0

    invoke-virtual {v0, v1, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 242
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    const v9, 0x7f070198

    invoke-virtual {v0, v1, v9}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 243
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    const v10, 0x7f07033d

    invoke-virtual {v0, v1, v10}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 244
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 245
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    const v11, 0x7f0701c5

    invoke-virtual {v0, v1, v11}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 246
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontTv:Landroid/widget/TextView;

    const v12, 0x7f070369

    invoke-virtual {v0, v1, v12}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 247
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->fontTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSizeWrap(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 250
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 251
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 252
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 253
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 254
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 255
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 256
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 257
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 258
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBass0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 259
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 260
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 261
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 262
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v9}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 263
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v10}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 264
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 265
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v11}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 266
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v12}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 267
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->heavyBassTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSizeWrap(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindRl:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 270
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 271
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 272
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind10Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 273
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 274
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 275
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind5Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 276
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 277
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 278
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behind0Tv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 279
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v7}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 280
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v6}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 281
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindIv:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v8}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 282
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v9}, Lcom/nwd/audioset/utils/ViewAdapter;->setWidth(Landroid/view/View;I)V

    .line 283
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v10}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 284
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginBottom(Landroid/view/View;I)V

    .line 285
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindSeekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, v1, v11}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 286
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v12}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 287
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->behindTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;->setSizeWrap(Landroid/view/View;)V

    return-void
.end method

.method private initRecyclerview(Landroidx/recyclerview/widget/RecyclerView;Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;
    .locals 4

    .line 291
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 292
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 293
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    const/4 p2, 0x0

    .line 294
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Landroidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 295
    new-instance p2, Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    invoke-direct {p2, v0}, Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 296
    invoke-virtual {p2, p1}, Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-object p2
.end method

.method private sendBassGian(II)V
    .locals 3

    .line 402
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassOption(II)I

    move-result v0

    .line 403
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsBassGrow(III)V

    .line 404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBassGian : direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , gian = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , option = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dsp3-Dts-BassFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendBassOption(II)V
    .locals 3

    .line 408
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    invoke-virtual {v0, p1, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result v0

    .line 409
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsBassGrow(III)V

    .line 410
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendBassOption : direction = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , gian = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , option = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dsp3-Dts-BassFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setButtonBG()V
    .locals 5

    .line 517
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 518
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 519
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_d:Ljava/lang/String;

    const v2, 0x7f0d001e

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 522
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->commen_reset_n:Ljava/lang/String;

    const v2, 0x7f0d001f

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    .line 524
    :cond_1
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->eq_mode_n:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->eq_mode_d:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 526
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 528
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v2, 0x7f0d0034

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 530
    :cond_2
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_car:Ljava/lang/String;

    const v2, 0x7f0d0035

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    .line 534
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->car_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_car:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v2}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 536
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    .line 537
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->seekbar_bar_p:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    .line 540
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    const v2, 0x7f07033f

    invoke-virtual {v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result v1

    float-to-int v1, v1

    .line 541
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 542
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v3, v2}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 543
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 544
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->seekbar_bar_p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    .line 546
    :cond_5
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v2, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 547
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v2, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 548
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v2, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setThumbOffset(I)V

    .line 550
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    const/16 v2, 0xc8

    const/4 v3, 0x1

    if-nez v1, :cond_6

    .line 551
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_bass_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->anim_list:[I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 553
    :cond_6
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_7

    .line 554
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_tl_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 555
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->tlAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 557
    :cond_7
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_8

    .line 558
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_bass_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->anim_list:[I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 560
    :cond_8
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_9

    .line 561
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_tr_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 562
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->trAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 564
    :cond_9
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_a

    .line 565
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_bass_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->anim_list:[I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 567
    :cond_a
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_b

    .line 568
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_bl_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 569
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->blAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 571
    :cond_b
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_c

    .line 572
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_bass_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->anim_list:[I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 574
    :cond_c
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_d

    .line 575
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_br_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 576
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->brAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 578
    :cond_d
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->rightAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v1, :cond_e

    .line 579
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_bass_anim:[Ljava/lang/String;

    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->anim_list:[I

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getAnimDrawable([Ljava/lang/String;[IZI)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->rightAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 581
    :cond_e
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->rightAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_f

    .line 582
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_right_anim_iv:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 583
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->rightAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 586
    :cond_f
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_10

    .line 587
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_sound_bottom:Ljava/lang/String;

    const v2, 0x7f0d0040

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    .line 589
    :cond_10
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 590
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 591
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 593
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_right_iv:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bottom:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateConfigValue()V
    .locals 4

    .line 622
    :try_start_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "seekbar_progress"

    invoke-static {v0, v1}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 623
    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v2, "seekbar_bg"

    invoke-static {v1, v2}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 624
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 625
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 627
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/Utils;->getLayerDrawable(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 630
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateSeekBarUi()V
    .locals 10

    .line 309
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result v0

    .line 310
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    iget v3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v3}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result v1

    .line 311
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v3

    iget v5, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v5}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result v3

    .line 312
    iget v5, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    sub-int v7, v5, v0

    sub-int v8, v5, v1

    sub-int/2addr v5, v3

    .line 315
    iget-object v9, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v9, v7}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 316
    iget-object v7, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v7, v8}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 317
    iget-object v7, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v7, v5}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 318
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateSeekBarUi : front_gain = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,behind_gain = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , middle_gain = "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-Dts-BassFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassOption(II)I

    move-result v0

    .line 320
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassOption(II)I

    move-result v2

    .line 321
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v4

    invoke-virtual {v4, v6, v3}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassOption(II)I

    move-result v3

    .line 323
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$3;

    invoke-direct {v5, p0, v0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$3;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 331
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$4;

    invoke-direct {v5, p0, v2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$4;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 339
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;

    invoke-direct {v5, p0, v3}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;I)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 347
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSeekBarUi : front_option = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " ,behind_option = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , middle_option = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateUiWidth()V
    .locals 5

    const-string v0, "dsp3-Dts-BassFragment"

    .line 601
    :try_start_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    .line 602
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 603
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    const-string v4, "dts updateUiWidth: 00"

    .line 604
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    const/16 v1, 0x7d0

    if-ne v3, v1, :cond_0

    const/16 v1, 0x4b0

    if-ne v2, v1, :cond_0

    .line 606
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgBassBinding;->carIv:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 607
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070306

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const-string v1, "dts updateUiWidth: 11"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
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

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/FrgBassBinding;->rlRoot:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setGravity(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 615
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FrgBassBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgBassBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    .line 105
    new-instance v0, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    .line 106
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->binding:Lcom/nwd/audioset/databinding/FrgBassBinding;

    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FrgBassBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 44
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/dts/bass/BassP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/dts/bass/BassP;
    .locals 1

    .line 441
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/BassP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method protected initData()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 303
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 304
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->minGian:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMax(I)V

    .line 305
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->updateSeekBarUi()V

    return-void
.end method

.method public initView()V
    .locals 4

    const-string v0, "dsp3-Dts-BassFragment"

    const-string v1, "BassFragment init"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    .line 116
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->car_iv:Landroid/widget/ImageView;

    .line 117
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09012c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 118
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 119
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09016d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    .line 121
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090130

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_tv:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v2, 0x7f09016e

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_tv:Landroid/widget/TextView;

    .line 123
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f090092

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_tv:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_tv:Landroid/widget/TextView;

    .line 126
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_tv:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_tv:Landroid/widget/TextView;

    .line 129
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_tl_iv:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090100

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_tr_iv:Landroid/widget/ImageView;

    .line 131
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900f8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_bl_iv:Landroid/widget/ImageView;

    .line 132
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_br_iv:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->dts_sound_right_iv:Landroid/widget/ImageView;

    .line 135
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ad

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_tl_anim_iv:Landroid/widget/ImageView;

    .line 136
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_tr_anim_iv:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_bl_anim_iv:Landroid/widget/ImageView;

    .line 138
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_br_anim_iv:Landroid/widget/ImageView;

    .line 139
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sound_right_anim_iv:Landroid/widget/ImageView;

    .line 141
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090134

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

    .line 143
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

    .line 144
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    invoke-direct {p0, v0, v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->initRecyclerview(Landroidx/recyclerview/widget/RecyclerView;Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    .line 145
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    invoke-direct {p0, v0, v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->initRecyclerview(Landroidx/recyclerview/widget/RecyclerView;Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    .line 146
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_adapter:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    invoke-direct {p0, v0, v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->initRecyclerview(Landroidx/recyclerview/widget/RecyclerView;Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_SnapHelper:Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    .line 148
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->setButtonBG()V

    .line 149
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->updateUiWidth()V

    .line 150
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->updateConfigValue()V

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_tv:Landroid/widget/TextView;

    new-instance v1, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/ViewUtils;->setViewTreeObserver(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V

    .line 157
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->changeView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 352
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 353
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsBassGrow(III)V

    .line 354
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsBassGrow(III)V

    .line 355
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    const/4 v4, 0x3

    invoke-virtual {p1, v4, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsBassGrow(III)V

    .line 357
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    iget v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result p1

    .line 358
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    invoke-virtual {v0, v3, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result v0

    .line 359
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->defGian:I

    invoke-virtual {v1, v4, v2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsBassGain(II)I

    move-result v1

    .line 360
    iget v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    sub-int p1, v2, p1

    sub-int v0, v2, v0

    sub-int/2addr v2, v1

    .line 363
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v1, p1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 364
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 365
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 366
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$6;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$6;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 374
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$7;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$7;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 382
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$8;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$8;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 395
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 396
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->getResources()Landroid/content/res/Resources;

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
    .locals 3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StopTrackingTouch : Progress = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-Dts-BassFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->maxGian:I

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    sub-int/2addr v0, v2

    .line 427
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    .line 428
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sendBassGian(II)V

    .line 429
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : front_gain = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 430
    :cond_0
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v2, :cond_1

    const/4 p1, 0x2

    .line 431
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sendBassGian(II)V

    .line 432
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : behind_gain = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 433
    :cond_1
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    if-ne p1, v2, :cond_2

    const/4 p1, 0x3

    .line 434
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->sendBassGian(II)V

    .line 435
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StopTrackingTouch : heavy_bass_gain = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 2

    .line 506
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->virtual_reset_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->font_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    .line 508
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->behind_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    .line 509
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->heavy_bass_seekbar:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V

    .line 510
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview1:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->innerScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 511
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview2:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->innerScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 512
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->frequencyRecyclerview3:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->innerScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
