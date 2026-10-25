.class public final Lcom/nwd/audioset/databinding/ItemFrequencyBinding;
.super Ljava/lang/Object;
.source "ItemFrequencyBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final frequencyTv:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;->rootView:Landroid/widget/LinearLayout;

    .line 26
    iput-object p2, p0, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;->frequencyTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ItemFrequencyBinding;
    .locals 2

    const v0, 0x7f090137

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 61
    new-instance v1, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0, v0}, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v1

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "frequencyTv"

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/ItemFrequencyBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 37
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/ItemFrequencyBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/ItemFrequencyBinding;
    .locals 2

    const v0, 0x7f0c0044

    const/4 v1, 0x0

    .line 43
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ItemFrequencyBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/nwd/audioset/databinding/ItemFrequencyBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
