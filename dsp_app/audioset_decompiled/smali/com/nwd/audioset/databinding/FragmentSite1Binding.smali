.class public final Lcom/nwd/audioset/databinding/FragmentSite1Binding;
.super Ljava/lang/Object;
.source "FragmentSite1Binding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bottomMoveBtn:Landroid/widget/Button;

.field public final eq1:Lcom/nwd/audioset/view/nwdview/SeekBarView;

.field public final fbView:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

.field public final leftMoveBtn:Landroid/widget/Button;

.field public final llYinchangBg:Landroid/widget/RelativeLayout;

.field public final rightMoveBtn:Landroid/widget/Button;

.field public final rlYinchang1:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final siteModeBehind:Landroid/widget/Button;

.field public final siteModeCenter:Landroid/widget/Button;

.field public final siteModeLeft:Landroid/widget/Button;

.field public final siteModeRight:Landroid/widget/Button;

.field public final siteReset:Landroid/widget/Button;

.field public final topMoveBtn:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/nwd/audioset/view/nwdview/SeekBarView;Lcom/nwd/audioset/view/nwdview/FaderBalanceView;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->rootView:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p2, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->bottomMoveBtn:Landroid/widget/Button;

    .line 70
    iput-object p3, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->eq1:Lcom/nwd/audioset/view/nwdview/SeekBarView;

    .line 71
    iput-object p4, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->fbView:Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    .line 72
    iput-object p5, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->leftMoveBtn:Landroid/widget/Button;

    .line 73
    iput-object p6, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->llYinchangBg:Landroid/widget/RelativeLayout;

    .line 74
    iput-object p7, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->rightMoveBtn:Landroid/widget/Button;

    .line 75
    iput-object p8, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->rlYinchang1:Landroid/widget/RelativeLayout;

    .line 76
    iput-object p9, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->siteModeBehind:Landroid/widget/Button;

    .line 77
    iput-object p10, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->siteModeCenter:Landroid/widget/Button;

    .line 78
    iput-object p11, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->siteModeLeft:Landroid/widget/Button;

    .line 79
    iput-object p12, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->siteModeRight:Landroid/widget/Button;

    .line 80
    iput-object p13, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->siteReset:Landroid/widget/Button;

    .line 81
    iput-object p14, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->topMoveBtn:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentSite1Binding;
    .locals 17

    move-object/from16 v0, p0

    const v1, 0x7f090096

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_c

    const v1, 0x7f09010d

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/nwd/audioset/view/nwdview/SeekBarView;

    if-eqz v5, :cond_b

    const v1, 0x7f09011e

    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;

    if-eqz v6, :cond_a

    const v1, 0x7f0901b1

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/widget/Button;

    if-eqz v7, :cond_9

    const v1, 0x7f0901e3

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/widget/RelativeLayout;

    if-eqz v8, :cond_8

    const v1, 0x7f090243

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/widget/Button;

    if-eqz v9, :cond_7

    const v1, 0x7f09025f

    .line 141
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroid/widget/RelativeLayout;

    if-eqz v10, :cond_6

    const v1, 0x7f090298

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/widget/Button;

    if-eqz v11, :cond_5

    const v1, 0x7f090299

    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/Button;

    if-eqz v12, :cond_4

    const v1, 0x7f09029a

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/widget/Button;

    if-eqz v13, :cond_3

    const v1, 0x7f09029b

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Landroid/widget/Button;

    if-eqz v14, :cond_2

    const v1, 0x7f09029c

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/widget/Button;

    if-eqz v15, :cond_1

    const v1, 0x7f090310

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Landroid/widget/Button;

    if-eqz v16, :cond_0

    .line 176
    new-instance v1, Lcom/nwd/audioset/databinding/FragmentSite1Binding;

    move-object v3, v0

    check-cast v3, Landroid/widget/RelativeLayout;

    move-object v2, v1

    invoke-direct/range {v2 .. v16}, Lcom/nwd/audioset/databinding/FragmentSite1Binding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/nwd/audioset/view/nwdview/SeekBarView;Lcom/nwd/audioset/view/nwdview/FaderBalanceView;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/RelativeLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/Button;)V

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
    const-string v0, "rightMoveBtn"

    goto :goto_0

    :cond_8
    const-string v0, "llYinchangBg"

    goto :goto_0

    :cond_9
    const-string v0, "leftMoveBtn"

    goto :goto_0

    :cond_a
    const-string v0, "fbView"

    goto :goto_0

    :cond_b
    const-string v0, "eq1"

    goto :goto_0

    :cond_c
    const-string v0, "bottomMoveBtn"

    .line 180
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentSite1Binding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FragmentSite1Binding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FragmentSite1Binding;
    .locals 2

    const v0, 0x7f0c003b

    const/4 v1, 0x0

    .line 98
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 100
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentSite1Binding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FragmentSite1Binding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
