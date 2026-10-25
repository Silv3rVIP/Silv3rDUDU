.class public final Lcom/nwd/audioset/databinding/ViewImportExportBinding;
.super Ljava/lang/Object;
.source "ViewImportExportBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final btnExport:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final btnImport:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final btnUse:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public final layoutBtn:Landroid/widget/LinearLayout;

.field public final layoutImportExport:Landroid/widget/LinearLayout;

.field public final listViewEq:Landroid/widget/ListView;

.field public final llSetListBg:Landroid/widget/RelativeLayout;

.field private final rootView:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->rootView:Landroid/view/View;

    .line 48
    iput-object p2, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->btnExport:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 49
    iput-object p3, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->btnImport:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 50
    iput-object p4, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->btnUse:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 51
    iput-object p5, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->layoutBtn:Landroid/widget/LinearLayout;

    .line 52
    iput-object p6, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->layoutImportExport:Landroid/widget/LinearLayout;

    .line 53
    iput-object p7, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->listViewEq:Landroid/widget/ListView;

    .line 54
    iput-object p8, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->llSetListBg:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewImportExportBinding;
    .locals 10

    const v0, 0x7f09009e

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v3, :cond_6

    const v0, 0x7f09009f

    .line 84
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v4, :cond_5

    const v0, 0x7f0900a3

    .line 89
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-eqz v5, :cond_4

    const v0, 0x7f0901aa

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    if-eqz v6, :cond_3

    const v0, 0x7f0901ab

    .line 99
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v7, :cond_2

    const v0, 0x7f0901b8

    .line 104
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/ListView;

    if-eqz v8, :cond_1

    const v0, 0x7f0901cf

    .line 109
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/RelativeLayout;

    if-eqz v9, :cond_0

    .line 114
    new-instance v0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/nwd/audioset/databinding/ViewImportExportBinding;-><init>(Landroid/view/View;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Lcom/nwd/audioset/view/nwdview/StrokeTextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/RelativeLayout;)V

    return-object v0

    :cond_0
    const-string p0, "llSetListBg"

    goto :goto_0

    :cond_1
    const-string p0, "listViewEq"

    goto :goto_0

    :cond_2
    const-string p0, "layoutImportExport"

    goto :goto_0

    :cond_3
    const-string p0, "layoutBtn"

    goto :goto_0

    :cond_4
    const-string p0, "btnUse"

    goto :goto_0

    :cond_5
    const-string p0, "btnImport"

    goto :goto_0

    :cond_6
    const-string p0, "btnExport"

    .line 117
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lcom/nwd/audioset/databinding/ViewImportExportBinding;
    .locals 1

    if-eqz p1, :cond_0

    const v0, 0x7f0c0055

    .line 69
    invoke-virtual {p0, v0, p1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    invoke-static {p1}, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/ViewImportExportBinding;

    move-result-object p0

    return-object p0

    .line 67
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "parent"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getRoot()Landroid/view/View;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/nwd/audioset/databinding/ViewImportExportBinding;->rootView:Landroid/view/View;

    return-object v0
.end method
