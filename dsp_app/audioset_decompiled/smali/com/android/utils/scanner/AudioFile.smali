.class public Lcom/android/utils/scanner/AudioFile;
.super Ljava/lang/Object;


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mDuration:J

.field private mFilePath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getmAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioFile;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getmArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioFile;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getmDuration()J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/scanner/AudioFile;->mDuration:J

    return-wide v0
.end method

.method public getmFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioFile;->mFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getmTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioFile;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/AudioFile;->mFilePath:Ljava/lang/String;

    return-void
.end method

.method public setmAlbum(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/AudioFile;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method public setmArtist(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/AudioFile;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setmDuration(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/scanner/AudioFile;->mDuration:J

    return-void
.end method

.method public setmTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/AudioFile;->mTitle:Ljava/lang/String;

    return-void
.end method
