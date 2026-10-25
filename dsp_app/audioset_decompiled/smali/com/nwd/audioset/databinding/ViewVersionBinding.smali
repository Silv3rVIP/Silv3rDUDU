.class public final Lcom/nwd/audioset/databinding/ViewVersionBinding;
.super Ljava/lang/Object;
.source "ViewVersionBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final layoutImportExport:Landroid/widget/LinearLayout;

.field public final layoutVersion:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/view/View;

.field public final tvAppver:Landroid/widget/TextView;

.field public final tvEmmcid:Landroid/widget/TextView;

.field public final tvPlatformver:Landroid/widget/TextView;

.field public final tvVersion:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->rootView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->layoutImportExport:Landroid/widget/LinearLayout;

    .line 43
    iput-object p3, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->layoutVersion:Landroid/widget/LinearLayout;

    .line 44
    iput-object p4, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->tvAppver:Landroid/widget/TextView;

    .line 45
    iput-object p5, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->tvEmmcid:Landroid/widget/TextView;

    .line 46
    iput-object p6, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->tvPlatformver:Landroid/widget/TextView;

    .line 47
    iput-object p7, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->tvVersion:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewVersionBinding;
    .locals 9

    const v0, 0x7f0901ab

    .line 72
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    const v0, 0x7f0901af

    .line 77
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_4

    const v0, 0x7f09031b

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    const v0, 0x7f090323

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    const v0, 0x7f090331

    .line 92
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    const v0, 0x7f09033c

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 102
    new-instance v0, Lcom/nwd/audioset/databinding/ViewVersionBinding;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/nwd/audioset/databinding/ViewVersionBinding;-><init>(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "tvVersion"

    goto :goto_0

    :cond_1
    const-string p0, "tvPlatformver"

    goto :goto_0

    :cond_2
    const-string p0, "tvEmmcid"

    goto :goto_0

    :cond_3
    const-string p0, "tvAppver"

    goto :goto_0

    :cond_4
    const-string p0, "layoutVersion"

    goto :goto_0

    :cond_5
    const-string p0, "layoutImportExport"

    .line 105
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/nwd/audioset/databinding/ViewVersionBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0058

    .line 62
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 63
    invoke-static {p1}, Lcom/nwd/audioset/databinding/ViewVersionBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewVersionBinding;

    move-result-object p0

    return-object p0

    .line 60
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/nwd/audioset/databinding/ViewVersionBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
