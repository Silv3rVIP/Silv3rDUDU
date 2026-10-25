.class Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;
.super Ljava/lang/Object;
.source "CustomerImportEqSettingDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

.field final synthetic val$names:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;Ljava/util/List;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iput-object p2, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->val$names:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 122
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->val$names:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 129
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v5, v5, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v5}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$200(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-static {v3, v4}, Lcom/nwd/audioset/utils/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    move-object v0, v2

    .line 136
    :cond_2
    invoke-static {v3, v4}, Lcom/nwd/audioset/utils/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    goto :goto_0

    .line 139
    :cond_3
    new-instance v1, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;

    invoke-direct {v1, p0, v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1$1;-><init>(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;Ljava/lang/String;)V

    const-wide/16 v2, 0x96

    invoke-static {v1, v2, v3}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v0, v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$300(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 152
    iget-object v0, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1$1;->this$1:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;

    iget-object v0, v0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$1;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-static {v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->access$300(Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;)Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;->onYesClick()V

    :cond_4
    return-void
.end method
