.class public Lcom/android/utils/scanner/AudioScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/scanner/IFileScanner;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/utils/scanner/IFileScanner<",
        "Lcom/android/utils/scanner/AudioFile;",
        ">;"
    }
.end annotation


# instance fields
.field private mAudioListener:Lcom/android/utils/scanner/IFileScanListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/utils/scanner/IFileScanListener<",
            "Lcom/android/utils/scanner/AudioFile;",
            ">;"
        }
    .end annotation
.end field

.field private mAudiofile:Lcom/android/utils/scanner/AudioFile;

.field private mContext:Landroid/content/Context;

.field private mFileScanner:Lcom/android/utils/scanner/FileScanner;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/scanner/AudioScanner;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/utils/scanner/FileScanner;

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/utils/scanner/FileScanner;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/scanner/AudioScanner;)Lcom/android/utils/scanner/IFileScanListener;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/AudioScanner;->mAudioListener:Lcom/android/utils/scanner/IFileScanListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/utils/scanner/AudioScanner;)Lcom/android/utils/scanner/AudioFile;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/AudioScanner;->mAudiofile:Lcom/android/utils/scanner/AudioFile;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/utils/scanner/AudioScanner;Lcom/android/utils/scanner/AudioFile;)Lcom/android/utils/scanner/AudioFile;
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/AudioScanner;->mAudiofile:Lcom/android/utils/scanner/AudioFile;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/utils/scanner/AudioScanner;Ljava/io/File;)Lcom/android/utils/scanner/AudioFile;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/scanner/AudioScanner;->getAudioFile(Ljava/io/File;)Lcom/android/utils/scanner/AudioFile;

    move-result-object p0

    return-object p0
.end method

.method private getAudioFile(Ljava/io/File;)Lcom/android/utils/scanner/AudioFile;
    .locals 2

    new-instance v0, Lcom/android/utils/scanner/AudioFile;

    invoke-direct {v0}, Lcom/android/utils/scanner/AudioFile;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/utils/scanner/AudioFile;->setFilePath(Ljava/lang/String;)V

    const-string v1, "mp3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MP3"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "wav"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WAV"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/utils/scanner/AudioScanner;->setAudioFileWAV(Ljava/lang/String;Lcom/android/utils/scanner/AudioFile;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/utils/scanner/AudioScanner;->setAudioFileMP3(Ljava/lang/String;Lcom/android/utils/scanner/AudioFile;)V

    :cond_3
    :goto_1
    return-object v0
.end method


# virtual methods
.method public cancelScan()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    invoke-virtual {v0}, Lcom/android/utils/scanner/FileScanner;->cancelScan()V

    return-void
.end method

.method public isScanning()Z
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    invoke-virtual {v0}, Lcom/android/utils/scanner/FileScanner;->isScanning()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/utils/scanner/FileScanner;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    :cond_0
    return-void
.end method

.method public scan(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    invoke-virtual {v0, p1}, Lcom/android/utils/scanner/FileScanner;->scan(Ljava/lang/String;)V

    return-void
.end method

.method public setAudioFileMP3(Ljava/lang/String;Lcom/android/utils/scanner/AudioFile;)V
    .locals 4

    :try_start_0
    new-instance v0, Lcom/android/utils/scanner/util/BuffRandAcceFile;

    invoke-direct {v0, p1}, Lcom/android/utils/scanner/util/BuffRandAcceFile;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/utils/scanner/util/Header;

    invoke-direct {p1, v0}, Lcom/android/utils/scanner/util/Header;-><init>(Lcom/android/utils/scanner/util/IRandomAccess;)V

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->getAlbum()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "UTF-8"

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->getAlbum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/utils/scanner/AudioFile;->setmAlbum(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/utils/scanner/AudioFile;->setmTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->getArtist()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->getArtist()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/android/utils/scanner/AudioFile;->setmArtist(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1}, Lcom/android/utils/scanner/util/Header;->syncFrame()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/utils/scanner/util/Header;->getDuration()F

    move-result p1

    float-to-long v1, p1

    invoke-virtual {p2, v1, v2}, Lcom/android/utils/scanner/AudioFile;->setmDuration(J)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->destroyID3()V

    invoke-virtual {v0}, Lcom/android/utils/scanner/util/BuffRandAcceFile;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setAudioFileWAV(Ljava/lang/String;Lcom/android/utils/scanner/AudioFile;)V
    .locals 2

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/utils/scanner/AudioFile;->setmAlbum(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/utils/scanner/AudioFile;->setmArtist(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    invoke-virtual {p2, v0, v1}, Lcom/android/utils/scanner/AudioFile;->setmDuration(J)V

    invoke-virtual {p2, p1}, Lcom/android/utils/scanner/AudioFile;->setmTitle(Ljava/lang/String;)V

    return-void
.end method

.method public setFileFilter(Ljava/io/FileFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    invoke-virtual {v0, p1}, Lcom/android/utils/scanner/FileScanner;->setFileFilter(Ljava/io/FileFilter;)V

    return-void
.end method

.method public setFileScanListener(Lcom/android/utils/scanner/IFileScanListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/utils/scanner/IFileScanListener<",
            "Lcom/android/utils/scanner/AudioFile;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/utils/scanner/AudioScanner;->mAudioListener:Lcom/android/utils/scanner/IFileScanListener;

    iget-object p1, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    new-instance v0, Lcom/android/utils/scanner/AudioScanner$1;

    invoke-direct {v0, p0}, Lcom/android/utils/scanner/AudioScanner$1;-><init>(Lcom/android/utils/scanner/AudioScanner;)V

    invoke-virtual {p1, v0}, Lcom/android/utils/scanner/FileScanner;->setFileScanListener(Lcom/android/utils/scanner/IFileScanListener;)V

    return-void
.end method

.method public setNoScanFile(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner;->mFileScanner:Lcom/android/utils/scanner/FileScanner;

    invoke-virtual {v0, p1}, Lcom/android/utils/scanner/FileScanner;->setNoScanFile(Ljava/lang/String;)V

    return-void
.end method
