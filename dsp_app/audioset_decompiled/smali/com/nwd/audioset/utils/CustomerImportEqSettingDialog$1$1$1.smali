.class Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;
.super Ljava/lang/Object;
.source "CustomerImportEqSettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

.field final synthetic val$finalErrorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    iput-object p2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->val$finalErrorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->val$finalErrorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    iget-object v0, v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v0, v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    iget-object v2, v2, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->val$names:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    iget-object v2, v2, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v2, v2, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v2}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e0123

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nwd/audioset/utils/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    iget-object v0, v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v0, v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->this$2:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;

    iget-object v1, v1, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v1, v1, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$100(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e00eb

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;->val$finalErrorMsg:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcom/nwd/audioset/utils/ToastUtils;->showToastLong(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
