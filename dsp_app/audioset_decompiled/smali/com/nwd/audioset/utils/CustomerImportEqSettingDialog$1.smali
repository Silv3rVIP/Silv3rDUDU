.class Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;
.super Ljava/lang/Object;
.source "CustomerImportEqSettingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 103
    iget-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$000(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Ljava/util/List;

    move-result-object p1

    const v0, 0x7f0e012a

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 108
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$000(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/nwd/audioset/bean/ImportBean;

    .line 109
    iget-boolean v3, v2, Lcom/nwd/audioset/bean/ImportBean;->isCheck:Z

    if-eqz v3, :cond_1

    .line 110
    iget-object v2, v2, Lcom/nwd/audioset/bean/ImportBean;->fileName:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iget-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_3
    new-instance v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    invoke-direct {v0, p0, p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;-><init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;Ljava/util/List;)V

    invoke-static {v0}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnAsyncThread(Ljava/lang/Runnable;)V

    .line 156
    iget-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-virtual {p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->dismiss()V

    return-void
.end method
