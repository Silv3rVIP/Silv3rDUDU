.class public final Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;
.super Ljava/lang/Object;
.source "FragmentBassRound3dBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final ivRound3dChe:Landroid/widget/ImageView;

.field public final ll3d:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/view/View;

.field public final round3dSwithBtn:Landroid/widget/Button;

.field public final round3dWaveview:Lcom/nwd/audioset/view/nwdview/WaveView;

.field public final roundBassLaba:Landroid/widget/ImageView;

.field public final roundBassLabaLl:Landroid/widget/LinearLayout;

.field public final roundBassLabaSubl:Landroid/widget/ImageView;

.field public final roundCenterLaba:Landroid/widget/ImageView;

.field public final roundFrontLeftLaba:Landroid/widget/ImageView;

.field public final roundFrontRightLaba:Landroid/widget/ImageView;

.field public final roundSufLeftLaba:Landroid/widget/ImageView;

.field public final roundSufRightLaba:Landroid/widget/ImageView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/nwd/audioset/view/nwdview/WaveView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->rootView:Landroid/view/View;

    .line 67
    iput-object p2, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->ivRound3dChe:Landroid/widget/ImageView;

    .line 68
    iput-object p3, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->ll3d:Landroid/widget/RelativeLayout;

    .line 69
    iput-object p4, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->round3dSwithBtn:Landroid/widget/Button;

    .line 70
    iput-object p5, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->round3dWaveview:Lcom/nwd/audioset/view/nwdview/WaveView;

    .line 71
    iput-object p6, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundBassLaba:Landroid/widget/ImageView;

    .line 72
    iput-object p7, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundBassLabaLl:Landroid/widget/LinearLayout;

    .line 73
    iput-object p8, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundBassLabaSubl:Landroid/widget/ImageView;

    .line 74
    iput-object p9, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundCenterLaba:Landroid/widget/ImageView;

    .line 75
    iput-object p10, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundFrontLeftLaba:Landroid/widget/ImageView;

    .line 76
    iput-object p11, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundFrontRightLaba:Landroid/widget/ImageView;

    .line 77
    iput-object p12, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundSufLeftLaba:Landroid/widget/ImageView;

    .line 78
    iput-object p13, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->roundSufRightLaba:Landroid/widget/ImageView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;
    .locals 15

    const v0, 0x7f090195

    .line 103
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v3, :cond_b

    const v0, 0x7f0901ba

    .line 108
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_a

    const v0, 0x7f090262

    .line 113
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/Button;

    if-eqz v5, :cond_9

    const v0, 0x7f090263

    .line 118
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/nwd/audioset/view/nwdview/WaveView;

    if-eqz v6, :cond_8

    const v0, 0x7f090264

    .line 123
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    const v0, 0x7f090265

    .line 128
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    if-eqz v8, :cond_6

    const v0, 0x7f090266

    .line 133
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v9, :cond_5

    const v0, 0x7f090267

    .line 138
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/ImageView;

    if-eqz v10, :cond_4

    const v0, 0x7f090268

    .line 143
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/ImageView;

    if-eqz v11, :cond_3

    const v0, 0x7f090269

    .line 148
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/ImageView;

    if-eqz v12, :cond_2

    const v0, 0x7f09026a

    .line 153
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/ImageView;

    if-eqz v13, :cond_1

    const v0, 0x7f09026b

    .line 158
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/ImageView;

    if-eqz v14, :cond_0

    .line 163
    new-instance v0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v14}, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;-><init>(Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/Button;Lcom/nwd/audioset/view/nwdview/WaveView;Landroid/widget/ImageView;Landroid/widget/LinearLayout;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    return-object v0

    :cond_0
    const-string p0, "roundSufRightLaba"

    goto :goto_0

    :cond_1
    const-string p0, "roundSufLeftLaba"

    goto :goto_0

    :cond_2
    const-string p0, "roundFrontRightLaba"

    goto :goto_0

    :cond_3
    const-string p0, "roundFrontLeftLaba"

    goto :goto_0

    :cond_4
    const-string p0, "roundCenterLaba"

    goto :goto_0

    :cond_5
    const-string p0, "roundBassLabaSubl"

    goto :goto_0

    :cond_6
    const-string p0, "roundBassLabaLl"

    goto :goto_0

    :cond_7
    const-string p0, "roundBassLaba"

    goto :goto_0

    :cond_8
    const-string p0, "round3dWaveview"

    goto :goto_0

    :cond_9
    const-string p0, "round3dSwithBtn"

    goto :goto_0

    :cond_a
    const-string p0, "ll3d"

    goto :goto_0

    :cond_b
    const-string p0, "ivRound3dChe"

    .line 167
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0035

    .line 93
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 94
    invoke-static {p1}, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;

    move-result-object p0

    return-object p0

    .line 91
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/nwd/audioset/databinding/FragmentBassRound3dBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
