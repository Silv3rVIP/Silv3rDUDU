.class Lcom/android/utils/net/HttpNet_Sprite$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/net/INetListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/net/HttpNet_Sprite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/net/HttpNet_Sprite;


# direct methods
.method constructor <init>(Lcom/android/utils/net/HttpNet_Sprite;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectFaild(JI)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ConnectFaild,code="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    iget-object p1, p1, Lcom/android/utils/net/HttpNet_Sprite;->iListener:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/utils/net/INetListenser;

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {v0}, Lcom/android/utils/net/HttpNet_Sprite;->access$100(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p3}, Lcom/android/utils/net/INetListenser;->ConnectFaild(JI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ConnectFinish(Lcom/android/utils/net/INet;)V
    .locals 5

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {v0}, Lcom/android/utils/net/HttpNet_Sprite;->access$000(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {v2}, Lcom/android/utils/net/HttpNet_Sprite;->access$100(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    iget-object v0, v0, Lcom/android/utils/net/HttpNet_Sprite;->iListener:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/net/INetListenser;

    invoke-interface {v1, p1}, Lcom/android/utils/net/INetListenser;->ConnectFinish(Lcom/android/utils/net/INet;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    return-void
.end method

.method public ConnectStart(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {v0}, Lcom/android/utils/net/HttpNet_Sprite;->access$200(Lcom/android/utils/net/HttpNet_Sprite;)Lcom/android/utils/net/HttpNet;

    move-result-object v1

    iget-wide v1, v1, Lcom/android/utils/net/HttpNet;->iDownloadSize:J

    invoke-static {v0, v1, v2}, Lcom/android/utils/net/HttpNet_Sprite;->access$102(Lcom/android/utils/net/HttpNet_Sprite;J)J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ConnectStart,len = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    iget-object p1, p1, Lcom/android/utils/net/HttpNet_Sprite;->iListener:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/utils/net/INetListenser;

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {v0}, Lcom/android/utils/net/HttpNet_Sprite;->access$100(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide v0

    invoke-interface {p2, v0, v1}, Lcom/android/utils/net/INetListenser;->ConnectStart(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public downloading(JJ[BI)V
    .locals 7

    iget-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {p1}, Lcom/android/utils/net/HttpNet_Sprite;->access$000(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide p2

    int-to-long v0, p6

    add-long/2addr p2, v0

    invoke-static {p1, p2, p3}, Lcom/android/utils/net/HttpNet_Sprite;->access$002(Lcom/android/utils/net/HttpNet_Sprite;J)J

    iget-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {p1}, Lcom/android/utils/net/HttpNet_Sprite;->access$000(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/utils/net/HttpNet_Sprite;->iRangeStart:J

    iget-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    iget-object p1, p1, Lcom/android/utils/net/HttpNet_Sprite;->iListener:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/android/utils/net/INetListenser;

    iget-object p2, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {p2}, Lcom/android/utils/net/HttpNet_Sprite;->access$000(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide v1

    iget-object p2, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    invoke-static {p2}, Lcom/android/utils/net/HttpNet_Sprite;->access$100(Lcom/android/utils/net/HttpNet_Sprite;)J

    move-result-wide v3

    move-object v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/utils/net/INetListenser;->downloading(JJ[BI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public uploading(JJ)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite$1;->this$0:Lcom/android/utils/net/HttpNet_Sprite;

    iget-object v0, v0, Lcom/android/utils/net/HttpNet_Sprite;->iListener:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/net/INetListenser;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/utils/net/INetListenser;->uploading(JJ)V

    goto :goto_0

    :cond_0
    return-void
.end method
