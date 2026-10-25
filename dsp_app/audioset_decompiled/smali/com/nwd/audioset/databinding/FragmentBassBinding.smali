.class public final Lcom/nwd/audioset/databinding/FragmentBassBinding;
.super Ljava/lang/Object;
.source "FragmentBassBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dbbBtn:Landroid/widget/Button;

.field public final heightLowBtn:Landroid/widget/Button;

.field public final llGaoditongBg:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final round3dBtn:Landroid/widget/Button;

.field public final viewLine:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->rootView:Landroid/widget/LinearLayout;

    .line 40
    iput-object p2, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->dbbBtn:Landroid/widget/Button;

    .line 41
    iput-object p3, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->heightLowBtn:Landroid/widget/Button;

    .line 42
    iput-object p4, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->llGaoditongBg:Landroid/widget/LinearLayout;

    .line 43
    iput-object p5, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->round3dBtn:Landroid/widget/Button;

    .line 44
    iput-object p6, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->viewLine:Landroid/view/View;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentBassBinding;
    .locals 8

    const v0, 0x7f0900d7

    .line 74
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/Button;

    if-eqz v3, :cond_4

    const v0, 0x7f09016f

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_3

    const v0, 0x7f0901c8

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_2

    const v0, 0x7f090261

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/Button;

    if-eqz v6, :cond_1

    const v0, 0x7f090344

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 99
    new-instance v0, Lcom/nwd/audioset/databinding/FragmentBassBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/nwd/audioset/databinding/FragmentBassBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/widget/Button;Landroid/widget/LinearLayout;Landroid/widget/Button;Landroid/view/View;)V

    return-object v0

    :cond_0
    const-string p0, "viewLine"

    goto :goto_0

    :cond_1
    const-string p0, "round3dBtn"

    goto :goto_0

    :cond_2
    const-string p0, "llGaoditongBg"

    goto :goto_0

    :cond_3
    const-string p0, "heightLowBtn"

    goto :goto_0

    :cond_4
    const-string p0, "dbbBtn"

    .line 102
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FragmentBassBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/FragmentBassBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FragmentBassBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FragmentBassBinding;
    .locals 2

    const v0, 0x7f0c002f

    const/4 v1, 0x0

    .line 61
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 65
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/FragmentBassBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentBassBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/FragmentBassBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FragmentBassBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
