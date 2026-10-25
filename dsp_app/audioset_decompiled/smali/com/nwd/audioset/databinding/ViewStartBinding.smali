.class public final Lcom/nwd/audioset/databinding/ViewStartBinding;
.super Ljava/lang/Object;
.source "ViewStartBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final dtsSwitchIv:Landroid/widget/ImageView;

.field public final dtsSwitchIv1:Landroid/widget/ImageView;

.field public final layoutStart:Landroid/widget/LinearLayout;

.field public final llStDsp:Landroid/widget/LinearLayout;

.field public final llStDts:Landroid/widget/LinearLayout;

.field public final llStDtsSwitch:Landroid/widget/LinearLayout;

.field public final llStLeft1:Landroid/widget/LinearLayout;

.field public final llStMd:Landroid/widget/LinearLayout;

.field public final llStRight1:Landroid/widget/LinearLayout;

.field public final llStTiaoyin:Landroid/widget/LinearLayout;

.field public final llStYinchang:Landroid/widget/LinearLayout;

.field public final llStYinxiao:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->rootView:Landroid/widget/LinearLayout;

    .line 65
    iput-object p2, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv:Landroid/widget/ImageView;

    .line 66
    iput-object p3, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->dtsSwitchIv1:Landroid/widget/ImageView;

    .line 67
    iput-object p4, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->layoutStart:Landroid/widget/LinearLayout;

    .line 68
    iput-object p5, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDsp:Landroid/widget/LinearLayout;

    .line 69
    iput-object p6, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDts:Landroid/widget/LinearLayout;

    .line 70
    iput-object p7, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStDtsSwitch:Landroid/widget/LinearLayout;

    .line 71
    iput-object p8, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStLeft1:Landroid/widget/LinearLayout;

    .line 72
    iput-object p9, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStMd:Landroid/widget/LinearLayout;

    .line 73
    iput-object p10, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStRight1:Landroid/widget/LinearLayout;

    .line 74
    iput-object p11, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStTiaoyin:Landroid/widget/LinearLayout;

    .line 75
    iput-object p12, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStYinchang:Landroid/widget/LinearLayout;

    .line 76
    iput-object p13, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->llStYinxiao:Landroid/widget/LinearLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewStartBinding;
    .locals 15

    const v0, 0x7f090102

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_b

    const v0, 0x7f090103

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_a

    const v0, 0x7f0901ae

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/LinearLayout;

    if-eqz v5, :cond_9

    const v0, 0x7f0901d3

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8

    const v0, 0x7f0901d4

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_7

    const v0, 0x7f0901d5

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    const v0, 0x7f0901d6

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    const v0, 0x7f0901d7

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    if-eqz v10, :cond_4

    const v0, 0x7f0901d8

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    if-eqz v11, :cond_3

    const v0, 0x7f0901d9

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/LinearLayout;

    if-eqz v12, :cond_2

    const v0, 0x7f0901da

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_1

    const v0, 0x7f0901db

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/LinearLayout;

    if-eqz v14, :cond_0

    .line 166
    new-instance v0, Lcom/nwd/audioset/databinding/ViewStartBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v14}, Lcom/nwd/audioset/databinding/ViewStartBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    return-object v0

    :cond_0
    const-string p0, "llStYinxiao"

    goto :goto_0

    :cond_1
    const-string p0, "llStYinchang"

    goto :goto_0

    :cond_2
    const-string p0, "llStTiaoyin"

    goto :goto_0

    :cond_3
    const-string p0, "llStRight1"

    goto :goto_0

    :cond_4
    const-string p0, "llStMd"

    goto :goto_0

    :cond_5
    const-string p0, "llStLeft1"

    goto :goto_0

    :cond_6
    const-string p0, "llStDtsSwitch"

    goto :goto_0

    :cond_7
    const-string p0, "llStDts"

    goto :goto_0

    :cond_8
    const-string p0, "llStDsp"

    goto :goto_0

    :cond_9
    const-string p0, "layoutStart"

    goto :goto_0

    :cond_a
    const-string p0, "dtsSwitchIv1"

    goto :goto_0

    :cond_b
    const-string p0, "dtsSwitchIv"

    .line 170
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/ViewStartBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 87
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/ViewStartBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/ViewStartBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/ViewStartBinding;
    .locals 2

    const v0, 0x7f0c0057

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 95
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/ViewStartBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewStartBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/ViewStartBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/databinding/ViewStartBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
