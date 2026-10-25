.class Lcom/android/utils/eventbus/EventBus$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/eventbus/EventBus;
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

    iput-object p1, p0, Lcom/android/utils/eventbus/EventBus$2;->this$0:Lcom/android/utils/eventbus/EventBus;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/utils/eventbus/BusEvent;

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus$2;->this$0:Lcom/android/utils/eventbus/EventBus;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/utils/eventbus/EventBus;->access$200(Lcom/android/utils/eventbus/EventBus;Lcom/android/utils/eventbus/BusEvent;Z)V

    :goto_0
    return-void
.end method
