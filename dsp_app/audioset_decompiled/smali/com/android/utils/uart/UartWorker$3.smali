.class Lcom/android/utils/uart/UartWorker$3;
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

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker$3;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "DistributionRunnable start"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker$3;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v0}, Lcom/android/utils/uart/UartWorker;->access$000(Lcom/android/utils/uart/UartWorker;)I

    move-result v0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/utils/uart/UartWorker$3;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v1}, Lcom/android/utils/uart/UartWorker;->access$000(Lcom/android/utils/uart/UartWorker;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/utils/uart/UartWorker$3;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v1}, Lcom/android/utils/uart/UartWorker;->access$400(Lcom/android/utils/uart/UartWorker;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object v2, p0, Lcom/android/utils/uart/UartWorker$3;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v2}, Lcom/android/utils/uart/UartWorker;->access$500(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/utils/uart/UartWorker$3;->this$0:Lcom/android/utils/uart/UartWorker;

    invoke-static {v2}, Lcom/android/utils/uart/UartWorker;->access$500(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;->onDistribution([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "DistributionRunnable end"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method
