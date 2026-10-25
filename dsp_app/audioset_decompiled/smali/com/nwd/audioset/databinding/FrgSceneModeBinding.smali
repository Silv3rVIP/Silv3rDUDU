.class public final Lcom/nwd/audioset/databinding/FrgSceneModeBinding;
.super Ljava/lang/Object;
.source "FrgSceneModeBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final cinemaMode:Landroid/widget/FrameLayout;

.field public final cinemaModeBgIv:Landroid/widget/ImageView;

.field public final cinemaModeCoverIv:Landroid/widget/ImageView;

.field public final cinemaModeTv:Landroid/widget/TextView;

.field public final dtsLogoIv:Landroid/widget/ImageView;

.field public final dtsSwitchIv:Landroid/widget/ImageView;

.field public final musicMode:Landroid/widget/FrameLayout;

.field public final musicModeBgIv:Landroid/widget/ImageView;

.field public final musicModeCoverIv:Landroid/widget/ImageView;

.field public final musicModeTv:Landroid/widget/TextView;

.field private final rootView:Landroid/view/View;

.field public final specialityMode:Landroid/widget/FrameLayout;

.field public final specialityModeBgIv:Landroid/widget/ImageView;

.field public final specialityModeBgIv1:Landroid/widget/ImageView;

.field public final specialityModeCoverIv:Landroid/widget/ImageView;

.field public final specialityModeTv:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V
    .locals 2

    move-object v0, p0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 127
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->rootView:Landroid/view/View;

    move-object v1, p2

    .line 128
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->cinemaMode:Landroid/widget/FrameLayout;

    move-object v1, p3

    .line 129
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->cinemaModeBgIv:Landroid/widget/ImageView;

    move-object v1, p4

    .line 130
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->cinemaModeCoverIv:Landroid/widget/ImageView;

    move-object v1, p5

    .line 131
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->cinemaModeTv:Landroid/widget/TextView;

    move-object v1, p6

    .line 132
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->dtsLogoIv:Landroid/widget/ImageView;

    move-object v1, p7

    .line 133
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->dtsSwitchIv:Landroid/widget/ImageView;

    move-object v1, p8

    .line 134
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->musicMode:Landroid/widget/FrameLayout;

    move-object v1, p9

    .line 135
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->musicModeBgIv:Landroid/widget/ImageView;

    move-object v1, p10

    .line 136
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->musicModeCoverIv:Landroid/widget/ImageView;

    move-object v1, p11

    .line 137
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->musicModeTv:Landroid/widget/TextView;

    move-object v1, p12

    .line 138
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->specialityMode:Landroid/widget/FrameLayout;

    move-object v1, p13

    .line 139
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->specialityModeBgIv:Landroid/widget/ImageView;

    move-object/from16 v1, p14

    .line 140
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->specialityModeBgIv1:Landroid/widget/ImageView;

    move-object/from16 v1, p15

    .line 141
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->specialityModeCoverIv:Landroid/widget/ImageView;

    move-object/from16 v1, p16

    .line 142
    iput-object v1, v0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->specialityModeTv:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FrgSceneModeBinding;
    .locals 18

    move-object/from16 v1, p0

    const v0, 0x7f0900c3

    .line 172
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/FrameLayout;

    const v0, 0x7f0900c4

    .line 173
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    const v0, 0x7f0900c5

    .line 178
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    const v0, 0x7f0900c6

    .line 183
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_8

    const v0, 0x7f0900f7

    .line 188
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_7

    const v0, 0x7f090102

    .line 193
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_6

    const v0, 0x7f090212

    .line 198
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    const v0, 0x7f090213

    .line 199
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    const v0, 0x7f090214

    .line 204
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_4

    const v0, 0x7f090215

    .line 209
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_3

    const v0, 0x7f0902b1

    .line 214
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/FrameLayout;

    const v0, 0x7f0902b2

    .line 215
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_2

    const v0, 0x7f0902b3

    .line 220
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    const v0, 0x7f0902b4

    .line 221
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/ImageView;

    if-eqz v15, :cond_1

    const v0, 0x7f0902b5

    .line 226
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_0

    .line 231
    new-instance v17, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v16}, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;-><init>(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;)V

    return-object v17

    :cond_0
    const-string v0, "specialityModeTv"

    goto :goto_0

    :cond_1
    const-string v0, "specialityModeCoverIv"

    goto :goto_0

    :cond_2
    const-string v0, "specialityModeBgIv"

    goto :goto_0

    :cond_3
    const-string v0, "musicModeTv"

    goto :goto_0

    :cond_4
    const-string v0, "musicModeCoverIv"

    goto :goto_0

    :cond_5
    const-string v0, "musicModeBgIv"

    goto :goto_0

    :cond_6
    const-string v0, "dtsSwitchIv"

    goto :goto_0

    :cond_7
    const-string v0, "dtsLogoIv"

    goto :goto_0

    :cond_8
    const-string v0, "cinemaModeTv"

    goto :goto_0

    :cond_9
    const-string v0, "cinemaModeCoverIv"

    goto :goto_0

    :cond_a
    const-string v0, "cinemaModeBgIv"

    .line 236
    :goto_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgSceneModeBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 153
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FrgSceneModeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/FrgSceneModeBinding;
    .locals 2

    const v0, 0x7f0c0040

    const/4 v1, 0x0

    .line 159
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 161
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FrgSceneModeBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
