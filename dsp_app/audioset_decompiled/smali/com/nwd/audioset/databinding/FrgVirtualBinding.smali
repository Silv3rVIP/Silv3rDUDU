.class public final Lcom/nwd/audioset/databinding/FrgVirtualBinding;
.super Ljava/lang/Object;
.source "FrgVirtualBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final carIv:Landroid/widget/ImageView;

.field public final dtsSoundBlIv:Landroid/widget/ImageView;

.field public final dtsSoundBrIv:Landroid/widget/ImageView;

.field public final dtsSoundTlIv:Landroid/widget/ImageView;

.field public final dtsSoundTrIv:Landroid/widget/ImageView;

.field public final rlRoot:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final virtualMaskIv:Landroid/widget/ImageView;

.field public final virtualResetIv:Landroid/widget/ImageView;

.field public final virtualSwitchFl:Landroid/widget/FrameLayout;

.field public final virtualSwitchIv:Landroid/widget/ImageView;

.field public final virtualSwitchTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 76
    iput-object p2, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->carIv:Landroid/widget/ImageView;

    .line 77
    iput-object p3, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBlIv:Landroid/widget/ImageView;

    .line 78
    iput-object p4, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundBrIv:Landroid/widget/ImageView;

    .line 79
    iput-object p5, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTlIv:Landroid/widget/ImageView;

    .line 80
    iput-object p6, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->dtsSoundTrIv:Landroid/widget/ImageView;

    .line 81
    iput-object p7, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->rlRoot:Landroid/widget/RelativeLayout;

    .line 82
    iput-object p8, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualMaskIv:Landroid/widget/ImageView;

    .line 83
    iput-object p9, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualResetIv:Landroid/widget/ImageView;

    .line 84
    iput-object p10, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchFl:Landroid/widget/FrameLayout;

    .line 85
    iput-object p11, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchIv:Landroid/widget/ImageView;

    .line 86
    iput-object p12, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->virtualSwitchTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FrgVirtualBinding;
    .locals 14

    const v0, 0x7f0900a7

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_9

    const v0, 0x7f0900f8

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_8

    const v0, 0x7f0900fa

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_7

    const v0, 0x7f0900fe

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    const v0, 0x7f090100

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_5

    const v0, 0x7f090253

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/RelativeLayout;

    const v0, 0x7f09034a

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_4

    const v0, 0x7f09034b

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_3

    const v0, 0x7f09034c

    .line 152
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/FrameLayout;

    if-eqz v11, :cond_2

    const v0, 0x7f09034d

    .line 157
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_1

    const v0, 0x7f09034e

    .line 162
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_0

    .line 167
    new-instance v0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/RelativeLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lcom/nwd/audioset/databinding/FrgVirtualBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "virtualSwitchTv"

    goto :goto_0

    :cond_1
    const-string p0, "virtualSwitchIv"

    goto :goto_0

    :cond_2
    const-string p0, "virtualSwitchFl"

    goto :goto_0

    :cond_3
    const-string p0, "virtualResetIv"

    goto :goto_0

    :cond_4
    const-string p0, "virtualMaskIv"

    goto :goto_0

    :cond_5
    const-string p0, "dtsSoundTrIv"

    goto :goto_0

    :cond_6
    const-string p0, "dtsSoundTlIv"

    goto :goto_0

    :cond_7
    const-string p0, "dtsSoundBrIv"

    goto :goto_0

    :cond_8
    const-string p0, "dtsSoundBlIv"

    goto :goto_0

    :cond_9
    const-string p0, "carIv"

    .line 171
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgVirtualBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FrgVirtualBinding;
    .locals 2

    const v0, 0x7f0c0043

    const/4 v1, 0x0

    .line 103
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 105
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FrgVirtualBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FrgVirtualBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
