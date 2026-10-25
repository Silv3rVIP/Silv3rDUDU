.class public final Lcom/nwd/audioset/databinding/SpinnerItemBinding;
.super Ljava/lang/Object;
.source "SpinnerItemBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field private final rootView:Landroid/widget/TextView;

.field public final text1:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nwd/audioset/databinding/SpinnerItemBinding;->rootView:Landroid/widget/TextView;

    .line 25
    iput-object p2, p0, Lcom/nwd/audioset/databinding/SpinnerItemBinding;->text1:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/SpinnerItemBinding;
    .locals 2

    const v0, 0x1020014

    .line 55
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 60
    new-instance v1, Lcom/nwd/audioset/databinding/SpinnerItemBinding;

    check-cast p0, Landroid/widget/TextView;

    invoke-direct {v1, p0, v0}, Lcom/nwd/audioset/databinding/SpinnerItemBinding;-><init>(Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v1

    .line 62
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "text1"

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/SpinnerItemBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 36
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/SpinnerItemBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/SpinnerItemBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/SpinnerItemBinding;
    .locals 2

    const v0, 0x7f0c0052

    const/4 v1, 0x0

    .line 42
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 44
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/SpinnerItemBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/SpinnerItemBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/SpinnerItemBinding;->getRoot()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/TextView;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/nwd/audioset/databinding/SpinnerItemBinding;->rootView:Landroid/widget/TextView;

    return-object v0
.end method
