.class public Lcom/nwd/audioset/view/setting/UserSettingActivity;
.super Lcom/nwd/audioset/mvpbase/BaseActivity;
.source "UserSettingActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseActivity<",
        "Lcom/nwd/audioset/view/setting/UserSettingActivityP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/view/View$OnFocusChangeListener;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "UserSettingActivity"


# instance fields
.field private binding:Lcom/nwd/audioset/databinding/ActivitySettingBinding;

.field private btn_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_import:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_use:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private importEqAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

.field private layout_btn:Landroid/widget/LinearLayout;

.field private layout_import_export:Landroid/widget/LinearLayout;

.field private layout_save_eq:Landroid/widget/LinearLayout;

.field private layout_version:Landroid/widget/LinearLayout;

.field private listView_eq:Landroid/widget/ListView;

.field private mAllEqFileName:[Ljava/lang/String;

.field private mCancel:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private mDspManager:Lcom/nwd/dsp/uitls/DspManager;

.field private mEnter:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field public mEqFileExist:Z

.field private mEtCarType:Landroid/widget/EditText;

.field private mEtDate:Landroid/widget/EditText;

.field private mEtDspType:Landroid/widget/EditText;

.field private mImportList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/audioset/bean/ImportBean;",
            ">;"
        }
    .end annotation
.end field

.field private mInputFileNamePrompt:Ljava/lang/String;

.field private mTimeFormat:Ljava/text/SimpleDateFormat;

.field private mTvAppVersion:Landroid/widget/TextView;

.field private mTvCarType:Landroid/widget/TextView;

.field private mTvDspSettingDate:Landroid/widget/TextView;

.field private mTvDspType:Landroid/widget/TextView;

.field private mTvFileNameRepeat:Landroid/widget/TextView;

.field private tv_appver:Landroid/widget/TextView;

.field private tv_emmcid:Landroid/widget/TextView;

.field private tv_platformver:Landroid/widget/TextView;

.field private tv_version:Landroid/widget/TextView;

.field private uDiskPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEqFileExist:Z

    const-string v0, ""

    .line 74
    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mInputFileNamePrompt:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 54
    sget-object v0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/setting/UserSettingActivity;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateEqList()V

    return-void
.end method

.method private exportEqFile()V
    .locals 5

    .line 454
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    const v1, 0x7f0e012a

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 458
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/bean/ImportBean;

    .line 460
    iget-boolean v4, v3, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    if-eqz v4, :cond_1

    .line 461
    iget-object v3, v3, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 464
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 465
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 470
    :cond_3
    invoke-static {p0}, Lcom/nwd/audioset/utils/Utils;->uDiskName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->uDiskPaths:Ljava/util/List;

    if-eqz v1, :cond_7

    .line 472
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_2

    .line 477
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->uDiskPaths:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/audioset/utils/Utils;->EQ_Setup:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 480
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    .line 481
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 483
    :cond_6
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    .line 485
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 488
    :goto_1
    new-instance v2, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;-><init>(Lcom/nwd/audioset/view/setting/UserSettingActivity;Ljava/util/List;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnAsyncThread(Ljava/lang/Runnable;)V

    return-void

    :cond_7
    :goto_2
    const v0, 0x7f0e0129

    .line 473
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getDspAudioFileName()Ljava/lang/String;
    .locals 3

    .line 318
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 319
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtDspType:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "_"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 321
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 323
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtDate:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hideSoftInput()V
    .locals 3

    .line 395
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "input_method"

    .line 397
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 398
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 401
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private importEqFile()V
    .locals 5

    .line 410
    invoke-static {p0}, Lcom/nwd/audioset/utils/Utils;->uDiskName(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->uDiskPaths:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 412
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->uDiskPaths:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/audioset/utils/Utils;->EQ_Setup:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 421
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 422
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    if-nez v3, :cond_3

    .line 428
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0e0128

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 431
    :cond_3
    new-instance v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-direct {v0, p0, v2}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 432
    new-instance v2, Lcom/nwd/audioset/view/setting/UserSettingActivity$1;

    invoke-direct {v2, p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity$1;-><init>(Lcom/nwd/audioset/view/setting/UserSettingActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->setYesOnclickListener(Ljava/lang/String;Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;)V

    .line 446
    invoke-virtual {v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->show()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const v0, 0x7f0e0129

    .line 413
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private saveEq()V
    .locals 9

    .line 285
    sget-object v0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "saveEq"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e004e

    .line 288
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    .line 292
    :cond_0
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getDspAudioFileName()Ljava/lang/String;

    move-result-object v0

    .line 293
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    invoke-virtual {v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->isCustomizeEQExists(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEqFileExist:Z

    .line 294
    sget-object v2, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fileName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", mInputFileNamePrompt"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mInputFileNamePrompt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const v2, 0x7f0e00a9

    .line 295
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 296
    sget-object v3, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    new-array v5, v1, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTvFileNameRepeat="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvFileNameRepeat:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", mEqFileExist="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEqFileExist:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", fileName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", initFileName="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f0e001e

    .line 298
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->showHideRepeatAlert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 300
    :cond_1
    iget-boolean v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEqFileExist:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvFileNameRepeat:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    if-ne v2, v3, :cond_2

    const v0, 0x7f0e001d

    .line 301
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->showHideRepeatAlert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 303
    :cond_2
    iput-boolean v4, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEqFileExist:Z

    .line 304
    sget-object v2, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mInputFileNamePrompt="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mInputFileNamePrompt:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mInputFileNamePrompt:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 306
    sget-object v2, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveCustomizeEqDataFile="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    invoke-virtual {v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->saveCustomizeEqDataFile(Ljava/lang/String;)Z

    .line 308
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0e0112

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 311
    :cond_3
    sget-object v0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "saveCustomizeEqDataFile failed"

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private setButtonBG()V
    .locals 4

    .line 340
    invoke-static {p0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 341
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->setting_d:Ljava/lang/String;

    const v2, 0x7f0d00ac

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 342
    iget-object v2, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->setting_n:Ljava/lang/String;

    const v3, 0x7f0d00ad

    invoke-virtual {v0, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 343
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 344
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 345
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setButtonSaveBG()V
    .locals 4

    .line 350
    invoke-static {p0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 351
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_d:Ljava/lang/String;

    const v2, 0x7f0d0053

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 352
    iget-object v2, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_n:Ljava/lang/String;

    const v3, 0x7f0d0056

    invoke-virtual {v0, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 353
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEnter:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mCancel:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 355
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_use:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 356
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 357
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setVersion()V
    .locals 6

    const-string v0, "ro.product.nwd.platform"

    const-string v1, "T2"

    .line 241
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ro.product.nwd.version"

    const-string v2, "1.01"

    .line 242
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 243
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    const-string v4, "yyyyMMdd.HH:mm:ss"

    invoke-direct {v2, v4, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v3, Ljava/util/Date;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.build.date"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.nwd.build.mode"

    .line 244
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug"

    .line 245
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "_D"

    goto :goto_0

    :cond_0
    const-string v3, "_R"

    .line 249
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_version:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0022

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nwd/audioset/utils/Utils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_emmcid:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e001f

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/nwd/audioset/utils/Utils;->getEmmcId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_appver:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e0105

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_platformver:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0e00b1

    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private showHideRepeatAlert(ZLjava/lang/String;)V
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvFileNameRepeat:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 329
    :cond_0
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_1

    .line 331
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvFileNameRepeat:Landroid/widget/TextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 333
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 334
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvFileNameRepeat:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateDspUi()V
    .locals 4

    .line 556
    :try_start_0
    invoke-static {p0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 557
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->main_fragment_bg:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f090260

    .line 558
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 560
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->yinchang_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v3, 0x7f0901c8

    .line 561
    invoke-virtual {p0, v3}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v1, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 563
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->set_list_bg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const v1, 0x7f0901cf

    .line 564
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const v1, 0x7f0901af

    .line 565
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v0, v0}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 566
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez v0, :cond_0

    .line 567
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->binding:Lcom/nwd/audioset/databinding/ActivitySettingBinding;

    iget-object v0, v0, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->tvUserSetting:Landroid/widget/TextView;

    const v1, 0x7f06007b

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f090336

    .line 568
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f090321

    .line 569
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f09031e

    .line 570
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f090320

    .line 571
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f09033c

    .line 572
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f090323

    .line 573
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 576
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateEqList()V
    .locals 6

    .line 259
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    .line 262
    :cond_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getCustomizeConfigList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mAllEqFileName:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 263
    array-length v0, v0

    if-lez v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mAllEqFileName:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 267
    new-instance v5, Lcom/nwd/audioset/bean/ImportBean;

    invoke-direct {v5}, Lcom/nwd/audioset/bean/ImportBean;-><init>()V

    .line 268
    iput-object v4, v5, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    .line 269
    iget-object v4, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    if-nez v0, :cond_2

    .line 275
    new-instance v0, Lcom/nwd/audioset/adapter/ImportEqAdapter;

    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/nwd/audioset/adapter/ImportEqAdapter;-><init>(Landroid/content/Context;ZLjava/util/List;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    .line 276
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->listView_eq:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 278
    :cond_2
    sget-object v0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "mImportList.setEqFileName"

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 279
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->setEqFileName(Ljava/util/List;)V

    :goto_1
    return-void
.end method

.method private updateLeftBtn(I)V
    .locals 4

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_0

    goto :goto_0

    .line 381
    :cond_0
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 382
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 383
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 384
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_save_eq:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_import_export:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 386
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_version:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 373
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 374
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 375
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 376
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_save_eq:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 377
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_import_export:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 378
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_version:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 364
    :cond_2
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 365
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 366
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v2}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 367
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_save_eq:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_import_export:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 369
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_version:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateUiWidth()V
    .locals 3

    .line 583
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 584
    invoke-static {p0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2d0

    if-lt v0, v1, :cond_0

    .line 585
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07033a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    const v2, 0x7f090118

    .line 586
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v2, 0x7f090116

    .line 587
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v2, 0x7f090117

    .line 588
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 590
    :cond_0
    invoke-static {p0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_1

    .line 591
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070332

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const v1, 0x7f0900a2

    .line 592
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0900a0

    .line 593
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const v1, 0x7f0900a4

    .line 594
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method private useEqFile()V
    .locals 5

    .line 520
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    const v1, 0x7f0e012a

    if-nez v0, :cond_0

    .line 521
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 525
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-virtual {v2}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->getSelPosition()I

    move-result v2

    if-ltz v2, :cond_1

    .line 526
    iget-object v3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 527
    iget-object v3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/bean/ImportBean;

    iget-boolean v3, v3, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    if-eqz v3, :cond_1

    .line 528
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/bean/ImportBean;

    iget-object v0, v0, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    .line 531
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 533
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mImportList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nwd/audioset/bean/ImportBean;

    .line 534
    iget-boolean v4, v3, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    if-eqz v4, :cond_2

    .line 536
    iget-object v0, v3, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    .line 542
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 543
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 546
    :cond_4
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    invoke-virtual {v1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    .line 547
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/nwd/dsp/uitls/DspManager;->setUsed_customize(Z)V

    .line 548
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqAdapter:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    invoke-virtual {v1, v0}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->setCurrentFileName(Ljava/lang/String;)V

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 95
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/ActivitySettingBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->binding:Lcom/nwd/audioset/databinding/ActivitySettingBinding;

    .line 96
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/ActivitySettingBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getmPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getmPrenseter()Lcom/nwd/audioset/view/setting/UserSettingActivityP;

    move-result-object v0

    return-object v0
.end method

.method public getmPrenseter()Lcom/nwd/audioset/view/setting/UserSettingActivityP;
    .locals 1

    .line 194
    new-instance v0, Lcom/nwd/audioset/view/setting/UserSettingActivityP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/setting/UserSettingActivityP;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public initData()V
    .locals 1

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateLeftBtn(I)V

    .line 177
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->setVersion()V

    return-void
.end method

.method public initView()V
    .locals 7

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mInputFileNamePrompt:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTimeFormat:Ljava/text/SimpleDateFormat;

    .line 119
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const v1, 0x7f090116

    .line 120
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    const v1, 0x7f090118

    .line 121
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtDspType:Landroid/widget/EditText;

    const v1, 0x7f090117

    .line 122
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtDate:Landroid/widget/EditText;

    const v1, 0x7f090358

    .line 123
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEnter:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f09021a

    .line 124
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mCancel:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f09031e

    .line 125
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvCarType:Landroid/widget/TextView;

    const v1, 0x7f09031a

    .line 126
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvFileNameRepeat:Landroid/widget/TextView;

    const v1, 0x7f090321

    .line 127
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvDspType:Landroid/widget/TextView;

    const v1, 0x7f090320

    .line 128
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvDspSettingDate:Landroid/widget/TextView;

    const v1, 0x7f0901aa

    .line 129
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_btn:Landroid/widget/LinearLayout;

    const v1, 0x7f0900a2

    .line 130
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f0900a0

    .line 131
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f0900a4

    .line 132
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f0901ad

    .line 133
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_save_eq:Landroid/widget/LinearLayout;

    const v1, 0x7f0901ab

    .line 134
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_import_export:Landroid/widget/LinearLayout;

    const v1, 0x7f0901af

    .line 135
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_version:Landroid/widget/LinearLayout;

    const v1, 0x7f0901b8

    .line 136
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->listView_eq:Landroid/widget/ListView;

    const v1, 0x7f0900a3

    .line 137
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_use:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f09009f

    .line 138
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f09009e

    .line 139
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v1, 0x7f09033c

    .line 140
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_version:Landroid/widget/TextView;

    const v1, 0x7f090323

    .line 141
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_emmcid:Landroid/widget/TextView;

    const v1, 0x7f09031b

    .line 142
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_appver:Landroid/widget/TextView;

    const v1, 0x7f090331

    .line 143
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->tv_platformver:Landroid/widget/TextView;

    .line 145
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const-string v2, "zh"

    .line 146
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvCarType:Landroid/widget/TextView;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 148
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvDspType:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 149
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTvDspSettingDate:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMinWidth(I)V

    goto :goto_0

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_btn:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, 0x14

    .line 152
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 153
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->layout_btn:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    .line 157
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->getDspAudioType()Ljava/lang/String;

    move-result-object v1

    .line 158
    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v3, "N70"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "7738"

    .line 161
    :cond_1
    sget-object v2, Lcom/nwd/audioset/view/setting/UserSettingActivity;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u97f3\u6548\u7c7b\u578b dspType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtDspType:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-object v1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtDate:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mTimeFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 165
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->setButtonBG()V

    .line 166
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->setButtonSaveBG()V

    .line 167
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateDspUi()V

    .line 168
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateUiWidth()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090358

    if-ne p1, v0, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->saveEq()V

    goto :goto_0

    :cond_0
    const v0, 0x7f09021a

    if-ne p1, v0, :cond_1

    .line 208
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0900a2

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    .line 210
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateLeftBtn(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0900a0

    if-ne p1, v0, :cond_3

    .line 212
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->hideSoftInput()V

    .line 213
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateEqList()V

    const/4 p1, 0x1

    .line 214
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateLeftBtn(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0900a4

    if-ne p1, v0, :cond_4

    .line 216
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->hideSoftInput()V

    const/4 p1, 0x2

    .line 217
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->updateLeftBtn(I)V

    goto :goto_0

    :cond_4
    const v0, 0x7f0900a3

    if-ne p1, v0, :cond_5

    .line 219
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->useEqFile()V

    goto :goto_0

    :cond_5
    const v0, 0x7f09009f

    if-ne p1, v0, :cond_6

    .line 221
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqFile()V

    goto :goto_0

    :cond_6
    const v0, 0x7f09009e

    if-ne p1, v0, :cond_7

    .line 223
    invoke-direct {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->exportEqFile()V

    :cond_7
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 85
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 86
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 87
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x20

    if-lt p1, v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->finish()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 229
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 230
    iput-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mPrenseter:Lcom/nwd/audioset/mvpbase/BasePresenter;

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 235
    iget-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEtCarType:Landroid/widget/EditText;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 110
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onPause()V

    .line 111
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/nwd/audioset/application/DspApplication;->isInSettingActivity:Z

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/nwd/audioset/mvpbase/BaseActivity;->onResume()V

    .line 105
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/nwd/audioset/application/DspApplication;->isInSettingActivity:Z

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mEnter:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->mCancel:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_save_eq:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_version:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_use:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_import:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity;->btn_export:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
