.class Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;
.super Ljava/lang/Thread;
.source "TableView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/nwdview/TableView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field private mRunning:Z

.field final synthetic this$0:Lcom/nwd/audioset/view/nwdview/TableView2;


# direct methods
.method public constructor <init>(Lcom/nwd/audioset/view/nwdview/TableView2;)V
    .locals 4

    .line 232
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 229
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->mRunning:Z

    .line 233
    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v1

    if-nez v1, :cond_0

    .line 234
    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [F

    invoke-static {p1, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$002(Lcom/nwd/audioset/view/nwdview/TableView2;[F)[F

    .line 236
    :cond_0
    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$200(Lcom/nwd/audioset/view/nwdview/TableView2;)Ljava/text/DecimalFormat;

    move-result-object v1

    if-nez v1, :cond_1

    .line 237
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "#.00"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$202(Lcom/nwd/audioset/view/nwdview/TableView2;Ljava/text/DecimalFormat;)Ljava/text/DecimalFormat;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UpdateThread.init="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "YCH"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    :goto_0
    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 242
    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v1

    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v2

    aget v2, v2, v0

    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    sub-float/2addr v2, v3

    invoke-static {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$400(Lcom/nwd/audioset/view/nwdview/TableView2;)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 265
    :cond_0
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->mRunning:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 273
    :goto_0
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v2}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_3

    .line 275
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v2}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v2

    aget v2, v2, v0

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 276
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v2}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v2

    aget v3, v2, v0

    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v4}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$000(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v4

    aget v4, v4, v0

    add-float/2addr v3, v4

    aput v3, v2, v0

    .line 278
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v2}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$200(Lcom/nwd/audioset/view/nwdview/TableView2;)Ljava/text/DecimalFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$200(Lcom/nwd/audioset/view/nwdview/TableView2;)Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v4}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v4

    aget v4, v4, v0

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v2}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    aput v3, v2, v0

    .line 282
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v2}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$200(Lcom/nwd/audioset/view/nwdview/TableView2;)Ljava/text/DecimalFormat;

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$300(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v3

    aget v3, v3, v0

    float-to-double v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v3}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$200(Lcom/nwd/audioset/view/nwdview/TableView2;)Ljava/text/DecimalFormat;

    move-result-object v3

    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-static {v4}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$100(Lcom/nwd/audioset/view/nwdview/TableView2;)[F

    move-result-object v4

    aget v4, v4, v0

    float-to-double v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 287
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/TableView2;->postInvalidate()V

    if-nez v1, :cond_0

    :cond_4
    return-void
.end method

.method public declared-synchronized start()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 249
    :try_start_0
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->mRunning:Z

    .line 250
    invoke-super {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopRunning()V
    .locals 1

    const/4 v0, 0x0

    .line 254
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2$UpdateThread;->mRunning:Z

    return-void
.end method
