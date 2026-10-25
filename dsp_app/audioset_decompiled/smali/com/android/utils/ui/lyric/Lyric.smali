.class public Lcom/android/utils/ui/lyric/Lyric;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static log:Ljava/util/logging/Logger; = null

.field private static final pattern:Ljava/util/regex/Pattern;

.field private static final serialVersionUID:J = 0x13242d5L


# instance fields
.field private currentIndex:I

.field private during:J

.field private enabled:Z

.field private transient file:Ljava/io/File;

.field private height:I

.field private transient info:Lcom/android/utils/ui/lyric/MusicInfo;

.field private initDone:Z

.field private isMoving:Z

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/utils/ui/lyric/Sentence;",
            ">;"
        }
    .end annotation
.end field

.field private offset:I

.field private tempTime:J

.field private time:J

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "Lyric"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/ui/lyric/Lyric;->LOG:Lcom/android/utils/log/JLog;

    const-class v0, Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/utils/ui/lyric/Lyric;->log:Ljava/util/logging/Logger;

    const-string v0, "(?<=\\[).*?(?=\\])"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/utils/ui/lyric/Lyric;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Lcom/android/utils/ui/lyric/Lyric;->during:J

    if-eqz p1, :cond_1

    iget v1, p1, Lcom/android/utils/ui/lyric/MusicInfo;->offset:I

    iput v1, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    iput-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-wide v1, p1, Lcom/android/utils/ui/lyric/MusicInfo;->duration:J

    iput-wide v1, p0, Lcom/android/utils/ui/lyric/Lyric;->during:J

    iget-object v1, p1, Lcom/android/utils/ui/lyric/MusicInfo;->lyricFile:Ljava/io/File;

    iput-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/io/File;)V

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    return-void

    :cond_0
    new-instance v0, Lcom/android/utils/ui/lyric/Lyric$1;

    invoke-direct {v0, p0, p1}, Lcom/android/utils/ui/lyric/Lyric$1;-><init>(Lcom/android/utils/ui/lyric/Lyric;Lcom/android/utils/ui/lyric/MusicInfo;)V

    invoke-virtual {v0}, Lcom/android/utils/ui/lyric/Lyric$1;->start()V

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Lcom/android/utils/ui/lyric/Lyric;->during:J

    iget v1, p2, Lcom/android/utils/ui/lyric/MusicInfo;->offset:I

    iput v1, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    iput-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    iput-object p2, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    invoke-direct {p0, p1}, Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/io/File;)V

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    const-wide/32 v1, 0x7fffffff

    iput-wide v1, p0, Lcom/android/utils/ui/lyric/Lyric;->during:J

    iget v1, p2, Lcom/android/utils/ui/lyric/MusicInfo;->offset:I

    iput v1, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    iput-object p2, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    invoke-direct {p0, p1}, Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/lyric/Lyric;Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/ui/lyric/Lyric;->init(Lcom/android/utils/ui/lyric/MusicInfo;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/utils/ui/lyric/Lyric;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    return p1
.end method

.method private checkTempTime()V
    .locals 5

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    :goto_0
    iput-wide v2, p0, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    goto :goto_1

    :cond_0
    iget-wide v2, p0, Lcom/android/utils/ui/lyric/Lyric;->during:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private drawKaraoke(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;IIJ)V
    .locals 16

    move-object/from16 v6, p2

    move-object/from16 v0, p3

    move-wide/from16 v1, p6

    invoke-virtual {v0, v6}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sget-boolean v4, Lcom/android/utils/ui/lyric/LyricConfig;->isLyricShadow:Z

    if-eqz v4, :cond_0

    sget v4, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    sget v5, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/android/utils/ui/lyric/Sentence;->getBestInColor(IIJ)I

    move-result v4

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    :goto_0
    sget-boolean v5, Lcom/android/utils/ui/lyric/LyricConfig;->isKaraoke:Z

    if-eqz v5, :cond_4

    invoke-virtual/range {p3 .. p3}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v7

    sub-long/2addr v1, v7

    long-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    invoke-virtual/range {p3 .. p3}, Lcom/android/utils/ui/lyric/Sentence;->getToTime()J

    move-result-wide v7

    invoke-virtual/range {p3 .. p3}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-float v2, v7

    div-float/2addr v1, v2

    const v2, 0x3f7ae148    # 0.98f

    cmpl-float v5, v1, v2

    if-lez v5, :cond_1

    const v1, 0x3f7ae148    # 0.98f

    :cond_1
    const/4 v2, 0x1

    if-nez p4, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move/from16 v5, p4

    :goto_1
    if-nez v3, :cond_3

    const/4 v3, 0x1

    :cond_3
    new-instance v15, Landroid/graphics/LinearGradient;

    int-to-float v8, v5

    move/from16 v14, p5

    int-to-float v11, v14

    add-int/2addr v3, v5

    int-to-float v10, v3

    const/4 v3, 0x2

    new-array v12, v3, [I

    const/4 v7, 0x0

    aput v4, v12, v7

    sget v4, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    aput v4, v12, v2

    new-array v13, v3, [F

    aput v1, v13, v7

    const v3, 0x3c23d70a    # 0.01f

    add-float/2addr v1, v3

    aput v1, v13, v2

    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v15

    move v9, v11

    move-object v14, v1

    invoke-direct/range {v7 .. v14}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    move v4, v5

    goto :goto_2

    :cond_4
    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    move/from16 v4, p4

    :goto_2
    invoke-virtual/range {p3 .. p3}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    sget-boolean v0, Lcom/android/utils/ui/lyric/LyricConfig;->isKaraoke:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_5
    return-void
.end method

.method private drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    .locals 0

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    int-to-float p4, p4

    add-int/lit8 p5, p5, 0x0

    int-to-float p5, p5

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTitleString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    .locals 7

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/lit8 v1, v1, 0x14

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    div-int/lit8 v1, v1, 0x14

    :goto_0
    if-lez v1, :cond_3

    const/4 p4, 0x1

    :goto_1
    if-gt p4, v1, :cond_4

    add-int/lit8 v3, p4, -0x1

    mul-int/lit8 v3, v3, 0x14

    if-ne p4, v1, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    :cond_1
    mul-int/lit8 v4, p4, 0x14

    :goto_2
    invoke-virtual {p3, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/utils/ui/lyric/Lyric;->width:I

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    invoke-virtual {p2, v3, v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v5

    float-to-int v5, v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    add-int/lit8 v5, p4, -0x1

    mul-int/lit8 v5, v5, 0x1e

    add-int/2addr v5, p5

    add-int/2addr v5, v0

    int-to-float v5, v5

    invoke-virtual {p1, v3, v4, v5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_3
    int-to-float p4, p4

    add-int/2addr p5, v0

    int-to-float p5, p5

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    return-void
.end method

.method private getBaseSentenceY(Lcom/android/utils/ui/lyric/Sentence;Landroid/graphics/Paint;I)I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result p1

    sub-int/2addr v0, p1

    add-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMathedLyricFile(Ljava/io/File;Lcom/android/utils/ui/lyric/MusicInfo;)Ljava/io/File;
    .locals 4

    new-instance v0, Lcom/android/utils/ui/lyric/Lyric$2;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/lyric/Lyric$2;-><init>(Lcom/android/utils/ui/lyric/Lyric;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-direct {p0, p2, v2}, Lcom/android/utils/ui/lyric/Lyric;->matchAll(Lcom/android/utils/ui/lyric/MusicInfo;Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-direct {p0, p2, v2}, Lcom/android/utils/ui/lyric/Lyric;->matchSongName(Lcom/android/utils/ui/lyric/MusicInfo;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    return-object v2
.end method

.method private getNowSentenceIndex(J)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v1, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->isInTime(J)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I
    .locals 3

    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->lyricAlignMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v2, 0x3

    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {p2, p1}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result p1

    sub-int/2addr v0, p1

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {p2, p1}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private init(Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/utils/ui/lyric/MusicInfo;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/android/utils/ui/lyric/LyricConfig;->searchLyricDirs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/utils/ui/lyric/LyricConfig;->searchLyricDirs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    :goto_0
    if-ltz v1, :cond_2

    sget-object v2, Lcom/android/utils/ui/lyric/LyricConfig;->searchLyricDirs:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/android/utils/ui/lyric/Lyric;->getMathedLyricFile(Ljava/io/File;Lcom/android/utils/ui/lyric/MusicInfo;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    sget-object v1, Lcom/android/utils/ui/lyric/LyricConfig;->searchLyricDirs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v2, p1, Lcom/android/utils/ui/lyric/MusicInfo;->lyricFile:Ljava/io/File;

    iput-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    invoke-direct {p0, v2}, Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/io/File;)V

    goto :goto_2

    :cond_3
    const-string p1, ""

    invoke-direct {p0, p1}, Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private init(Ljava/io/File;)V
    .locals 11

    const-class v0, Lcom/android/utils/ui/lyric/Lyric;

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v4, 0x4

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->mark(I)V

    const/4 v4, 0x3

    new-array v4, v4, [B

    invoke-virtual {v3, v4}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v5, 0x0

    aget-byte v6, v4, v5

    const/16 v7, -0x11

    const/4 v8, 0x1

    if-ne v6, v7, :cond_0

    aget-byte v6, v4, v8

    const/16 v7, -0x45

    if-ne v6, v7, :cond_0

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    const/16 v7, -0x41

    if-ne v6, v7, :cond_0

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-8"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_0
    aget-byte v6, v4, v5

    const/4 v7, -0x2

    const/4 v9, -0x1

    if-ne v6, v9, :cond_1

    aget-byte v6, v4, v8

    if-ne v6, v7, :cond_1

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "unicode"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_1
    aget-byte v6, v4, v5

    if-ne v6, v7, :cond_2

    aget-byte v6, v4, v8

    if-ne v6, v9, :cond_2

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-16be"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_2
    aget-byte v6, v4, v5

    if-ne v6, v9, :cond_3

    aget-byte v6, v4, v8

    if-ne v6, v9, :cond_3

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "utf-16le"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_3
    aget-byte v4, v4, v5

    const/16 v5, 0xa

    if-ne v4, v5, :cond_4

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    const-string v5, "GBK"

    invoke-direct {v4, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :goto_3
    :try_start_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    goto/16 :goto_7

    :catchall_0
    move-exception v4

    move-object v10, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v10

    goto/16 :goto_8

    :catch_2
    move-exception v4

    move-object v10, v2

    move-object v2, p1

    move-object p1, v4

    move-object v4, v3

    move-object v3, v10

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_8

    :catch_3
    move-exception p1

    move-object v4, v3

    move-object v3, v2

    move-object v2, v1

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v4, v1

    move-object v3, v2

    move-object v2, v4

    goto :goto_8

    :catch_4
    move-exception p1

    move-object v4, v1

    move-object v3, v2

    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    goto :goto_8

    :catch_5
    move-exception p1

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    :goto_4
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_5

    :catch_6
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_5
    if-eqz v4, :cond_7

    :try_start_9
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_6

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_7

    :catch_8
    move-exception p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v2, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_7
    return-void

    :catchall_4
    move-exception p1

    :goto_8
    if-eqz v3, :cond_8

    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_9

    :catch_9
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_9
    if-eqz v4, :cond_9

    :try_start_c
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a

    goto :goto_a

    :catch_a
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_a
    :try_start_d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_b

    goto :goto_b

    :catch_b
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v0, v3, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_b
    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c
.end method

.method private init(Ljava/lang/String;)V
    .locals 10

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/utils/ui/lyric/Lyric;->parseLine(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    new-instance v1, Lcom/android/utils/ui/lyric/Lyric$3;

    invoke-direct {v1, p0}, Lcom/android/utils/ui/lyric/Lyric$3;-><init>(Lcom/android/utils/ui/lyric/Lyric;)V

    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    new-instance v7, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v2, v1, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x7fffffff

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {p1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    new-instance v9, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v3, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v4, v3, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    invoke-virtual {p1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v7

    move-object v3, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {v2, v1, v9}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_5

    add-int/lit8 v3, v2, 0x1

    if-ge v3, p1, :cond_3

    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    goto :goto_2

    :cond_3
    move-object v4, v0

    :goto_2
    iget-object v5, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/lyric/Sentence;

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    sub-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/utils/ui/lyric/Sentence;->setToTime(J)V

    :cond_4
    move v2, v3

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-wide/32 v2, 0x7fffffff

    const/4 v4, 0x1

    if-ne p1, v4, :cond_6

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/lyric/Sentence;

    :goto_3
    invoke-virtual {p1, v2, v3}, Lcom/android/utils/ui/lyric/Sentence;->setToTime(J)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-wide v1, v1, Lcom/android/utils/ui/lyric/MusicInfo;->duration:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    add-long/2addr v1, v3

    move-wide v2, v1

    goto :goto_3

    :catch_0
    move-exception p1

    const-class v1, Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v1

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2, v0, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    :cond_8
    :goto_5
    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    new-instance v6, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v1, v0, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    const-wide/32 v2, -0x80000000

    const-wide/32 v4, 0x7fffffff

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private matchAll(Lcom/android/utils/ui/lyric/MusicInfo;Ljava/io/File;)Z
    .locals 2

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, Lcom/android/utils/ui/lyric/MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private matchSongName(Lcom/android/utils/ui/lyric/MusicInfo;Ljava/io/File;)Z
    .locals 3

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p1, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/utils/ui/lyric/MusicInfo;->title:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p1, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-gt v0, v2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/android/utils/ui/lyric/MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    if-le p1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 14

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcom/android/utils/ui/lyric/Lyric;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    const-wide/16 v7, -0x1

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-eq v4, v3, :cond_3

    sub-int v10, v9, v4

    add-int/lit8 v11, v5, 0x2

    if-le v10, v11, :cond_3

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p1, v4, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/utils/ui/lyric/Lyric;->parseTime(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v12, v10, v7

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    new-instance v13, Lcom/android/utils/ui/lyric/Sentence;

    invoke-direct {v13, v4, v10, v11}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;J)V

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    :cond_3
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    move v4, v9

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    :cond_5
    add-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v4

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v5, v1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    :cond_6
    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-boolean v1, Lcom/android/utils/ui/lyric/LyricConfig;->isCutBlankChars:Z

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    if-nez v0, :cond_a

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/utils/ui/lyric/Lyric;->parseOffset(Ljava/lang/String;)I

    move-result v0

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_8

    iput v0, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iput v0, p1, Lcom/android/utils/ui/lyric/MusicInfo;->offset:I

    :cond_9
    return-void

    :cond_a
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/utils/ui/lyric/Lyric;->parseTime(Ljava/lang/String;)J

    move-result-wide v1

    cmp-long v3, v1, v7

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    new-instance v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-direct {v4, p1, v1, v2}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;J)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    :cond_c
    return-void
.end method

.method private parseOffset(Ljava/lang/String;)I
    .locals 3

    const-string v0, "\\:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const v1, 0x7fffffff

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const-string v2, "offset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6574\u4f53\u7684\u504f\u79fb\u91cf\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return p1

    :cond_0
    return v1
.end method

.method private parseTime(Ljava/lang/String;)J
    .locals 11

    const-string v0, "\\:|\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x2

    const-wide/16 v2, -0x1

    if-ge v0, v1, :cond_0

    return-wide v2

    :cond_0
    array-length v0, p1

    const-wide/16 v4, 0x3e8

    const-string v6, "\u6570\u5b57\u4e0d\u5408\u6cd5!"

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/16 v9, 0x3c

    if-ne v0, v1, :cond_3

    :try_start_0
    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    if-nez v0, :cond_1

    aget-object v0, p1, v8

    const-string v1, "offset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iput p1, v0, Lcom/android/utils/ui/lyric/MusicInfo;->offset:I

    sget-object p1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u6574\u4f53\u7684\u504f\u79fb\u91cf\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-wide v2

    :cond_1
    aget-object v0, p1, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v7

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz v0, :cond_2

    if-ltz p1, :cond_2

    if-ge p1, v9, :cond_2

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p1

    int-to-long v0, v0

    mul-long v0, v0, v4

    return-wide v0

    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-wide v2

    :cond_3
    array-length v0, p1

    const/4 v10, 0x3

    if-ne v0, v10, :cond_5

    :try_start_1
    aget-object v0, p1, v8

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz v0, :cond_4

    if-ltz v7, :cond_4

    if-ge v7, v9, :cond_4

    if-ltz p1, :cond_4

    const/16 v1, 0x63

    if-gt p1, v1, :cond_4

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v7

    int-to-long v0, v0

    mul-long v0, v0, v4

    mul-int/lit8 p1, p1, 0xa

    int-to-long v2, p1

    add-long/2addr v0, v2

    return-wide v0

    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_5
    return-wide v2
.end method

.method private saveLyric(Ljava/lang/String;Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".lrc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/utils/ui/lyric/LyricConfig;->saveLyricDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v3, "GBK"

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    iput-object p1, p2, Lcom/android/utils/ui/lyric/MusicInfo;->lyricFile:Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/android/utils/ui/lyric/Lyric;->log:Ljava/util/logging/Logger;

    sget-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v1, "save error"

    invoke-virtual {p2, v0, v1, p1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public adjustTime(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    iget-object p1, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iput v0, p1, Lcom/android/utils/ui/lyric/MusicInfo;->offset:I

    return-void
.end method

.method public canMove()Z
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public declared-synchronized drawH(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, v9, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v2, v9, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v2, v2, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v5, v2, 0x2

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    add-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, v9, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/utils/ui/lyric/Sentence;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v5, v2, 0x2

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v5, v2, 0x2

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    add-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    goto/16 :goto_5

    :cond_2
    iget-wide v7, v9, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    invoke-direct {v9, v7, v8}, Lcom/android/utils/ui/lyric/Lyric;->getNowSentenceIndex(J)I

    move-result v11

    iget-boolean v1, v9, Lcom/android/utils/ui/lyric/Lyric;->isMoving:Z

    if-nez v1, :cond_3

    iput v11, v9, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    :cond_3
    const/4 v1, -0x1

    if-ne v11, v1, :cond_4

    new-instance v1, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v2, v9, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v13, v2, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    const-wide/32 v14, -0x80000000

    const-wide/32 v16, 0x7fffffff

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->H_SPACE:I

    sub-int/2addr v2, v3

    div-int/lit8 v5, v2, 0x2

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    add-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v4, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v1

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->H_SPACE:I

    add-int v12, v1, v2

    iget v1, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v4, v0, v7, v8}, Lcom/android/utils/ui/lyric/Sentence;->getHIncrease(Landroid/graphics/Paint;J)I

    move-result v2

    sub-int v13, v1, v2

    iget v1, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {v4, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v14, v1, 0x2

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v13

    move v6, v14

    invoke-direct/range {v1 .. v8}, Lcom/android/utils/ui/lyric/Lyric;->drawKaraoke(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;IIJ)V

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v7, v11, -0x1

    move v8, v7

    move v1, v13

    :goto_0
    if-ltz v8, :cond_8

    iget-object v2, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v2, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sget v4, Lcom/android/utils/ui/lyric/LyricConfig;->H_SPACE:I

    add-int/2addr v3, v4

    sub-int v15, v1, v3

    add-int/2addr v3, v15

    if-gez v3, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean v1, Lcom/android/utils/ui/lyric/LyricConfig;->isLyricShadow:Z

    if-eqz v1, :cond_7

    if-ne v8, v7, :cond_6

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    iget-wide v4, v9, Lcom/android/utils/ui/lyric/Lyric;->time:J

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/utils/ui/lyric/Sentence;->getBestOutColor(IIJ)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_6
    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v15

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    add-int/lit8 v8, v8, -0x1

    move v1, v15

    goto :goto_0

    :cond_8
    :goto_3
    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v1, Lcom/android/utils/ui/lyric/Lyric;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "\u753b\u51fa\u4e4b\u540e\u7684\u53e5\u5b50"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    add-int/2addr v11, v10

    :goto_4
    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_a

    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/utils/ui/lyric/Sentence;

    add-int/2addr v13, v12

    sget-object v1, Lcom/android/utils/ui/lyric/Lyric;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "\u8fdb\u5165\u5faa\u73af"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget v1, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    if-le v13, v1, :cond_9

    sget-object v0, Lcom/android/utils/ui/lyric/Lyric;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "\u8df3\u51fa\u5faa\u73af"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    sget-object v1, Lcom/android/utils/ui/lyric/Lyric;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "\u987a\u5229\u6267\u884c\u5faa\u73af"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v5, v13

    move v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    invoke-virtual {v7, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v1

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->H_SPACE:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int v12, v1, v2

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public declared-synchronized drawV(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 18

    move-object/from16 v9, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-boolean v1, v9, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v2, v9, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v2, v2, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;)V

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->width:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v5, v2, 0x2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    invoke-direct {v9, v1, v0, v2}, Lcom/android/utils/ui/lyric/Lyric;->getBaseSentenceY(Lcom/android/utils/ui/lyric/Sentence;Landroid/graphics/Paint;I)I

    move-result v6

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-boolean v1, v9, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/utils/ui/lyric/Sentence;

    const-string v3, ""

    invoke-direct {v1, v3}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result v5

    invoke-direct {v9, v1, v0, v2}, Lcom/android/utils/ui/lyric/Lyric;->getBaseSentenceY(Lcom/android/utils/ui/lyric/Sentence;Landroid/graphics/Paint;I)I

    move-result v6

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v3, 0x1e

    const/4 v10, 0x1

    if-ne v1, v10, :cond_2

    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-direct {v9, v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result v5

    invoke-direct {v9, v1, v0, v3}, Lcom/android/utils/ui/lyric/Lyric;->getBaseSentenceY(Lcom/android/utils/ui/lyric/Sentence;Landroid/graphics/Paint;I)I

    move-result v6

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    goto/16 :goto_5

    :cond_2
    iget-wide v7, v9, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    invoke-direct {v9, v7, v8}, Lcom/android/utils/ui/lyric/Lyric;->getNowSentenceIndex(J)I

    move-result v11

    iget-boolean v1, v9, Lcom/android/utils/ui/lyric/Lyric;->isMoving:Z

    if-nez v1, :cond_3

    iput v11, v9, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    :cond_3
    const/4 v1, -0x1

    if-ne v11, v1, :cond_4

    new-instance v1, Lcom/android/utils/ui/lyric/Sentence;

    iget-object v2, v9, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v13, v2, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    const-wide/32 v14, -0x80000000

    const-wide/32 v16, 0x7fffffff

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    invoke-direct {v9, v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result v5

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v6, v2, 0x2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_3
    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-direct {v9, v4, v0, v3}, Lcom/android/utils/ui/lyric/Lyric;->getBaseSentenceY(Lcom/android/utils/ui/lyric/Sentence;Landroid/graphics/Paint;I)I

    move-result v12

    invoke-direct {v9, v0, v4}, Lcom/android/utils/ui/lyric/Lyric;->getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/utils/ui/lyric/Lyric;->drawKaraoke(Landroid/graphics/Canvas;Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;IIJ)V

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/lit8 v7, v11, -0x1

    move v8, v7

    move v1, v12

    :goto_0
    if-ltz v8, :cond_8

    iget-object v2, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/lyric/Sentence;

    invoke-direct {v9, v0, v2}, Lcom/android/utils/ui/lyric/Lyric;->getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result v5

    invoke-virtual {v2, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    sub-int v13, v1, v3

    invoke-virtual {v2, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v1

    add-int/2addr v1, v13

    if-gez v1, :cond_5

    goto :goto_3

    :cond_5
    sget-boolean v1, Lcom/android/utils/ui/lyric/LyricConfig;->isLyricShadow:Z

    if-eqz v1, :cond_7

    if-ne v8, v7, :cond_6

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    sget v3, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    iget-wide v14, v9, Lcom/android/utils/ui/lyric/Lyric;->time:J

    invoke-virtual {v2, v1, v3, v14, v15}, Lcom/android/utils/ui/lyric/Sentence;->getBestOutColor(IIJ)I

    move-result v1

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_6
    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    goto :goto_1

    :cond_7
    :goto_2
    invoke-virtual {v2}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v13

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    add-int/lit8 v8, v8, -0x1

    move v1, v13

    goto :goto_0

    :cond_8
    :goto_3
    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-int/2addr v11, v10

    :goto_4
    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v11, v1, :cond_a

    iget-object v1, v9, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-direct {v9, v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->getSentenceX(Landroid/graphics/Paint;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result v5

    invoke-virtual {v1, v0}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v2

    add-int/2addr v12, v2

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    add-int/2addr v12, v2

    iget v2, v9, Lcom/android/utils/ui/lyric/Lyric;->height:I

    if-le v12, v2, :cond_9

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getContent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v6, v12

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/Lyric;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_7

    :goto_6
    throw v0

    :goto_7
    goto :goto_6
.end method

.method public getLyricFile()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->file:Ljava/io/File;

    return-object v0
.end method

.method public getMaxWidth(Landroid/graphics/Paint;)I
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v2, p1}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMusicInfo()Lcom/android/utils/ui/lyric/MusicInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->info:Lcom/android/utils/ui/lyric/MusicInfo;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    return-wide v0
.end method

.method public isInitDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->initDone:Z

    return v0
.end method

.method public moveH(ILandroid/graphics/Paint;)V
    .locals 8

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_4

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    iget v2, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v2

    iget-wide v3, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getToTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    if-le v0, p1, :cond_1

    invoke-virtual {v1, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeH(ILandroid/graphics/Paint;)J

    move-result-wide p1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v0, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeH(ILandroid/graphics/Paint;)J

    move-result-wide v1

    iget v3, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    :goto_0
    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v4, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v5

    add-int/2addr v5, v0

    if-ge v5, p1, :cond_2

    invoke-virtual {v4}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v6

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    :cond_2
    sub-int/2addr p1, v0

    invoke-virtual {v4, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeH(ILandroid/graphics/Paint;)J

    move-result-wide p1

    add-long/2addr p1, v1

    goto :goto_1

    :cond_3
    move-wide p1, v1

    :goto_1
    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    add-long/2addr v0, p1

    goto :goto_4

    :cond_4
    rsub-int/lit8 p1, p1, 0x0

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    iget v2, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v2

    iget-wide v3, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getToTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v0, v4

    div-float/2addr v3, v0

    int-to-float v0, v2

    mul-float v3, v3, v0

    float-to-int v0, v3

    if-le v0, p1, :cond_5

    invoke-virtual {v1, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeH(ILandroid/graphics/Paint;)J

    move-result-wide p1

    goto :goto_3

    :cond_5
    invoke-virtual {v1, v0, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeH(ILandroid/graphics/Paint;)J

    move-result-wide v1

    iget v3, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    :goto_2
    if-lez v3, :cond_7

    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v4, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result v5

    add-int/2addr v5, v0

    if-ge v5, p1, :cond_6

    invoke-virtual {v4}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v6

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, -0x1

    move v0, v5

    goto :goto_2

    :cond_6
    sub-int/2addr p1, v0

    invoke-virtual {v4, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeH(ILandroid/graphics/Paint;)J

    move-result-wide p1

    add-long/2addr p1, v1

    goto :goto_3

    :cond_7
    move-wide p1, v1

    :goto_3
    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    sub-long/2addr v0, p1

    :goto_4
    iput-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    invoke-direct {p0}, Lcom/android/utils/ui/lyric/Lyric;->checkTempTime()V

    :cond_8
    :goto_5
    return-void
.end method

.method public moveV(ILandroid/graphics/Paint;)V
    .locals 8

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-lez p1, :cond_6

    iget v1, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    iget-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    iget v1, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    if-gez v1, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v2

    iget-wide v3, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getToTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    int-to-float v2, v2

    mul-float v0, v0, v2

    float-to-int v0, v0

    if-le v0, p1, :cond_2

    invoke-virtual {v1, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeV(ILandroid/graphics/Paint;)J

    move-result-wide p1

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeV(ILandroid/graphics/Paint;)J

    move-result-wide v1

    iget v3, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    :goto_0
    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v4, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v5

    add-int/2addr v5, v0

    if-ge v5, p1, :cond_3

    invoke-virtual {v4}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v6

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    :cond_3
    sub-int/2addr p1, v0

    invoke-virtual {v4, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeV(ILandroid/graphics/Paint;)J

    move-result-wide p1

    add-long/2addr p1, v1

    goto :goto_1

    :cond_4
    move-wide p1, v1

    :goto_1
    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    add-long/2addr v0, p1

    goto :goto_5

    :cond_5
    :goto_2
    return-void

    :cond_6
    rsub-int/lit8 p1, p1, 0x0

    iget v1, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    iget-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    iget v1, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    if-gez v1, :cond_7

    goto :goto_6

    :cond_7
    iget-object v2, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v2

    iget-wide v3, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-float v3, v3

    mul-float v3, v3, v0

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getToTime()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-float v0, v4

    div-float/2addr v3, v0

    int-to-float v0, v2

    mul-float v3, v3, v0

    float-to-int v0, v3

    if-le v0, p1, :cond_8

    invoke-virtual {v1, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeV(ILandroid/graphics/Paint;)J

    move-result-wide p1

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v0, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeV(ILandroid/graphics/Paint;)J

    move-result-wide v1

    iget v3, p0, Lcom/android/utils/ui/lyric/Lyric;->currentIndex:I

    :goto_3
    if-lez v3, :cond_a

    iget-object v4, p0, Lcom/android/utils/ui/lyric/Lyric;->list:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {v4, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result v5

    add-int/2addr v5, v0

    if-ge v5, p1, :cond_9

    invoke-virtual {v4}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v6

    add-long/2addr v1, v6

    add-int/lit8 v3, v3, -0x1

    move v0, v5

    goto :goto_3

    :cond_9
    sub-int/2addr p1, v0

    invoke-virtual {v4, p1, p2}, Lcom/android/utils/ui/lyric/Sentence;->getTimeV(ILandroid/graphics/Paint;)J

    move-result-wide p1

    add-long/2addr p1, v1

    goto :goto_4

    :cond_a
    move-wide p1, v1

    :goto_4
    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    sub-long/2addr v0, p1

    :goto_5
    iput-wide v0, p0, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    invoke-direct {p0}, Lcom/android/utils/ui/lyric/Lyric;->checkTempTime()V

    :cond_b
    :goto_6
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/Lyric;->enabled:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/lyric/Lyric;->height:I

    return-void
.end method

.method public setTime(J)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->isMoving:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/utils/ui/lyric/Lyric;->offset:I

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/android/utils/ui/lyric/Lyric;->time:J

    iput-wide p1, p0, Lcom/android/utils/ui/lyric/Lyric;->tempTime:J

    :cond_0
    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/lyric/Lyric;->width:I

    return-void
.end method

.method public startMove()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->isMoving:Z

    return-void
.end method

.method public stopMove()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/Lyric;->isMoving:Z

    return-void
.end method
