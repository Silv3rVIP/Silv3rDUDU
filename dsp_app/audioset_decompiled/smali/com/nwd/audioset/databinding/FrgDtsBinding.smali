.class public final Lcom/nwd/audioset/databinding/FrgDtsBinding;
.super Ljava/lang/Object;
.source "FrgDtsBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final bassTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final dtsContent:Landroid/widget/FrameLayout;

.field private final rootView:Landroid/view/View;

.field public final sceneModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final soundGatheringTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final surroundModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final tabLl:Landroid/widget/LinearLayout;

.field public final virtualTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/FrameLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->rootView:Landroid/view/View;

    .line 61
    iput-object p2, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->bassTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 62
    iput-object p3, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->dtsContent:Landroid/widget/FrameLayout;

    .line 63
    iput-object p4, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->sceneModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 64
    iput-object p5, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->soundGatheringTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 65
    iput-object p6, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->surroundModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 66
    iput-object p7, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->tabLl:Landroid/widget/LinearLayout;

    .line 67
    iput-object p8, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->virtualTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FrgDtsBinding;
    .locals 10

    const v0, 0x7f090089

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v3, :cond_5

    const v0, 0x7f0900f6

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/FrameLayout;

    if-eqz v4, :cond_4

    const v0, 0x7f090270

    .line 107
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v5, :cond_3

    const v0, 0x7f0902ab

    .line 112
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v6, :cond_2

    const v0, 0x7f0902f3

    .line 117
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v7, :cond_1

    const v0, 0x7f0902f5

    .line 122
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    const v0, 0x7f09034f

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v9, :cond_0

    .line 128
    new-instance v0, Lcom/nwd/audioset/databinding/FrgDtsBinding;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/nwd/audioset/databinding/FrgDtsBinding;-><init>(Landroid/view/View;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/FrameLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;)V

    return-object v0

    :cond_0
    const-string p0, "virtualTv"

    goto :goto_0

    :cond_1
    const-string p0, "surroundModeTv"

    goto :goto_0

    :cond_2
    const-string p0, "soundGatheringTv"

    goto :goto_0

    :cond_3
    const-string p0, "sceneModeTv"

    goto :goto_0

    :cond_4
    const-string p0, "dtsContent"

    goto :goto_0

    :cond_5
    const-string p0, "bassTv"

    .line 131
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgDtsBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/FrgDtsBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FrgDtsBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FrgDtsBinding;
    .locals 2

    const v0, 0x7f0c003f

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 86
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/FrgDtsBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FrgDtsBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FrgDtsBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
