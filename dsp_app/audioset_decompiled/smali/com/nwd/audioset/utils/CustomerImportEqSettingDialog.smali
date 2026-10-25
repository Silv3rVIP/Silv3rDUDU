.class public Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;
.super Landroid/app/Dialog;
.source "CustomerImportEqSettingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onNoOnclickListener;,
        Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field static final TAG:Ljava/lang/String; = "CustomerImportEqSettingDialog"


# instance fields
.field private eqPath:Ljava/lang/String;

.field private mAllEqFileName:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomerEqSettingAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

.field private mImportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/audioset/bean/ImportBean;",
            ">;"
        }
    .end annotation
.end field

.field private mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

.field private mLvFileName:Landroid/widget/ListView;

.field private mTvEqFileNull:Landroid/widget/TextView;

.field private no:Landroid/widget/Button;

.field private noOnclickListener:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onNoOnclickListener;

.field private noStr:Ljava/lang/String;

.field private titleTv:Landroid/widget/TextView;

.field private tvUdisk:Landroid/widget/TextView;

.field private yes:Landroid/widget/Button;

.field private yesOnclickListener:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;

.field private yesStr:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 30
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "CustomerImportEqSettingDialog"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0f00c7

    .line 74
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 75
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->eqPath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Ljava/util/List;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mImportList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->eqPath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yesOnclickListener:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yesStr:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yes:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->noStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 198
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->no:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private initEvent()V
    .locals 5

    .line 100
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yes:Landroid/widget/Button;

    new-instance v1, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;-><init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->no:Landroid/widget/Button;

    new-instance v1, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$2;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$2;-><init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->eqPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nwd/dsp/uitls/DspManager;->getCustomizeConfigListByPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mAllEqFileName:[Ljava/lang/String;

    .line 171
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mImportList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mImportList:Ljava/util/List;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mAllEqFileName:[Ljava/lang/String;

    if-eqz v0, :cond_1

    array-length v0, v0

    if-lez v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mImportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mAllEqFileName:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 178
    new-instance v4, Lcom/nwd/audioset/bean/ImportBean;

    invoke-direct {v4}, Lcom/nwd/audioset/bean/ImportBean;-><init>()V

    .line 179
    iput-object v3, v4, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    .line 180
    iget-object v3, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mImportList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v0, Lcom/nwd/audioset/adapter/ImportEqAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mImportList:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/nwd/audioset/adapter/ImportEqAdapter;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mCustomerEqSettingAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    .line 185
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->eqPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->setEqPath(Ljava/lang/String;)V

    .line 186
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mLvFileName:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mCustomerEqSettingAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method private initView()V
    .locals 4

    const-string v0, "/"

    .line 207
    :try_start_0
    invoke-direct {p0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->setTextResource()V

    const v1, 0x7f09030a

    .line 208
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->titleTv:Landroid/widget/TextView;

    const v1, 0x7f090325

    .line 209
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mTvEqFileNull:Landroid/widget/TextView;

    const v1, 0x7f090339

    .line 210
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->tvUdisk:Landroid/widget/TextView;

    .line 211
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->titleTv:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    const-string v3, "file_import"

    invoke-virtual {v2, v3}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mTvEqFileNull:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    const-string v3, "eq_file_is_null"

    invoke-virtual {v2, v3}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f090358

    .line 214
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yes:Landroid/widget/Button;

    const v1, 0x7f09021a

    .line 215
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->no:Landroid/widget/Button;

    .line 216
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yes:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    const-string v3, "audio_enter"

    invoke-virtual {v2, v3}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 217
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->no:Landroid/widget/Button;

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    const-string v3, "audio_cancel"

    invoke-virtual {v2, v3}, Lcom/android/utils/utils/InternationalUtils;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0901ea

    .line 218
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mLvFileName:Landroid/widget/ListView;

    .line 221
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->eqPath:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->eqPath:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->tvUdisk:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 225
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setTextResource()V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/utils/utils/InternationalUtils;->getInstant(Landroid/content/Context;)Lcom/android/utils/utils/InternationalUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->mInternationalUtils:Lcom/android/utils/utils/InternationalUtils;

    .line 231
    invoke-virtual {v0}, Lcom/android/utils/utils/InternationalUtils;->loadResource()V

    return-void
.end method


# virtual methods
.method public getCurrentFileName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 81
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0020

    .line 82
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->setContentView(I)V

    .line 83
    invoke-virtual {p0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    const/4 p1, 0x1

    .line 85
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->setCanceledOnTouchOutside(Z)V

    .line 88
    invoke-direct {p0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->initView()V

    .line 92
    invoke-direct {p0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->initEvent()V

    return-void
.end method

.method public setNoOnclickListener(Ljava/lang/String;Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onNoOnclickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 55
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->noStr:Ljava/lang/String;

    .line 57
    :cond_0
    iput-object p2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->noOnclickListener:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onNoOnclickListener;

    return-void
.end method

.method public setYesOnclickListener(Ljava/lang/String;Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 68
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yesStr:Ljava/lang/String;

    .line 70
    :cond_0
    iput-object p2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->yesOnclickListener:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;

    return-void
.end method
