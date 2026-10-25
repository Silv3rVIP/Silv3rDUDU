.class public final Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;
.super Ljava/lang/Object;
.source "CustomerEqSettingDialogLayoutBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final lvCustomerEqFilename:Landroid/widget/ListView;

.field public final no:Landroid/widget/Button;

.field private final rootView:Landroid/widget/LinearLayout;

.field public final title:Landroid/widget/TextView;

.field public final tvEqFileNull:Landroid/widget/TextView;

.field public final tvUdisk:Landroid/widget/TextView;

.field public final yes:Landroid/widget/Button;


# direct methods
.method private constructor <init>(Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    .line 45
    iput-object p2, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->lvCustomerEqFilename:Landroid/widget/ListView;

    .line 46
    iput-object p3, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->no:Landroid/widget/Button;

    .line 47
    iput-object p4, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->title:Landroid/widget/TextView;

    .line 48
    iput-object p5, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->tvEqFileNull:Landroid/widget/TextView;

    .line 49
    iput-object p6, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->tvUdisk:Landroid/widget/TextView;

    .line 50
    iput-object p7, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->yes:Landroid/widget/Button;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;
    .locals 9

    const v0, 0x7f0901ea

    .line 80
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/ListView;

    if-eqz v3, :cond_5

    const v0, 0x7f09021a

    .line 85
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/Button;

    if-eqz v4, :cond_4

    const v0, 0x7f09030a

    .line 90
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_3

    const v0, 0x7f090325

    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    if-eqz v6, :cond_2

    const v0, 0x7f090339

    .line 100
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_1

    const v0, 0x7f090358

    .line 105
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/Button;

    if-eqz v8, :cond_0

    .line 110
    new-instance v0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;

    move-object v2, p0

    check-cast v2, Landroid/widget/LinearLayout;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;-><init>(Landroid/widget/LinearLayout;Landroid/widget/ListView;Landroid/widget/Button;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/Button;)V

    return-object v0

    :cond_0
    const-string p0, "yes"

    goto :goto_0

    :cond_1
    const-string p0, "tvUdisk"

    goto :goto_0

    :cond_2
    const-string p0, "tvEqFileNull"

    goto :goto_0

    :cond_3
    const-string p0, "title"

    goto :goto_0

    :cond_4
    const-string p0, "no"

    goto :goto_0

    :cond_5
    const-string p0, "lvCustomerEqFilename"

    .line 113
    :goto_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Missing required view with ID: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-static {p0, v0, v1}, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;

    move-result-object p0

    return-object p0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;
    .locals 2

    const v0, 0x7f0c0020

    const/4 v1, 0x0

    .line 67
    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    if-eqz p2, :cond_0

    .line 69
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 71
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->bind(Landroid/view/View;)Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/LinearLayout;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/nwd/audioset/databinding/CustomerEqSettingDialogLayoutBinding;->rootView:Landroid/widget/LinearLayout;

    return-object v0
.end method
