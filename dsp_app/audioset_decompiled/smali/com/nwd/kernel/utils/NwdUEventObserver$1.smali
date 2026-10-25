.class Lcom/nwd/kernel/utils/NwdUEventObserver$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/kernel/utils/NwdUEventObserver;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;


# direct methods
.method constructor <init>(Lcom/nwd/kernel/utils/NwdUEventObserver;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-static {v1}, Lcom/nwd/kernel/utils/NwdUEventObserver;->access$000(Lcom/nwd/kernel/utils/NwdUEventObserver;)I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-static {v1}, Lcom/nwd/kernel/utils/NwdUEventObserver;->access$100(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-static {v2}, Lcom/nwd/kernel/utils/NwdUEventObserver;->access$200(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-static {v3}, Lcom/nwd/kernel/utils/NwdUEventObserver;->access$300(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-static {v4}, Lcom/nwd/kernel/utils/NwdUEventObserver;->access$400(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;->this$0:Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-static {v4}, Lcom/nwd/kernel/utils/NwdUEventObserver;->access$500(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nwd/kernel/utils/NwdUEventObserver$IUEventListener;

    if-eqz v4, :cond_0

    invoke-interface {v4, v1, v3, v0, v2}, Lcom/nwd/kernel/utils/NwdUEventObserver$IUEventListener;->notifyUEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
