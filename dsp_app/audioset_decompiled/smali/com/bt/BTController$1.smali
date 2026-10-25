.class Lcom/bt/BTController$1;
.super Lcom/bt/BTPIMCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/BTController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/BTController;


# direct methods
.method constructor <init>(Lcom/bt/BTController;)V
    .locals 0

    iput-object p1, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-direct {p0}, Lcom/bt/BTPIMCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetA2dpProgress(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bt/BTController$BtListener;

    invoke-interface {v1, p1, p2}, Lcom/bt/BTController$BtListener;->onGetA2dpProgress(II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGetCallLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bt/BTController$BtListener;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bt/BTController$BtListener;->onGetCallLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGetContact(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bt/BTController$BtListener;

    invoke-interface {v1, p1, p2}, Lcom/bt/BTController$BtListener;->onGetContact(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onGetSMS(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/BTController$1;->this$0:Lcom/bt/BTController;

    invoke-static {v0}, Lcom/bt/BTController;->access$000(Lcom/bt/BTController;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bt/BTController$BtListener;

    invoke-interface {v1, p1, p2, p3}, Lcom/bt/BTController$BtListener;->onGetSMS(Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
