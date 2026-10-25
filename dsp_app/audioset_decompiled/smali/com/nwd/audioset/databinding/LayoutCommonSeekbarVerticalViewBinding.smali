.class public final Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;
.super Ljava/lang/Object;
.source "LayoutCommonSeekbarVerticalViewBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/LinearLayout;

.field public final seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;

.field public final seekbarGainValue:Landroid/widget/TextView;

.field public final seekbarName:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->rootView:Landroid/widget/LinearLayout;

    .line 35
    iput-object p2, p0, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->seekbar:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;

    .line 36
    iput-object p3, p0, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->seekbarGainValue:Landroid/widget/TextView;

    .line 37
    iput-object p4, p0, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->seekbarName:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;
    .locals 4

    const v0, 0x7f09028b

    .line 67
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;

    if-eqz v0, :cond_2

    const v1, 0x7f09028c

    .line 72
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    const v2, 0x7f09028d

    .line 77
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 82
    new-instance v3, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0, v0, v1, v2}, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;-><init>(Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v3

    :cond_0
    const-string p0, "seekbarName"

    goto :goto_0

    :cond_1
    const-string p0, "seekbarGainValue"

    goto :goto_0

    :cond_2
    const-string p0, "seekbar"

    .line 85
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;
    .locals 2

    const v0, 0x7f0c0046

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 56
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/nwd/audioset/databinding/LayoutCommonSeekbarVerticalViewBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
