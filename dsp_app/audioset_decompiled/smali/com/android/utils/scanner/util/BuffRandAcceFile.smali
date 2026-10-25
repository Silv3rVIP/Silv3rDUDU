.class public Lcom/android/utils/scanner/util/BuffRandAcceFile;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/scanner/util/IRandomAccess;


# static fields
.field private static final DEFAULT_BUFSIZE:I = 0x800

.field private static rafCurFile:Ljava/io/RandomAccessFile;


# instance fields
.field private longFileSize:J

.field private mBoolBufDirty:Z

.field private mByteInBuf:[B

.field private mIntBufSize:I

.field private mIntBufUsedSize:I

.field private mLongBufSizeMask:J

.field private mLongCurPos:J

.field private mLongEndPos:J

.field private mLongFileEndPos:J

.field private mLongStartPos:J

.field objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    new-instance v2, Lcom/android/utils/scanner/util/ID3Tag;

    invoke-direct {v2}, Lcom/android/utils/scanner/util/ID3Tag;-><init>()V

    iput-object v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    iput p2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mIntBufSize:I

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide p1

    const-wide/16 v2, 0x1

    sub-long/2addr p1, v2

    iput-wide p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    iget p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mIntBufSize:I

    int-to-long p1, p1

    sub-long/2addr p1, v2

    xor-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongBufSizeMask:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mBoolBufDirty:Z

    sget-object p2, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->longFileSize:J

    const/16 p2, 0x80

    new-array p2, p2, [B

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->seek(J)V

    const/16 v2, 0xa

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->read([BII)I

    iget-object v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v2, p2, p1}, Lcom/android/utils/scanner/util/ID3Tag;->checkID3V2([BI)I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v0, v2

    add-int/lit8 v2, v2, -0xa

    new-array v3, v2, [B

    invoke-virtual {p0, v3, p1, v2}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->read([BII)I

    iget-object v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v2, v3, p1}, Lcom/android/utils/scanner/util/ID3Tag;->parseID3V2([BI)V

    :cond_0
    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->longFileSize:J

    const-wide/16 v4, 0x80

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->seek(J)V

    invoke-virtual {p0, p2}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->read([B)I

    iget-object p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {p1, p2}, Lcom/android/utils/scanner/util/ID3Tag;->checkID3V1([B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {p1, p2}, Lcom/android/utils/scanner/util/ID3Tag;->parseID3V1([B)V

    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->seek(J)V

    return-void
.end method

.method private fillbuf()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mBoolBufDirty:Z

    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    return v0
.end method

.method private flushbuf()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mBoolBufDirty:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    :cond_0
    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    iget v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mIntBufUsedSize:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V

    iput-boolean v3, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mBoolBufDirty:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public destroyID3()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/ID3Tag;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    return-void
.end method

.method public dump(I[BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    int-to-long v2, p4

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget-wide v6, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    cmp-long p1, v2, v6

    if-gtz p1, :cond_0

    iget-wide v6, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    cmp-long p1, v2, v6

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {p1, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-wide v6, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    cmp-long p1, v2, v6

    if-lez p1, :cond_1

    sget-object p1, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    sub-long/2addr v2, v0

    add-long/2addr v2, v4

    long-to-int p4, v2

    if-gtz p4, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    sget-object p1, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object p1, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p4

    sget-object p1, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    iget-wide p2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    invoke-virtual {p1, p2, p3}, Ljava/io/RandomAccessFile;->seek(J)V

    :goto_0
    return p4
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/ID3Tag;->getAlbum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/ID3Tag;->getArtist()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilePointer()J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    return-wide v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/ID3Tag;->getGenre()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->objID3Tag:Lcom/android/utils/scanner/util/ID3Tag;

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/ID3Tag;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->longFileSize:J

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    iget-wide v1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    iget-wide v3, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    sub-long v3, v1, v3

    long-to-int v4, v3

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->seek(J)V

    return v0
.end method

.method public read(J)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->flushbuf()V

    invoke-virtual {p0, p1, p2}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->seek(J)V

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_0

    :cond_1
    iput-wide p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    iget-object v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    iget-wide v1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    sub-long/2addr p1, v1

    long-to-int p2, p1

    aget-byte p1, v0, p2

    and-int/lit16 p1, p1, 0xff

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    int-to-long v2, p3

    add-long/2addr v2, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iget-wide v6, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    cmp-long v8, v2, v6

    if-gtz v8, :cond_0

    iget-wide v6, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    cmp-long v8, v2, v6

    if-gtz v8, :cond_0

    iget-object v6, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mByteInBuf:[B

    iget-wide v7, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    sub-long/2addr v0, v7

    long-to-int v1, v0

    invoke-static {v6, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    cmp-long v6, v2, v0

    if-lez v6, :cond_1

    sget-object p3, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {p3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    sub-long/2addr v0, v2

    add-long/2addr v0, v4

    long-to-int p3, v0

    if-gtz p3, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    iget-wide v1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    sget-object v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->rafCurFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result p3

    iget-wide p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    sub-long v2, p1, v4

    :goto_0
    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->seek(J)V

    return p3
.end method

.method public seek(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    :cond_0
    invoke-direct {p0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->flushbuf()V

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_1

    iget-wide v4, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    cmp-long v6, p1, v4

    if-gtz v6, :cond_1

    cmp-long v6, v4, v2

    if-eqz v6, :cond_1

    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongBufSizeMask:J

    and-long/2addr v2, p1

    iput-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    invoke-direct {p0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->fillbuf()I

    move-result v2

    goto :goto_0

    :cond_1
    cmp-long v4, p1, v2

    if-nez v4, :cond_2

    iget-wide v4, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    :cond_2
    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongFileEndPos:J

    add-long/2addr v2, v0

    cmp-long v4, p1, v2

    if-nez v4, :cond_4

    :cond_3
    iput-wide p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mIntBufUsedSize:I

    :cond_4
    iget-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongStartPos:J

    iget v4, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mIntBufSize:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongEndPos:J

    :cond_5
    iput-wide p1, p0, Lcom/android/utils/scanner/util/BuffRandAcceFile;->mLongCurPos:J

    return-void
.end method
