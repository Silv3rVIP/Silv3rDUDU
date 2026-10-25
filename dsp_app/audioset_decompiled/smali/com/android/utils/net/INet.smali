.class public abstract Lcom/android/utils/net/INet;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/net/INet$TimeOut;
    }
.end annotation


# static fields
.field public static final RESULT_ERR_CONNECT_CANCEL:I = 0x1f8

.field public static final RESULT_ERR_CONNECT_FIALD:I = 0x1f5

.field public static final RESULT_ERR_CONNECT_TIMEOUT:I = 0x1f4

.field public static final RESULT_ERR_NO_NETWORK:I = 0x1f7

.field public static final RESULT_SUCCESS_CONNECT:I = 0xca

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_FREE:I


# instance fields
.field protected iContext:Landroid/content/Context;

.field protected iData:Ljava/io/InputStream;

.field protected iKeyWord:Ljava/lang/String;

.field protected iListener:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/utils/net/INetListenser;",
            ">;"
        }
    .end annotation
.end field

.field protected iOutBuffer:Ljava/io/OutputStream;

.field protected iRangeEnd:J

.field iRangeStart:J

.field protected iTimeout:Lcom/android/utils/net/INet$TimeOut;

.field protected iURL:Ljava/lang/String;

.field protected iWriteBuffSize:I

.field protected retryTime:I

.field protected state:I

.field protected time:J

.field protected time_timeout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/net/INet;->state:I

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Ljava/util/Vector;-><init>(II)V

    iput-object v0, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    const v0, 0xea60

    iput v0, p0, Lcom/android/utils/net/INet;->time_timeout:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/utils/net/INet;->iRangeStart:J

    iput-wide v0, p0, Lcom/android/utils/net/INet;->iRangeEnd:J

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/utils/net/INet;->retryTime:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/net/INet;->iKeyWord:Ljava/lang/String;

    const/16 v0, 0x400

    iput v0, p0, Lcom/android/utils/net/INet;->iWriteBuffSize:I

    iput-object p1, p0, Lcom/android/utils/net/INet;->iContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addListenser(Lcom/android/utils/net/INetListenser;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final cancel_connect()V
    .locals 5

    iget-object v0, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/net/INetListenser;

    const-wide/16 v2, 0x0

    const/16 v4, 0x1f8

    invoke-interface {v1, v2, v3, v4}, Lcom/android/utils/net/INetListenser;->ConnectFaild(JI)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/utils/net/INet;->close()V

    return-void
.end method

.method public final close()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/net/INet;->state:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/utils/net/INet;->iURL:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/utils/net/INet;->iData:Ljava/io/InputStream;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/utils/net/INet;->iData:Ljava/io/InputStream;

    invoke-virtual {p0}, Lcom/android/utils/net/INet;->closeTimeout()V

    iput v0, p0, Lcom/android/utils/net/INet;->time_timeout:I

    iput v0, p0, Lcom/android/utils/net/INet;->retryTime:I

    invoke-virtual {p0}, Lcom/android/utils/net/INet;->onClose()V

    iput-object v1, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    return-void
.end method

.method protected final closeTimeout()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/net/INet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet$TimeOut;->setActive(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/net/INet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    return-void
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public final getNetState()I
    .locals 1

    iget v0, p0, Lcom/android/utils/net/INet;->state:I

    return v0
.end method

.method protected abstract onClose()V
.end method

.method protected abstract onStart()V
.end method

.method public removeListenser(Lcom/android/utils/net/INetListenser;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/net/INet;->iListener:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    return-void
.end method

.method public final run()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/utils/net/INet;->state:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/utils/net/INet;->time:J

    iget-object v0, p0, Lcom/android/utils/net/INet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet$TimeOut;->setActive(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/net/INet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    iget v0, p0, Lcom/android/utils/net/INet;->time_timeout:I

    if-lez v0, :cond_1

    new-instance v0, Lcom/android/utils/net/INet$TimeOut;

    invoke-direct {v0, p0}, Lcom/android/utils/net/INet$TimeOut;-><init>(Lcom/android/utils/net/INet;)V

    iput-object v0, p0, Lcom/android/utils/net/INet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    iget v1, p0, Lcom/android/utils/net/INet;->time_timeout:I

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet$TimeOut;->setTimeout(I)V

    iget-object v0, p0, Lcom/android/utils/net/INet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    invoke-virtual {v0}, Lcom/android/utils/net/INet$TimeOut;->start()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/utils/net/INet;->onStart()V

    return-void
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public final setKeyWord(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/INet;->iKeyWord:Ljava/lang/String;

    return-void
.end method

.method public abstract setMethod(Ljava/lang/String;)V
.end method

.method public final setOutputBuffer(Ljava/io/OutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/INet;->iOutBuffer:Ljava/io/OutputStream;

    return-void
.end method

.method public setPostData(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/INet;->iData:Ljava/io/InputStream;

    return-void
.end method

.method public setRange(J)V
    .locals 2

    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/utils/net/INet;->setRange(JJ)V

    return-void
.end method

.method public setRange(JJ)V
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/net/INet;->iRangeStart:J

    iput-wide p3, p0, Lcom/android/utils/net/INet;->iRangeEnd:J

    return-void
.end method

.method public final setRetryTime(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/net/INet;->retryTime:I

    return-void
.end method

.method public setTimeOut(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/net/INet;->time_timeout:I

    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/INet;->iURL:Ljava/lang/String;

    return-void
.end method

.method public final setWriteBuffSize(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/net/INet;->iWriteBuffSize:I

    return-void
.end method

.method protected abstract timeOut()V
.end method
