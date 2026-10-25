.class Lcom/nwd/setting/service/autowakeup/AutoWakeupManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->onGetAutoWakeupState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;


# direct methods
.method constructor <init>(Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager$1;->this$0:Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager$1;->this$0:Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;

    invoke-static {v0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->access$000(Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager$1;->this$0:Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;

    invoke-static {v0}, Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;->access$000(Lcom/nwd/setting/service/autowakeup/AutoWakeupManager;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nwd.ACTION_AUTO_WAKEUP_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
