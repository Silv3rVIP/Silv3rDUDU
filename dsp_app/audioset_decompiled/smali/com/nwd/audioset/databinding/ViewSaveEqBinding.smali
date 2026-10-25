.class public final Lcom/nwd/audioset/databinding/ViewSaveEqBinding;
.super Ljava/lang/Object;
.source "ViewSaveEqBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final etCarType:Landroid/widget/EditText;

.field public final etDate:Landroid/widget/EditText;

.field public final etDspType:Landroid/widget/EditText;

.field public final layoutBtn:Landroid/widget/LinearLayout;

.field public final layoutSaveEq:Landroid/widget/LinearLayout;

.field public final no:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private final rootView:Landroid/view/View;

.field public final tvAlertTxxtReplace:Landroid/widget/TextView;

.field public final tvCarType:Landroid/widget/TextView;

.field public final tvDspSettingDate:Landroid/widget/TextView;

.field public final tvDspType:Landroid/widget/TextView;

.field public final tvSaveEqTitle:Landroid/widget/TextView;

.field public final yes:Lcom/nwd/audioset/view/nwdview/StrokeTextView;


# direct methods
.method private constructor <init>(Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->rootView:Landroid/view/View;

    .line 65
    iput-object p2, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->etCarType:Landroid/widget/EditText;

    .line 66
    iput-object p3, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->etDate:Landroid/widget/EditText;

    .line 67
    iput-object p4, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->etDspType:Landroid/widget/EditText;

    .line 68
    iput-object p5, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->layoutBtn:Landroid/widget/LinearLayout;

    .line 69
    iput-object p6, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->layoutSaveEq:Landroid/widget/LinearLayout;

    .line 70
    iput-object p7, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->no:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 71
    iput-object p8, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->tvAlertTxxtReplace:Landroid/widget/TextView;

    .line 72
    iput-object p9, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->tvCarType:Landroid/widget/TextView;

    .line 73
    iput-object p10, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->tvDspSettingDate:Landroid/widget/TextView;

    .line 74
    iput-object p11, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->tvDspType:Landroid/widget/TextView;

    .line 75
    iput-object p12, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->tvSaveEqTitle:Landroid/widget/TextView;

    .line 76
    iput-object p13, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->yes:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewSaveEqBinding;
    .locals 15

    const v0, 0x7f090116

    .line 101
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/EditText;

    if-eqz v3, :cond_b

    const v0, 0x7f090117

    .line 106
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/EditText;

    if-eqz v4, :cond_a

    const v0, 0x7f090118

    .line 111
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/EditText;

    if-eqz v5, :cond_9

    const v0, 0x7f0901aa

    .line 116
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_8

    const v0, 0x7f0901ad

    .line 121
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_7

    const v0, 0x7f09021a

    .line 126
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v8, :cond_6

    const v0, 0x7f09031a

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/TextView;

    if-eqz v9, :cond_5

    const v0, 0x7f09031e

    .line 136
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_4

    const v0, 0x7f090320

    .line 141
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_3

    const v0, 0x7f090321

    .line 146
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/widget/TextView;

    if-eqz v12, :cond_2

    const v0, 0x7f090336

    .line 151
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Landroid/widget/TextView;

    if-eqz v13, :cond_1

    const v0, 0x7f090358

    .line 156
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v14, :cond_0

    .line 161
    new-instance v0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v14}, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;-><init>(Landroid/view/View;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;)V

    return-object v0

    :cond_0
    const-string p0, "yes"

    goto :goto_0

    :cond_1
    const-string p0, "tvSaveEqTitle"

    goto :goto_0

    :cond_2
    const-string p0, "tvDspType"

    goto :goto_0

    :cond_3
    const-string p0, "tvDspSettingDate"

    goto :goto_0

    :cond_4
    const-string p0, "tvCarType"

    goto :goto_0

    :cond_5
    const-string p0, "tvAlertTxxtReplace"

    goto :goto_0

    :cond_6
    const-string p0, "no"

    goto :goto_0

    :cond_7
    const-string p0, "layoutSaveEq"

    goto :goto_0

    :cond_8
    const-string p0, "layoutBtn"

    goto :goto_0

    :cond_9
    const-string p0, "etDspType"

    goto :goto_0

    :cond_a
    const-string p0, "etDate"

    goto :goto_0

    :cond_b
    const-string p0, "etCarType"

    .line 164
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/nwd/audioset/databinding/ViewSaveEqBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0056

    .line 91
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    invoke-static {p1}, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewSaveEqBinding;

    move-result-object p0

    return-object p0

    .line 89
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/nwd/audioset/databinding/ViewSaveEqBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
