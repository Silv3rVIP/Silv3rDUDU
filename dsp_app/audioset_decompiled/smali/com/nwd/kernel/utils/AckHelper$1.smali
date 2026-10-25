.class Lcom/nwd/kernel/utils/AckHelper$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/utils/AckHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/kernel/utils/AckHelper;


# direct methods
.method constructor <init>(Lcom/nwd/kernel/utils/AckHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/AckHelper$1;->this$0:Lcom/nwd/kernel/utils/AckHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/nwd/kernel/utils/AckHelper;->access$000()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    sget-object v2, Lcom/nwd/kernel/utils/AckHelper;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "resend protocal because not receive ack"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Lcom/nwd/kernel/utils/AckHelper$1;->this$0:Lcom/nwd/kernel/utils/AckHelper;

    invoke-static {v2}, Lcom/nwd/kernel/utils/AckHelper;->access$100(Lcom/nwd/kernel/utils/AckHelper;)Lcom/android/utils/uart/ICommunicator;

    move-result-object v2

    invoke-static {}, Lcom/nwd/kernel/utils/AckHelper;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-static {v2, v3}, Lcom/nwd/kernel/source/ProtocalUtil;->writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-lez p1, :cond_2

    invoke-virtual {p0, v0}, Lcom/nwd/kernel/utils/AckHelper$1;->removeMessages(I)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/nwd/kernel/utils/AckHelper$1;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_1
    return-void
.end method
