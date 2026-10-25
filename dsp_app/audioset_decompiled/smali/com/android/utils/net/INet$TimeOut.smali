.class public Lcom/android/utils/net/INet$TimeOut;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/net/INet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TimeOut"
.end annotation


# instance fields
.field private isActive:Z

.field final synthetic this$0:Lcom/android/utils/net/INet;

.field private timeout:I


# direct methods
.method public constructor <init>(Lcom/android/utils/net/INet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/INet$TimeOut;->this$0:Lcom/android/utils/net/INet;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/net/INet$TimeOut;->isActive:Z

    const p1, 0xea60

    iput p1, p0, Lcom/android/utils/net/INet$TimeOut;->timeout:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/utils/net/INet$TimeOut;->isActive:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nodatatime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/utils/net/INet$TimeOut;->this$0:Lcom/android/utils/net/INet;

    iget-wide v3, v3, Lcom/android/utils/net/INet;->time:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/INet$TimeOut;->this$0:Lcom/android/utils/net/INet;

    iget-wide v0, v0, Lcom/android/utils/net/INet;->time:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/utils/net/INet$TimeOut;->this$0:Lcom/android/utils/net/INet;

    iget-wide v2, v2, Lcom/android/utils/net/INet;->time:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget v2, p0, Lcom/android/utils/net/INet$TimeOut;->timeout:I

    int-to-long v2, v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/android/utils/net/INet$TimeOut;->this$0:Lcom/android/utils/net/INet;

    invoke-virtual {v0}, Lcom/android/utils/net/INet;->timeOut()V

    goto :goto_1

    :cond_0
    const-wide/16 v0, 0x2710

    invoke-static {v0, v1}, Lcom/android/utils/net/INet$TimeOut;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/net/INet$TimeOut;->isActive:Z

    return-void
.end method

.method public setTimeout(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/net/INet$TimeOut;->timeout:I

    return-void
.end method
