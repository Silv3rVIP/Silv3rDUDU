.class public Lcom/android/utils/ui/lyric/Sentence;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final DISAPPEAR_TIME:J = 0x3e8L

.field private static final serialVersionUID:J = 0x13242d5L


# instance fields
.field private content:Ljava/lang/String;

.field private fromTime:J

.field private toTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/utils/ui/lyric/Sentence;-><init>(Ljava/lang/String;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/lyric/Sentence;->content:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    iput-wide p4, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    return-void
.end method

.method public static getGradientColor(IIF)I
    .locals 3

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    sub-int/2addr p1, v2

    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v0, v0

    mul-float v0, v0, p2

    add-float/2addr v2, v0

    float-to-int v0, v2

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    int-to-float v2, v2

    int-to-float v1, v1

    mul-float v1, v1, p2

    add-float/2addr v2, v1

    float-to-int v1, v2

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    int-to-float p0, p0

    int-to-float p1, p1

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    float-to-int p0, p0

    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getBestInColor(IIJ)I
    .locals 7

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    sub-long v0, p3, v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v2

    long-to-float v2, v2

    div-float/2addr v0, v2

    const v2, 0x3dcccccd    # 0.1f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    sub-long/2addr p3, v5

    long-to-float p3, p3

    mul-float p3, p3, v1

    long-to-float p4, v3

    mul-float p4, p4, v2

    div-float/2addr p3, p4

    cmpl-float p4, p3, v1

    if-gtz p4, :cond_2

    const/4 p4, 0x0

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p2, p1, p3}, Lcom/android/utils/ui/lyric/Sentence;->getGradientColor(IIF)I

    move-result p1

    :cond_2
    :goto_0
    return p1
.end method

.method public getBestOutColor(IIJ)I
    .locals 2

    invoke-virtual {p0, p3, p4}, Lcom/android/utils/ui/lyric/Sentence;->isInTime(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    :cond_0
    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    sub-long/2addr p3, v0

    long-to-float p3, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float p3, p3, p4

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p3, v0

    cmpl-float p4, p3, p4

    if-gtz p4, :cond_2

    const/4 p4, 0x0

    cmpg-float p4, p3, p4

    if-gtz p4, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lcom/android/utils/ui/lyric/Sentence;->getGradientColor(IIF)I

    move-result p1

    return p1

    :cond_2
    :goto_0
    return p2
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Sentence;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getContentHeight(Landroid/graphics/Paint;)I
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v0, p1

    sget p1, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1
.end method

.method public getContentWidth(Landroid/graphics/Paint;)I
    .locals 4

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Sentence;->content:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Sentence;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v0, v1, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result p1

    float-to-int p1, p1

    return p1

    :cond_0
    return v1
.end method

.method public getDuring()J
    .locals 4

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    iget-wide v2, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getFromTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    return-wide v0
.end method

.method public getHIncrease(Landroid/graphics/Paint;J)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result p1

    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->H_SPACE:I

    add-int/2addr p1, v0

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    sub-long/2addr p2, v2

    long-to-double p1, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v4

    iget-wide v4, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public getTimeH(ILandroid/graphics/Paint;)J
    .locals 4

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentWidth(Landroid/graphics/Paint;)I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public getTimeV(ILandroid/graphics/Paint;)J
    .locals 4

    invoke-virtual {p0}, Lcom/android/utils/ui/lyric/Sentence;->getDuring()J

    move-result-wide v0

    int-to-long v2, p1

    mul-long v0, v0, v2

    invoke-virtual {p0, p2}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result p1

    int-to-long p1, p1

    div-long/2addr v0, p1

    return-wide v0
.end method

.method public getToTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    return-wide v0
.end method

.method public getVIncrease(Landroid/graphics/Paint;J)I
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/lyric/Sentence;->getContentHeight(Landroid/graphics/Paint;)I

    move-result p1

    sget v0, Lcom/android/utils/ui/lyric/LyricConfig;->V_SPACE:I

    add-int/2addr p1, v0

    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    sub-long/2addr p2, v2

    long-to-double p1, p2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double p1, p1, v4

    iget-wide v4, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    sub-long/2addr v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p1, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, p1

    double-to-int p1, v0

    return p1
.end method

.method public isInTime(J)Z
    .locals 3

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    iget-wide v0, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setFromTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    return-void
.end method

.method public setToTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/utils/ui/lyric/Sentence;->fromTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Sentence;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/utils/ui/lyric/Sentence;->toTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
