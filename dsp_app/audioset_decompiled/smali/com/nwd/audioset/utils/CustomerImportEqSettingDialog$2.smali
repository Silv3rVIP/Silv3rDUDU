.class Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$2;
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

    .line 160
    iput-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$2;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 163
    iget-object p1, p0, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$2;->this$0:Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;

    invoke-virtual {p1}, Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog;->dismiss()V

    return-void
.end method
