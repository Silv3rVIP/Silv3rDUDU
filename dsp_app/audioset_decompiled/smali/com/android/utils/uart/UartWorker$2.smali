.class Lcom/android/utils/uart/UartWorker$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/uart/UartWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/uart/UartWorker;


# direct methods
.method constructor <init>(Lcom/android/utils/uart/UartWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "AnalyseRunnable start"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/16 v0, 0x2800

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v1}, Lcom/android/utils/uart/UartWorker;->access$000(Lcom/android/utils/uart/UartWorker;)I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v2}, Lcom/android/utils/uart/UartWorker;->access$000(Lcom/android/utils/uart/UartWorker;)I

    move-result v2

    if-ne v2, v1, :cond_5

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-eq v2, v5, :cond_4

    add-int/lit8 v2, v4, 0x1

    iget-object v5, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v5}, Lcom/android/utils/uart/UartWorker;->access$200(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/CircleBuff;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/utils/uart/CircleBuff;->readDataWithBlock()B

    move-result v5

    aput-byte v5, v0, v4

    iget-object v4, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v4}, Lcom/android/utils/uart/UartWorker;->access$300(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/IUartProtocal;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    const/16 v4, 0x36a

    if-le v2, v4, :cond_1

    sget-object v4, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v4, v0}, Lcom/android/utils/log/JLog;->print([B)V

    :cond_1
    iget-object v4, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v4}, Lcom/android/utils/uart/UartWorker;->access$300(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/IUartProtocal;

    move-result-object v4

    invoke-interface {v4, v0, v3, v2}, Lcom/android/utils/uart/IUartProtocal;->checkCompleteProtocal([BII)I

    move-result v4

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    sget-object v5, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v6, "----------------------------"

    invoke-virtual {v5, v6}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v5, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v5, v0, v3, v2}, Lcom/android/utils/log/JLog;->print([BII)V

    sget-object v2, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v2, v6}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    move v2, v4

    goto :goto_1

    :cond_2
    const/4 v5, -0x3

    if-ne v4, v5, :cond_3

    add-int/lit8 v2, v2, -0x1

    :cond_3
    move v7, v4

    move v4, v2

    move v2, v7

    goto :goto_2

    :cond_4
    new-array v2, v4, [B

    invoke-static {v0, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    iget-object v3, p0, Lcom/android/utils/uart/UartWorker$2;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v3}, Lcom/android/utils/uart/UartWorker;->access$400(Lcom/android/utils/uart/UartWorker;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "AnalyseRunnable end"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method
