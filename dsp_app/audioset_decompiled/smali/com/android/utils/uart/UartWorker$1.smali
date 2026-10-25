.class Lcom/android/utils/uart/UartWorker$1;
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

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker$1;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "ReadRunnable start"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/16 v0, 0x1000

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/android/utils/uart/UartWorker$1;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v2}, Lcom/android/utils/uart/UartWorker;->access$000(Lcom/android/utils/uart/UartWorker;)I

    move-result v2

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/utils/uart/UartWorker$1;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v3}, Lcom/android/utils/uart/UartWorker;->access$000(Lcom/android/utils/uart/UartWorker;)I

    move-result v3

    if-ne v3, v2, :cond_2

    iget-object v3, p0, Lcom/android/utils/uart/UartWorker$1;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v3}, Lcom/android/utils/uart/UartWorker;->access$100(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/ICommunicator;

    move-result-object v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/utils/uart/UartWorker$1;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v3}, Lcom/android/utils/uart/UartWorker;->access$100(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/ICommunicator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v1, v4, v0}, Lcom/android/utils/uart/ICommunicator;->readData([BII)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v5, p0, Lcom/android/utils/uart/UartWorker$1;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v5}, Lcom/android/utils/uart/UartWorker;->access$200(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/CircleBuff;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v3}, Lcom/android/utils/uart/CircleBuff;->writeDataWithBlock([BII)V

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "ReadRunnable end"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method
