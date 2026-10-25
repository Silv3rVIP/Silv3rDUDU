.class Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity$1;->this$0:Lcom/blankj/utilcode/util/PermissionUtils$PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 440
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1000()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    .line 443
    :cond_0
    invoke-static {}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1000()Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    :goto_0
    const/4 v0, 0x0

    .line 445
    invoke-static {v0}, Lcom/blankj/utilcode/util/PermissionUtils;->access$1002(Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/utilcode/util/PermissionUtils$SimpleCallback;

    return-void
.end method
