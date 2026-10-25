.class public final Lcom/nwd/audioset/databinding/ActivitySettingBinding;
.super Ljava/lang/Object;
.source "ActivitySettingBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnImportExport:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final btnSaveEq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final btnVersion:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final llGaoditongBg:Landroid/widget/LinearLayout;

.field public final rootLL:Landroid/widget/LinearLayout;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final tvUserSetting:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->btnImportExport:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 46
    iput-object p3, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->btnSaveEq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 47
    iput-object p4, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->btnVersion:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 48
    iput-object p5, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->llGaoditongBg:Landroid/widget/LinearLayout;

    .line 49
    iput-object p6, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->rootLL:Landroid/widget/LinearLayout;

    .line 50
    iput-object p7, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->tvUserSetting:Landroid/widget/TextView;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ActivitySettingBinding;
    .locals 9

    const v0, 0x7f0900a0

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v3, :cond_5

    const v0, 0x7f0900a2

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v4, :cond_4

    const v0, 0x7f0900a4

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v5, :cond_3

    const v0, 0x7f0901c8

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_2

    const v0, 0x7f090260

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_1

    const v0, 0x7f09033b

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 110
    new-instance v0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/nwd/audioset/databinding/ActivitySettingBinding;-><init>(Landroid/widget/LinearLayout;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v0

    :cond_0
    const-string p0, "tvUserSetting"

    goto :goto_0

    :cond_1
    const-string p0, "rootLL"

    goto :goto_0

    :cond_2
    const-string p0, "llGaoditongBg"

    goto :goto_0

    :cond_3
    const-string p0, "btnVersion"

    goto :goto_0

    :cond_4
    const-string p0, "btnSaveEq"

    goto :goto_0

    :cond_5
    const-string p0, "btnImportExport"

    .line 113
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/ActivitySettingBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/ActivitySettingBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/ActivitySettingBinding;
    .locals 2

    const v0, 0x7f0c001d

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ActivitySettingBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
