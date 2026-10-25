.class Lcom/android/utils/uart/UartCommunication$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/uart/UartCommunication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/uart/UartCommunication;


# direct methods
.method constructor <init>(Lcom/android/utils/uart/UartCommunication;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication$1;->this$0:Lcom/android/utils/uart/UartCommunication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication$1;->this$0:Lcom/android/utils/uart/UartCommunication;

    invoke-static {v0}, Lcom/android/utils/uart/UartCommunication;->access$000(Lcom/android/utils/uart/UartCommunication;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication$1;->this$0:Lcom/android/utils/uart/UartCommunication;

    invoke-static {v0}, Lcom/android/utils/uart/UartCommunication;->access$100(Lcom/android/utils/uart/UartCommunication;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iget-object v1, p0, Lcom/android/utils/uart/UartCommunication$1;->this$0:Lcom/android/utils/uart/UartCommunication;

    invoke-static {v1}, Lcom/android/utils/uart/UartCommunication;->access$200(Lcom/android/utils/uart/UartCommunication;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/utils/uart/UartCommunication$1;->this$0:Lcom/android/utils/uart/UartCommunication;

    invoke-static {v1}, Lcom/android/utils/uart/UartCommunication;->access$200(Lcom/android/utils/uart/UartCommunication;)Ljava/io/OutputStream;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-void
.end method
