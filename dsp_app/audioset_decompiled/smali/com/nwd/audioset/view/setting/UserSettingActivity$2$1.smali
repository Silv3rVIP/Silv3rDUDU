.class Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;
.super Ljava/lang/Object;
.source "UserSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

.field final synthetic val$finalErrorMsg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/setting/UserSettingActivity$2;Ljava/lang/String;)V
    .locals 0

    .line 503
    iput-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iput-object p2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->val$finalErrorMsg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 506
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->val$finalErrorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iget-object v0, v0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iget-object v3, v3, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->val$names:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iget-object v3, v3, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

    const v4, 0x7f0e0122

    invoke-virtual {v3, v4}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iget-object v3, v3, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->val$eq_Path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/ToastUtils;->showToastLong(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iget-object v0, v0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->this$1:Lcom/nwd/audioset/view/setting/UserSettingActivity$2;

    iget-object v2, v2, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

    const v3, 0x7f0e00e5

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;->val$finalErrorMsg:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/ToastUtils;->showToastLong(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
