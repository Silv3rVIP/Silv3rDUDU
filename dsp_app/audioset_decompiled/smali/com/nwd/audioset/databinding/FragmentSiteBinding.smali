.class public final Lcom/nwd/audioset/databinding/FragmentSiteBinding;
.super Ljava/lang/Object;
.source "FragmentSiteBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomMoveBtn:Landroid/widget/Button;

.field public final eq1:Lcom/nwd/audioset/view/nwdview/SeekBarView;

.field public final fbView:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

.field public final ivYinchangChe:Landroid/widget/ImageView;

.field public final leftMoveBtn:Landroid/widget/Button;

.field public final llSitePlace1:Landroid/view/View;

.field public final llSitePlace2:Landroid/view/View;

.field public final llYinchangBg:Landroid/widget/RelativeLayout;

.field public final rightMoveBtn:Landroid/widget/Button;

.field public final rlSiteMode:Landroid/widget/RelativeLayout;

.field public final rlYinchang:Landroid/widget/RelativeLayout;

.field public final rlYinchang1:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final siteModeBehind:Landroid/widget/Button;

.field public final siteModeCenter:Landroid/widget/Button;

.field public final siteModeLeft:Landroid/widget/Button;

.field public final siteModeRight:Landroid/widget/Button;

.field public final siteReset:Landroid/widget/Button;

.field public final topMoveBtn:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/nwd/audioset/view/nwdview/SeekBarView;Lcom/nwd/audioset/view/nwdview/FaderBalanceView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    move-object v0, p0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 126
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->rootView:Landroid/widget/LinearLayout;

    move-object v1, p2

    .line 127
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->bottomMoveBtn:Landroid/widget/Button;

    move-object v1, p3

    .line 128
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->eq1:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    move-object v1, p4

    .line 129
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->fbView:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    move-object v1, p5

    .line 130
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->ivYinchangChe:Landroid/widget/ImageView;

    move-object v1, p6

    .line 131
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->leftMoveBtn:Landroid/widget/Button;

    move-object v1, p7

    .line 132
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->llSitePlace1:Landroid/view/View;

    move-object v1, p8

    .line 133
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->llSitePlace2:Landroid/view/View;

    move-object v1, p9

    .line 134
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->llYinchangBg:Landroid/widget/RelativeLayout;

    move-object v1, p10

    .line 135
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->rightMoveBtn:Landroid/widget/Button;

    move-object v1, p11

    .line 136
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->rlSiteMode:Landroid/widget/RelativeLayout;

    move-object v1, p12

    .line 137
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->rlYinchang:Landroid/widget/RelativeLayout;

    move-object v1, p13

    .line 138
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->rlYinchang1:Landroid/widget/RelativeLayout;

    move-object/from16 v1, p14

    .line 139
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->siteModeBehind:Landroid/widget/Button;

    move-object/from16 v1, p15

    .line 140
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->siteModeCenter:Landroid/widget/Button;

    move-object/from16 v1, p16

    .line 141
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->siteModeLeft:Landroid/widget/Button;

    move-object/from16 v1, p17

    .line 142
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->siteModeRight:Landroid/widget/Button;

    move-object/from16 v1, p18

    .line 143
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->siteReset:Landroid/widget/Button;

    move-object/from16 v1, p19

    .line 144
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->topMoveBtn:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentSiteBinding;
    .locals 22

    move-object/from16 v0, p0

    const v1, 0x7f090096

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_e

    const v1, 0x7f09010d

    .line 179
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    if-eqz v5, :cond_d

    const v1, 0x7f09011e

    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    if-eqz v6, :cond_c

    const v1, 0x7f0901a0

    .line 189
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/ImageView;

    const v1, 0x7f0901b1

    .line 190
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_b

    const v1, 0x7f0901d1

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const v1, 0x7f0901d2

    .line 196
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    const v1, 0x7f0901e3

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_a

    const v1, 0x7f090243

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_9

    const v1, 0x7f09025a

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/RelativeLayout;

    if-eqz v13, :cond_8

    const v1, 0x7f09025e

    .line 212
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/RelativeLayout;

    if-eqz v14, :cond_7

    const v1, 0x7f09025f

    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/RelativeLayout;

    if-eqz v15, :cond_6

    const v1, 0x7f090298

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_5

    const v1, 0x7f090299

    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Landroid/widget/Button;

    if-eqz v17, :cond_4

    const v1, 0x7f09029a

    .line 232
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Landroid/widget/Button;

    if-eqz v18, :cond_3

    const v1, 0x7f09029b

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Landroid/widget/Button;

    if-eqz v19, :cond_2

    const v1, 0x7f09029c

    .line 242
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Landroid/widget/Button;

    if-eqz v20, :cond_1

    const v1, 0x7f090310

    .line 247
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Landroid/widget/Button;

    if-eqz v21, :cond_0

    .line 252
    new-instance v1, Lcom/nwd/audioset/databinding/FragmentSiteBinding;

    move-object v2, v1

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    invoke-direct/range {v2 .. v21}, Lcom/nwd/audioset/databinding/FragmentSiteBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Lcom/nwd/audioset/view/nwdview/SeekBarView;Lcom/nwd/audioset/view/nwdview/FaderBalanceView;Landroid/widget/ImageView;Landroid/widget/Button;Landroid/view/View;Landroid/view/View;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

    return-object v1

    :cond_0
    const-string v0, "topMoveBtn"

    goto :goto_0

    :cond_1
    const-string v0, "siteReset"

    goto :goto_0

    :cond_2
    const-string v0, "siteModeRight"

    goto :goto_0

    :cond_3
    const-string v0, "siteModeLeft"

    goto :goto_0

    :cond_4
    const-string v0, "siteModeCenter"

    goto :goto_0

    :cond_5
    const-string v0, "siteModeBehind"

    goto :goto_0

    :cond_6
    const-string v0, "rlYinchang1"

    goto :goto_0

    :cond_7
    const-string v0, "rlYinchang"

    goto :goto_0

    :cond_8
    const-string v0, "rlSiteMode"

    goto :goto_0

    :cond_9
    const-string v0, "rightMoveBtn"

    goto :goto_0

    :cond_a
    const-string v0, "llYinchangBg"

    goto :goto_0

    :cond_b
    const-string v0, "leftMoveBtn"

    goto :goto_0

    :cond_c
    const-string v0, "fbView"

    goto :goto_0

    :cond_d
    const-string v0, "eq1"

    goto :goto_0

    :cond_e
    const-string v0, "bottomMoveBtn"

    .line 257
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentSiteBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 155
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FragmentSiteBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FragmentSiteBinding;
    .locals 2

    const v0, 0x7f0c003a

    const/4 v1, 0x0

    .line 161
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 163
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 165
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentSiteBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FragmentSiteBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
