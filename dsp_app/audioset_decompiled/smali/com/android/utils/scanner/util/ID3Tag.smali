.class public final Lcom/android/utils/scanner/util/ID3Tag;
.super Ljava/lang/Object;


# static fields
.field private static TEXT_ENCODING:[Ljava/lang/String;


# instance fields
.field private boolID3v2Footer:Z

.field private intExHeaderSize:I

.field private intVersion:I

.field private strAlbum:Ljava/lang/String;

.field private strArtist:Ljava/lang/String;

.field private strGenre:Ljava/lang/String;

.field private strTitle:Ljava/lang/String;

.field private strYear:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "gb2312"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "UTF-16"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UTF-16BE"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "UTF-8"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private gerGenreFromID3v2(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, ".*?\\((.*?)\\).*?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/utils/scanner/util/ID3v1Genres;->matchGenreName(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object p1
.end method

.method private getText([BII)I
    .locals 6

    iget v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->intVersion:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    const/16 v2, 0xa

    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1, p2, v0}, Ljava/lang/String;-><init>([BII)V

    add-int/2addr p2, v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/scanner/util/ID3Tag;->makeInt([BII)I

    move-result v4

    add-int/2addr p2, v0

    iget v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->intVersion:I

    if-le v0, v1, :cond_1

    add-int/lit8 p2, p2, 0x2

    :cond_1
    aget-byte v0, p1, p2

    add-int/lit8 v1, v4, -0x1

    add-int/lit8 p2, p2, 0x1

    if-lez v1, :cond_4

    add-int v5, p2, v1

    if-gt v5, p3, :cond_4

    if-ltz v0, :cond_4

    sget-object p3, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    array-length p3, p3

    if-lt v0, p3, :cond_2

    goto/16 :goto_2

    :cond_2
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    iget-object p3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/String;

    sget-object v3, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {p3, p1, p2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/utils/scanner/util/ID3Tag;->gerGenreFromID3v2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    goto :goto_1

    :sswitch_1
    iget-object p3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/String;

    sget-object v3, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {p3, p1, p2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    goto :goto_1

    :sswitch_2
    iget-object p3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/String;

    sget-object v3, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {p3, p1, p2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    iget-object p3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/String;

    sget-object v3, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {p3, p1, p2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    goto :goto_1

    :sswitch_4
    iget-object p3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    if-nez p3, :cond_3

    new-instance p3, Ljava/lang/String;

    sget-object v3, Lcom/android/utils/scanner/util/ID3Tag;->TEXT_ENCODING:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {p3, p1, p2, v1, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    add-int/2addr v4, v2

    return v4

    :catchall_0
    move-exception p1

    throw p1

    :catch_0
    add-int/2addr v4, v2

    return v4

    :cond_4
    :goto_2
    add-int/2addr v4, v2

    return v4

    :sswitch_data_0
    .sparse-switch
        0x1437f -> :sswitch_4
        0x14535 -> :sswitch_3
        0x145b2 -> :sswitch_2
        0x14660 -> :sswitch_1
        0x272ca3 -> :sswitch_4
        0x27348e -> :sswitch_0
        0x274b93 -> :sswitch_2
        0x276408 -> :sswitch_3
        0x2785f2 -> :sswitch_1
    .end sparse-switch
.end method

.method private makeInt([BII)I
    .locals 3

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p3, :cond_0

    shl-int/lit8 v0, v0, 0x8

    add-int v2, p2, v1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public static synchSafeInt([BI)I
    .locals 2

    aget-byte v0, p0, p1

    and-int/lit8 v0, v0, 0x7f

    shl-int/lit8 v0, v0, 0x15

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0xe

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x7f

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x3

    aget-byte p0, p0, p1

    and-int/lit8 p0, p0, 0x7f

    or-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public checkID3V1([B)Z
    .locals 4

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x1

    const/16 v3, 0x54

    if-ne v1, v3, :cond_0

    aget-byte v1, p1, v2

    const/16 v3, 0x41

    if-ne v1, v3, :cond_0

    const/4 v1, 0x2

    aget-byte p1, p1, v1

    const/16 v1, 0x47

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkID3V2([BI)I
    .locals 5

    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    aget-byte v0, p1, p2

    const/16 v3, 0x49

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    const/16 v3, 0x44

    if-ne v0, v3, :cond_4

    add-int/lit8 v0, p2, 0x2

    aget-byte v0, p1, v0

    const/16 v3, 0x33

    if-eq v0, v3, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->intVersion:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-le v0, v3, :cond_2

    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_2

    iput v4, p0, Lcom/android/utils/scanner/util/ID3Tag;->intExHeaderSize:I

    :cond_2
    add-int/lit8 v0, p2, 0x5

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    :cond_3
    iput-boolean v2, p0, Lcom/android/utils/scanner/util/ID3Tag;->boolID3v2Footer:Z

    add-int/lit8 p2, p2, 0x6

    invoke-static {p1, p2}, Lcom/android/utils/scanner/util/ID3Tag;->synchSafeInt([BI)I

    move-result p1

    add-int/2addr p1, v1

    return p1

    :cond_4
    :goto_0
    return v2
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->intExHeaderSize:I

    iput v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->intVersion:I

    iput-boolean v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->boolID3v2Footer:Z

    return-void
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getGenre()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getYear()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    return-object v0
.end method

.method public parseID3V1([B)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    array-length v0, p1

    const/16 v1, 0x80

    if-lt v0, v1, :cond_e

    invoke-virtual {p0, p1}, Lcom/android/utils/scanner/util/ID3Tag;->checkID3V1([B)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v0, 0x7d

    new-array v1, v0, [B

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p1, v2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x0

    :goto_0
    const/16 v2, 0x1e

    if-ge p1, v2, :cond_1

    aget-byte v4, v1, p1

    if-eqz v4, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    const-string v5, "GBK"

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v3, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v3, 0x0

    if-nez p1, :cond_3

    iput-object v3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    :cond_3
    const/16 p1, 0x1e

    :goto_1
    const/16 v4, 0x3c

    if-ge p1, v4, :cond_4

    aget-byte v6, v1, p1

    if-eqz v6, :cond_4

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    if-nez v6, :cond_5

    new-instance v6, Ljava/lang/String;

    sub-int/2addr p1, v2

    invoke-direct {v6, v1, v2, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    :cond_5
    iget-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_6

    iput-object v3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    :cond_6
    const/16 p1, 0x3c

    :goto_2
    const/16 v2, 0x5a

    if-ge p1, v2, :cond_7

    aget-byte v6, v1, p1

    if-eqz v6, :cond_7

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/String;

    sub-int/2addr p1, v4

    invoke-direct {v6, v1, v4, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    :cond_8
    iget-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_9

    iput-object v3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    :cond_9
    const/16 p1, 0x5a

    :goto_3
    const/16 v4, 0x5e

    if-ge p1, v4, :cond_a

    aget-byte v4, v1, p1

    if-eqz v4, :cond_a

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_a
    iget-object v4, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/String;

    sub-int/2addr p1, v2

    invoke-direct {v4, v1, v2, p1, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    :cond_b
    iget-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_c

    iput-object v3, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    :cond_c
    const/16 p1, 0x7c

    const/16 v2, 0x7c

    :goto_4
    if-ge v2, v0, :cond_d

    aget-byte v3, v1, v2

    if-eqz v3, :cond_d

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    if-nez v0, :cond_e

    aget-byte p1, v1, p1

    invoke-static {p1}, Lcom/android/utils/scanner/util/ID3v1Genres;->matchGenreName(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    :cond_e
    :goto_5
    return-void
.end method

.method public parseID3V2([BI)V
    .locals 4

    array-length v0, p1

    iget v1, p0, Lcom/android/utils/scanner/util/ID3Tag;->intExHeaderSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-static {p1, p2}, Lcom/android/utils/scanner/util/ID3Tag;->synchSafeInt([BI)I

    move-result v1

    iput v1, p0, Lcom/android/utils/scanner/util/ID3Tag;->intExHeaderSize:I

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intExHeaderSize = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/utils/scanner/util/ID3Tag;->intExHeaderSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/utils/scanner/util/ID3Tag;->intExHeaderSize:I

    add-int/2addr p2, v1

    :cond_0
    add-int/lit8 v0, v0, -0xa

    iget-boolean v1, p0, Lcom/android/utils/scanner/util/ID3Tag;->boolID3v2Footer:Z

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, -0xa

    :cond_1
    :goto_0
    if-ltz p2, :cond_2

    if-ge p2, v0, :cond_2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/scanner/util/ID3Tag;->getText([BII)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public printTag()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r        \u6807\u9898: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/scanner/util/ID3Tag;->strTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r      \u827a\u672f\u5bb6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/scanner/util/ID3Tag;->strArtist:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r      \u5531\u7247\u96c6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/scanner/util/ID3Tag;->strAlbum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r      \u53d1\u884c\u5e74: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/scanner/util/ID3Tag;->strYear:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    if-eqz v0, :cond_4

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\r      \u6d41\u6d3e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/scanner/util/ID3Tag;->strGenre:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    return-void
.end method
