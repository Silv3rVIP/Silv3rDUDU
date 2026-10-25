.class public Lcom/android/utils/download/DownloadTask;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_COMPLETE:I = 0x4

.field public static final STATE_ERROR:I = 0x5

.field public static final STATE_START:I = 0x1

.field public static final STATE_STOP:I = 0x2

.field public static final STATE_WAITTING:I = 0x3

.field private static final SUFFIX_LENGTH:Ljava/lang/String; = ".len"


# instance fields
.field private iDownloadPath:Ljava/lang/String;

.field private iDownloadUrl:Ljava/lang/String;

.field private iListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/utils/download/IDownloadStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private iNeedDownloadLength:J

.field private iState:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/utils/download/DownloadTask;->iState:I

    iput-object p1, p0, Lcom/android/utils/download/DownloadTask;->iDownloadUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/utils/download/DownloadTask;->createFilePath(Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    return-void
.end method

.method private createFilePath(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private notifyStateChange()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/download/IDownloadStateListener;

    iget v2, p0, Lcom/android/utils/download/DownloadTask;->iState:I

    invoke-interface {v1, v2, p0}, Lcom/android/utils/download/IDownloadStateListener;->onStateChange(ILcom/android/utils/download/DownloadTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addDownloadStateListener(Lcom/android/utils/download/IDownloadStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearDownloadPath()V
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHaveDownloadLength()J
    .locals 2

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getNeedDownloadLength()J
    .locals 5

    iget-wide v0, p0, Lcom/android/utils/download/DownloadTask;->iNeedDownloadLength:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".len"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/utils/download/DownloadTask;->iNeedDownloadLength:J

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/android/utils/download/DownloadTask;->iNeedDownloadLength:J

    return-wide v0
.end method

.method public getSaveFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    return-object v0
.end method

.method public getState()I
    .locals 1

    iget v0, p0, Lcom/android/utils/download/DownloadTask;->iState:I

    return v0
.end method

.method protected nofityDownloading()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/download/IDownloadStateListener;

    invoke-interface {v1, p0}, Lcom/android/utils/download/IDownloadStateListener;->onDownloading(Lcom/android/utils/download/DownloadTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeAllListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public removeDownloadStateListener(Lcom/android/utils/download/IDownloadStateListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadTask;->iListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected setNeedDownloadLength(J)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".len"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iput-wide p1, p0, Lcom/android/utils/download/DownloadTask;->iNeedDownloadLength:J

    new-instance p1, Ljava/io/DataOutputStream;

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, p2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-wide v0, p0, Lcom/android/utils/download/DownloadTask;->iNeedDownloadLength:J

    invoke-virtual {p1, v0, v1}, Ljava/io/DataOutputStream;->writeLong(J)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected stateChange(I)V
    .locals 2

    iput p1, p0, Lcom/android/utils/download/DownloadTask;->iState:I

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/utils/download/DownloadTask;->iDownloadPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".len"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :goto_0
    invoke-direct {p0}, Lcom/android/utils/download/DownloadTask;->notifyStateChange()V

    return-void
.end method
