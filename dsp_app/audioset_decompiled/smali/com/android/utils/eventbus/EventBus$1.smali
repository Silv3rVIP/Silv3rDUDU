.class Lcom/android/utils/eventbus/EventBus$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/eventbus/EventBus;->initBus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/eventbus/EventBus;


# direct methods
.method constructor <init>(Lcom/android/utils/eventbus/EventBus;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/eventbus/EventBus$1;->this$0:Lcom/android/utils/eventbus/EventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus$1;->this$0:Lcom/android/utils/eventbus/EventBus;

    invoke-static {v0}, Lcom/android/utils/eventbus/EventBus;->access$000(Lcom/android/utils/eventbus/EventBus;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus$1;->this$0:Lcom/android/utils/eventbus/EventBus;

    invoke-static {v0}, Lcom/android/utils/eventbus/EventBus;->access$100(Lcom/android/utils/eventbus/EventBus;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/eventbus/BusEvent;

    iget-object v1, p0, Lcom/android/utils/eventbus/EventBus$1;->this$0:Lcom/android/utils/eventbus/EventBus;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/utils/eventbus/EventBus;->access$200(Lcom/android/utils/eventbus/EventBus;Lcom/android/utils/eventbus/BusEvent;Z)V

    iget-object v1, p0, Lcom/android/utils/eventbus/EventBus$1;->this$0:Lcom/android/utils/eventbus/EventBus;

    invoke-static {v1}, Lcom/android/utils/eventbus/EventBus;->access$300(Lcom/android/utils/eventbus/EventBus;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
