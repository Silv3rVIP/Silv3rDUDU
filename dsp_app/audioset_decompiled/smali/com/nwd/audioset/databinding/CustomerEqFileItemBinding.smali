.class public final Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;
.super Ljava/lang/Object;
.source "CustomerEqFileItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivDel:Landroid/widget/ImageView;

.field public final ivFog:Landroid/widget/ImageView;

.field public final ivSelectedFile:Landroid/widget/ImageView;

.field public final layoutRoot:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvEqFilename:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->rootView:Landroid/widget/LinearLayout;

    .line 41
    iput-object p2, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->ivDel:Landroid/widget/ImageView;

    .line 42
    iput-object p3, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->ivFog:Landroid/widget/ImageView;

    .line 43
    iput-object p4, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->ivSelectedFile:Landroid/widget/ImageView;

    .line 44
    iput-object p5, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->layoutRoot:Landroid/widget/LinearLayout;

    .line 45
    iput-object p6, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->tvEqFilename:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;
    .locals 8

    const v0, 0x7f09018d

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_4

    const v0, 0x7f090192

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_3

    const v0, 0x7f09019c

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v5, :cond_2

    const v0, 0x7f0901ac

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    const v0, 0x7f090326

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 100
    new-instance v0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "tvEqFilename"

    goto :goto_0

    :cond_1
    const-string p0, "layoutRoot"

    goto :goto_0

    :cond_2
    const-string p0, "ivSelectedFile"

    goto :goto_0

    :cond_3
    const-string p0, "ivFog"

    goto :goto_0

    :cond_4
    const-string p0, "ivDel"

    .line 103
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 56
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;
    .locals 2

    const v0, 0x7f0c001f

    const/4 v1, 0x0

    .line 62
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 64
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 66
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/nwd/audioset/databinding/CustomerEqFileItemBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
