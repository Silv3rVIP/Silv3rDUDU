.class public Lcom/android/utils/net/HttpNet_Sprite;
.super Lcom/android/utils/net/INet;


# static fields
.field private static final MSG_DOWNLOAD:I = 0x1

.field private static final SPRITE_LEN:I = 0xe1000


# instance fields
.field private iHaveDown:J

.field private iNeedDown:J

.field private iNet:Lcom/android/utils/net/HttpNet;

.field private iNetListener:Lcom/android/utils/net/INetListenser;

.field private method:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/net/INet;-><init>(Landroid/content/Context;)V

    const-string p1, "get"

    iput-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite;->method:Ljava/lang/String;

    new-instance p1, Lcom/android/utils/net/HttpNet_Sprite$1;

    invoke-direct {p1, p0}, Lcom/android/utils/net/HttpNet_Sprite$1;-><init>(Lcom/android/utils/net/HttpNet_Sprite;)V

    iput-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNetListener:Lcom/android/utils/net/INetListenser;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/net/HttpNet_Sprite;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iHaveDown:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/utils/net/HttpNet_Sprite;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iHaveDown:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/utils/net/HttpNet_Sprite;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNeedDown:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/utils/net/HttpNet_Sprite;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNeedDown:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/utils/net/HttpNet_Sprite;)Lcom/android/utils/net/HttpNet;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    return-object p0
.end method

.method private startDownload()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startDownload,range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iRangeStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    new-instance v0, Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/utils/net/HttpNet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iURL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setKeyWord(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-wide v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iRangeStart:J

    iget-wide v3, p0, Lcom/android/utils/net/HttpNet_Sprite;->iRangeStart:J

    const-wide/32 v5, 0xe1000

    add-long/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/utils/net/HttpNet;->setRange(JJ)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iOutBuffer:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setOutputBuffer(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iData:Ljava/io/InputStream;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setPostData(Ljava/io/InputStream;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->retryTime:I

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setRetryTime(I)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->time_timeout:I

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setTimeOut(I)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iWriteBuffSize:I

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->setWriteBuffSize(I)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNetListener:Lcom/android/utils/net/INetListenser;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/HttpNet;->addListenser(Lcom/android/utils/net/INetListenser;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    invoke-virtual {v0}, Lcom/android/utils/net/HttpNet;->start()V

    return-void
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/utils/net/HttpNet;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onClose()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/utils/net/HttpNet;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iNet:Lcom/android/utils/net/HttpNet;

    return-void
.end method

.method protected onStart()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/utils/net/HttpNet_Sprite;->setRange(J)V

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet_Sprite;->startDownload()V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet_Sprite;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet$TimeOut;->setActive(Z)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/HttpNet_Sprite;->method:Ljava/lang/String;

    return-void
.end method

.method public stateChange(I)V
    .locals 0

    return-void
.end method

.method protected timeOut()V
    .locals 1

    const-string v0, "timeOut"

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method
