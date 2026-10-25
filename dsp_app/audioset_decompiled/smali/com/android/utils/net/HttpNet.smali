.class public Lcom/android/utils/net/HttpNet;
.super Lcom/android/utils/net/INet;


# static fields
.field public static DEBUG:Z = false

.field public static FIXLENGTHMODEL:Z = true


# instance fields
.field private dis:Ljava/io/InputStream;

.field private iConnect:Ljava/net/HttpURLConnection;

.field iDownloadSize:J

.field private iHeader:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iHost:Ljava/lang/String;

.field private iStartTimes:I

.field private isError:Z

.field private isRunning:Z

.field private isTimeout:Z

.field private method:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/net/INet;-><init>(Landroid/content/Context;)V

    const-string p1, "get"

    iput-object p1, p0, Lcom/android/utils/net/HttpNet;->method:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/utils/net/HttpNet;->isRunning:Z

    iput-boolean p1, p0, Lcom/android/utils/net/HttpNet;->isTimeout:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    return-void
.end method

.method private closeNet()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_0
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private createConnection()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    const-string v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, 0x2

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v0, v2, :cond_3

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_3

    iget-object v4, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->iHost:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "host="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/utils/net/HttpNet;->iHost:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    const/4 v4, 0x1

    add-int/2addr v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/utils/net/NetConfig;->getNetMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    const-string v5, "WAP"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/utils/net/NetConfig;->getProxyAndPort(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    aget-object v5, v2, v1

    if-eqz v5, :cond_0

    aget-object v5, v2, v4

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v4

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "http://10.0.0.172:80/"

    :goto_0
    new-instance v2, Ljava/net/URL;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iHost:Ljava/lang/String;

    const-string v2, "X-Online-Host"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iHost:Ljava/lang/String;

    const-string v2, "http.route.default-proxy"

    invoke-virtual {v0, v2, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "NONETWORK"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    new-instance v0, Ljava/net/URL;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "url = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    :goto_1
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setDefaultUseCaches(Z)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    return v4

    :cond_3
    return v1
.end method

.method private download(I)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "========connection cancel======="

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    if-gez p1, :cond_0

    iget v1, p0, Lcom/android/utils/net/HttpNet;->iWriteBuffSize:I

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iget v2, p0, Lcom/android/utils/net/HttpNet;->iWriteBuffSize:I

    new-array v10, v2, [B

    iget-wide v3, p0, Lcom/android/utils/net/HttpNet;->iDownloadSize:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    int-to-long v3, p1

    iput-wide v3, p0, Lcom/android/utils/net/HttpNet;->iDownloadSize:J

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start downloading ,length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v11, 0x0

    :cond_2
    :try_start_0
    iget v3, p0, Lcom/android/utils/net/HttpNet;->state:I

    if-eqz v3, :cond_7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/utils/net/HttpNet;->time:J

    if-le v1, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    invoke-virtual {v3, v10, p1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    if-gtz v12, :cond_4

    goto/16 :goto_4

    :cond_4
    iget-wide v3, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    int-to-long v5, v12

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iOutBuffer:Ljava/io/OutputStream;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iOutBuffer:Ljava/io/OutputStream;

    invoke-virtual {v1, v10, p1, v12}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iOutBuffer:Ljava/io/OutputStream;

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    :cond_5
    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v1, :cond_8

    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v3, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/utils/net/INetListenser;

    iget-wide v4, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    iget-wide v6, p0, Lcom/android/utils/net/HttpNet;->iDownloadSize:J

    move-object v8, v10

    move v9, v12

    invoke-interface/range {v3 .. v9}, Lcom/android/utils/net/INetListenser;->downloading(JJ[BI)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_3

    :cond_6
    :try_start_2
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v3

    move v12, v1

    move-object v1, v3

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errtime="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v11, 0x1

    const/16 v3, 0x1e

    if-gt v11, v3, :cond_a

    iget v3, p0, Lcom/android/utils/net/HttpNet;->state:I

    if-eqz v3, :cond_9

    move v11, v1

    :cond_8
    move v1, v12

    if-gtz v1, :cond_2

    :goto_4
    return-void

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "========retry time max======="

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private initHead()V
    .locals 6

    const-string v0, "User-Agent"

    const-string v1, "Nokia7610;openwave;opera mini;MAUI WAP Browser"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iHost:Ljava/lang/String;

    const-string v1, "Host"

    invoke-direct {p0, v1, v0}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept"

    const-string v1, "*/*"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Language"

    const-string v1, "zh-CN,en"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Accept-Charset"

    const-string v1, "iso-8859-1, utf-8, utf-16"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/utils/net/NetConfig;->getNetMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    if-eq v0, v1, :cond_0

    const-string v0, "x-up-bear-type"

    const-string v1, "GPRS"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "via"

    const-string v1, "ZXWAP GateWay,ZTE Technologies"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "Connection"

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/utils/net/HttpNet;->iRangeEnd:J

    cmp-long v1, v4, v2

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lcom/android/utils/net/HttpNet;->iRangeEnd:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RANGE"

    invoke-direct {p0, v1, v0}, Lcom/android/utils/net/HttpNet;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "need range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/utils/net/HttpNet;->iRangeEnd:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    :goto_1
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getRequestProperties()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/Object;)V

    return-void
.end method

.method private initMethod()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iData:Ljava/io/InputStream;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const/4 v0, 0x0

    sget-boolean v2, Lcom/android/utils/net/HttpNet;->DEBUG:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    const-string v2, "post_test"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iData:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v2}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "POST length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_7

    iget-object v5, p0, Lcom/android/utils/net/HttpNet;->iData:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    sget-boolean v6, Lcom/android/utils/net/HttpNet;->DEBUG:Z

    if-eqz v6, :cond_3

    invoke-virtual {v0, v5}, Ljava/io/OutputStream;->write(I)V

    :cond_3
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v5, v4, 0x1

    rem-int/lit16 v6, v5, 0x400

    if-nez v6, :cond_6

    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    sget-boolean v6, Lcom/android/utils/net/HttpNet;->DEBUG:Z

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/utils/net/HttpNet;->time:J

    const/4 v6, 0x0

    :goto_1
    iget-object v7, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v6, v7, :cond_5

    iget-object v7, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/utils/net/INetListenser;

    int-to-long v8, v4

    int-to-long v10, v2

    invoke-interface {v7, v8, v9, v10, v11}, Lcom/android/utils/net/INetListenser;->uploading(JJ)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "POST flushing time = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v6, v5, 0x400

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :cond_6
    move v4, v5

    goto :goto_0

    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V

    sget-boolean v5, Lcom/android/utils/net/HttpNet;->DEBUG:Z

    if-eqz v5, :cond_8

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/net/INetListenser;

    int-to-long v5, v4

    int-to-long v7, v2

    invoke-interface {v0, v5, v6, v7, v8}, Lcom/android/utils/net/INetListenser;->uploading(JJ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iData:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    const-string v0, "POST success"

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    :cond_b
    :goto_3
    return-void
.end method

.method private responseProcess(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "response code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    const/16 v0, 0xc8

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    const/16 v0, 0xce

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12e

    if-eq p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isError:Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    const-string v0, "Location"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reconnect url="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iURL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    const-string v0, "Content-Range"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const/16 v0, 0x2f

    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content============="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v2, p1

    iput-wide v2, p0, Lcom/android/utils/net/HttpNet;->iDownloadSize:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return v1
.end method

.method private runTask()V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/net/HttpNet;->iStartTimes:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isError:Z

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/utils/net/HttpNet;->iDownloadSize:J

    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isRunning:Z

    iput-boolean v0, p0, Lcom/android/utils/net/HttpNet;->isTimeout:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/utils/net/HttpNet;->time:J

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/utils/net/NetConfig;->getNetMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "NONETWORK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v0, p0, Lcom/android/utils/net/HttpNet;->state:I

    invoke-virtual {p0}, Lcom/android/utils/net/HttpNet;->closeTimeout()V

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->closeNet()V

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NONETWORK,listener size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :goto_0
    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/net/INetListenser;

    iget-wide v2, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    const/16 v4, 0x1f7

    invoke-interface {v1, v2, v3, v4}, Lcom/android/utils/net/INetListenser;->ConnectFaild(JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/utils/net/HttpNet;->iStartTimes:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/utils/net/HttpNet;->iStartTimes:I

    iget v4, p0, Lcom/android/utils/net/HttpNet;->retryTime:I

    if-ge v3, v4, :cond_9

    iget-boolean v3, p0, Lcom/android/utils/net/HttpNet;->isRunning:Z

    if-eqz v3, :cond_9

    const/4 v3, 0x3

    if-ge v2, v3, :cond_9

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/utils/net/HttpNet;->time:J

    iput-boolean v0, p0, Lcom/android/utils/net/HttpNet;->isError:Z

    iput-boolean v0, p0, Lcom/android/utils/net/HttpNet;->isTimeout:Z

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->createConnection()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->initHead()V

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->initMethod()V

    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/utils/net/HttpNet;->responseProcess(I)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "reconnect......"

    invoke-static {v3}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->closeNet()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->validate()Z

    move-result v3

    if-nez v3, :cond_4

    add-int/lit8 v2, v2, 0x1

    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isError:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content-length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/utils/net/INetListenser;

    int-to-long v5, v2

    invoke-interface {v4, v5, v6}, Lcom/android/utils/net/INetListenser;->ConnectStart(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/utils/net/HttpNet;->download(I)V

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iTimeout:Lcom/android/utils/net/INet$TimeOut;

    invoke-virtual {v2, v0}, Lcom/android/utils/net/INet$TimeOut;->setActive(Z)V

    :cond_6
    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    iget-object v3, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/utils/net/INetListenser;

    invoke-interface {v3, p0}, Lcom/android/utils/net/INetListenser;->ConnectFinish(Lcom/android/utils/net/INet;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    const-string v2, "ConnectFinish======="

    invoke-static {v2}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v3

    const/4 v2, 0x0

    goto :goto_4

    :cond_8
    :try_start_2
    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isError:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v3

    :goto_4
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isError:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "net error============="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/utils/net/HttpNet;->state:I

    if-nez v3, :cond_2

    :cond_9
    :goto_5
    iget-boolean v2, p0, Lcom/android/utils/net/HttpNet;->isError:Z

    if-eqz v2, :cond_b

    iget v2, p0, Lcom/android/utils/net/HttpNet;->state:I

    if-ne v2, v1, :cond_c

    iput v0, p0, Lcom/android/utils/net/HttpNet;->state:I

    invoke-virtual {p0}, Lcom/android/utils/net/HttpNet;->closeTimeout()V

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->closeNet()V

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isTimeout:Z

    if-nez v1, :cond_a

    const/4 v1, 0x0

    :goto_6
    :try_start_3
    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const-string v2, "=====connect fail=iListener========"

    invoke-static {v2}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/net/INetListenser;

    iget-wide v3, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    const/16 v5, 0x1f5

    invoke-interface {v2, v3, v4, v5}, Lcom/android/utils/net/INetListenser;->ConnectFaild(JI)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/Object;)V

    :cond_a
    const-string v1, "=====connect fail========="

    goto :goto_7

    :cond_b
    invoke-virtual {p0}, Lcom/android/utils/net/HttpNet;->close()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "====connect finish======isError="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/utils/net/HttpNet;->isError:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_7
    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :cond_c
    iput-boolean v0, p0, Lcom/android/utils/net/HttpNet;->isRunning:Z

    return-void
.end method

.method private setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p2, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, p1, p2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private validate()Z
    .locals 5

    iget-object v0, p0, Lcom/android/utils/net/INet;->iKeyWord:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/utils/net/INet;->iKeyWord:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/utils/net/INet;->iKeyWord:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    if-nez v0, :cond_1

    const-string v0, "not my wish connect,will re-connecting........"

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/utils/net/HttpNet;->iStartTimes:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/utils/net/HttpNet;->iStartTimes:I

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->closeNet()V

    return v2

    :cond_1
    return v1
.end method


# virtual methods
.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected onClose()V
    .locals 3

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->closeNet()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->iConnect:Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->dis:Ljava/io/InputStream;

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->method:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->iHost:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_0
    iput-object v0, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/utils/net/HttpNet;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread interrupt error="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->runTask()V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/net/HttpNet;->iHeader:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/net/HttpNet;->method:Ljava/lang/String;

    return-void
.end method

.method protected timeOut()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/utils/net/HttpNet;->iListener:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/net/INetListenser;

    iget-wide v3, p0, Lcom/android/utils/net/HttpNet;->iRangeStart:J

    const/16 v5, 0x1f4

    invoke-interface {v2, v3, v4, v5}, Lcom/android/utils/net/INetListenser;->ConnectFaild(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "connection time out========================="

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/utils/net/HttpNet;->isTimeout:Z

    invoke-direct {p0}, Lcom/android/utils/net/HttpNet;->closeNet()V

    iput-boolean v0, p0, Lcom/android/utils/net/HttpNet;->isRunning:Z

    return-void
.end method
