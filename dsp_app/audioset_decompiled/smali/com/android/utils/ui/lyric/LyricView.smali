.class public Lcom/android/utils/ui/lyric/LyricView;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;
    }
.end annotation


# instance fields
.field private end:I

.field private isDrag:Z

.field private isLoop:Z

.field private isPress:Z

.field private isResized:Z

.field private final lock:Ljava/lang/Object;

.field private mLyric:Lcom/android/utils/ui/lyric/Lyric;

.field private mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

.field private mPaint:Landroid/graphics/Paint;

.field private mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

.field private pause:Z

.field private start:I

.field private state:I

.field private tempTextRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->pause:Z

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isResized:Z

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    iput p1, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->lock:Ljava/lang/Object;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/android/utils/ui/lyric/LyricView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->pause:Z

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isResized:Z

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    iput p1, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/utils/ui/lyric/LyricView;->lock:Ljava/lang/Object;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    invoke-direct {p0}, Lcom/android/utils/ui/lyric/LyricView;->init()V

    return-void
.end method

.method private drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V
    .locals 1

    invoke-virtual {p2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    int-to-float p4, p4

    add-int/2addr p5, v0

    int-to-float p5, p5

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTimeH(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 11

    invoke-direct {p0, p2}, Lcom/android/utils/ui/lyric/LyricView;->secondToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getWidth()I

    move-result p2

    div-int/lit8 v4, p2, 0x2

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getHeight()I

    move-result p2

    add-int/lit8 v0, v4, -0x5

    int-to-float v0, v0

    add-int/lit8 v1, v4, 0x5

    int-to-float v1, v1

    const/high16 v7, 0x40400000    # 3.0f

    const/high16 v9, 0x40400000    # 3.0f

    move-object v5, p1

    move v6, v0

    move v8, v1

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v2, p2, -0x3

    int-to-float v2, v2

    move v7, v2

    move v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v8, v4

    const/high16 v7, 0x40400000    # 3.0f

    move v6, v8

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-direct {p0, v0, v1}, Lcom/android/utils/ui/lyric/LyricView;->getColor(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, v3, p3}, Lcom/android/utils/ui/lyric/LyricView;->getStringHeight(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    sub-int v5, p2, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/lyric/LyricView;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    return-void
.end method

.method private drawTimeV(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V
    .locals 11

    invoke-direct {p0, p2}, Lcom/android/utils/ui/lyric/LyricView;->secondToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, -0x5

    int-to-float v1, v1

    add-int/lit8 v2, v0, 0x5

    int-to-float v2, v2

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v7, 0x40400000    # 3.0f

    move-object v4, p1

    move v6, v1

    move v8, v2

    move-object v9, p3

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v4, p2, -0x3

    int-to-float v10, v4

    move-object v4, p1

    move v5, v10

    move v7, v10

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    int-to-float v9, v0

    const/high16 v6, 0x40400000    # 3.0f

    move-object v5, p1

    move v7, v9

    move v8, v10

    move-object v10, p3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    sget v2, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-direct {p0, v1, v2}, Lcom/android/utils/ui/lyric/LyricView;->getColor(II)I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-direct {p0, v3, p3}, Lcom/android/utils/ui/lyric/LyricView;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    sub-int v4, p2, v1

    invoke-direct {p0, v3, p3}, Lcom/android/utils/ui/lyric/LyricView;->getStringHeight(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result p2

    sub-int v5, v0, p2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/lyric/LyricView;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    return-void
.end method

.method private getColor(II)I
    .locals 3

    invoke-static {p2}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {p2}, Landroid/graphics/Color;->blue(I)I

    move-result p2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    add-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-static {v0, v1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    return p1
.end method

.method private getStringHeight(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p2, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    return p1
.end method

.method private getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v2, v0, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    iget-object p2, p0, Lcom/android/utils/ui/lyric/LyricView;->tempTextRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    return p1
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->textSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private secondToString(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p1, 0x3c

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0x3c

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget-boolean v0, Lcom/android/utils/ui/lyric/LyricConfig;->isTransparency:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->lyricBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    :goto_0
    sget-boolean v0, Lcom/android/utils/ui/lyric/LyricConfig;->isAntiAliasing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    :cond_1
    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->layoutState:I

    iput v0, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    iget-object v2, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    if-eqz v2, :cond_6

    iget-boolean v3, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    if-eqz v3, :cond_3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->start:I

    iget v3, p0, Lcom/android/utils/ui/lyric/LyricView;->end:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Lcom/android/utils/ui/lyric/Lyric;->moveH(ILandroid/graphics/Paint;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->start:I

    iget v3, p0, Lcom/android/utils/ui/lyric/LyricView;->end:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0, v3}, Lcom/android/utils/ui/lyric/Lyric;->moveV(ILandroid/graphics/Paint;)V

    :cond_3
    :goto_1
    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    iget-object v2, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lcom/android/utils/ui/lyric/Lyric;->drawH(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    iget-object v2, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v2}, Lcom/android/utils/ui/lyric/Lyric;->drawV(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    const-wide/16 v2, 0x3e8

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {v0}, Lcom/android/utils/ui/lyric/Lyric;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/utils/ui/lyric/LyricView;->drawTimeH(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {v0}, Lcom/android/utils/ui/lyric/Lyric;->getTime()J

    move-result-wide v0

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/utils/ui/lyric/LyricView;->drawTimeV(Landroid/graphics/Canvas;ILandroid/graphics/Paint;)V

    goto :goto_4

    :cond_6
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-interface {v0}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->getTrackName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    :goto_3
    move-object v4, v0

    if-eqz v4, :cond_7

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v0}, Lcom/android/utils/ui/lyric/LyricView;->getStringWidth(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v0

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v4, v1}, Lcom/android/utils/ui/lyric/LyricView;->getStringHeight(Ljava/lang/String;Landroid/graphics/Paint;)I

    move-result v1

    iget-object v3, p0, Lcom/android/utils/ui/lyric/LyricView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v5, v2, 0x2

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v1

    div-int/lit8 v6, v0, 0x2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/lyric/LyricView;->drawString(Landroid/graphics/Canvas;Landroid/graphics/Paint;Ljava/lang/String;II)V

    :cond_7
    :goto_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    if-eq v0, v2, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/utils/ui/lyric/Lyric;->canMove()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    if-eqz v0, :cond_2

    iput-boolean v2, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_0
    float-to-int p1, p1

    iput p1, p0, Lcom/android/utils/ui/lyric/LyricView;->end:I

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/utils/ui/lyric/Lyric;->canMove()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_1
    float-to-int p1, p1

    iput p1, p0, Lcom/android/utils/ui/lyric/LyricView;->end:I

    iget-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {p1}, Lcom/android/utils/ui/lyric/Lyric;->getTime()J

    move-result-wide v3

    :try_start_0
    iget-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    invoke-interface {p1, v3, v4}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->seek(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    iput v1, p0, Lcom/android/utils/ui/lyric/LyricView;->end:I

    iput v1, p0, Lcom/android/utils/ui/lyric/LyricView;->start:I

    :cond_5
    iget-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {p1}, Lcom/android/utils/ui/lyric/Lyric;->stopMove()V

    :cond_6
    iput-boolean v1, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    iput-boolean v1, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/utils/ui/lyric/Lyric;->canMove()Z

    move-result v0

    if-eqz v0, :cond_9

    iput-boolean v2, p0, Lcom/android/utils/ui/lyric/LyricView;->isPress:Z

    iput-boolean v1, p0, Lcom/android/utils/ui/lyric/LyricView;->isDrag:Z

    iget v0, p0, Lcom/android/utils/ui/lyric/LyricView;->state:I

    if-nez v0, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    :goto_3
    float-to-int p1, p1

    iput p1, p0, Lcom/android/utils/ui/lyric/LyricView;->start:I

    iget-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {p1}, Lcom/android/utils/ui/lyric/Lyric;->startMove()V

    :cond_9
    return v2
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->pause:Z

    return-void
.end method

.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    if-eqz v0, :cond_4

    :try_start_1
    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->refreshInterval:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    iget-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->pause:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->lock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1

    :cond_1
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->setHeight(I)V

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->setWidth(I)V

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    invoke-interface {v0}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->getTrackName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, ""

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    invoke-interface {v1}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v0, v0, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    invoke-interface {v1}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->getTrackName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v0, v0, Lcom/android/utils/ui/lyric/MusicInfo;->title:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    invoke-interface {v2}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    invoke-interface {v1}, Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;->position()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/utils/ui/lyric/Lyric;->setTime(J)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/LyricView;->postInvalidate()V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v0, v0, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    iget-object v1, v1, Lcom/android/utils/ui/lyric/MusicInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-nez v0, :cond_0

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public setLyric(Lcom/android/utils/ui/lyric/Lyric;)V
    .locals 1

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mLyric:Lcom/android/utils/ui/lyric/Lyric;

    invoke-virtual {p1}, Lcom/android/utils/ui/lyric/Lyric;->getMusicInfo()Lcom/android/utils/ui/lyric/MusicInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mMusicInfo:Lcom/android/utils/ui/lyric/MusicInfo;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isResized:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setPlayMusicService(Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/lyric/LyricView;->mPlayMusicService:Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;

    return-void
.end method

.method public start()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->pause:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    iget-object v0, p0, Lcom/android/utils/ui/lyric/LyricView;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/utils/ui/lyric/LyricView;->lock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/lyric/LyricView;->isLoop:Z

    return-void
.end method
