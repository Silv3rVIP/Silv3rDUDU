.class public Lcom/nwd/audioset/view/nwdview/Knob;
.super Landroid/view/View;
.source "Knob.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;,
        Lcom/nwd/audioset/view/nwdview/Knob$NoBitMapError;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final MAX_SWEEP_ANGLE:F = 270.0f

.field private static final START_ANGLE:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "Knob"


# instance fields
.field private arrow:Landroid/graphics/Bitmap;

.field private centerX:F

.field private centerY:F

.field currentProgress:I

.field private current_degree:F

.field private deta_degree:F

.field private down_x:F

.field private down_y:F

.field private goalStep:I

.field private height:I

.field private mContext:Landroid/content/Context;

.field private mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

.field private maxProgress:I

.field private maxwidth:D

.field private oldDegree:F

.field private paint:Landroid/graphics/Paint;

.field private ring:Landroid/graphics/Bitmap;

.field private target_x:F

.field private target_y:F

.field up_degree:F

.field private up_x:F

.field private up_y:F

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 25
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "Knob"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/audioset/view/nwdview/Knob;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 161
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->paint:Landroid/graphics/Paint;

    const/16 p1, 0x14

    .line 199
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxProgress:I

    const/4 p1, -0x1

    .line 205
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->currentProgress:I

    return-void
.end method

.method private addDegree(F)V
    .locals 2

    .line 115
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    const/high16 p1, 0x43870000    # 270.0f

    cmpl-float v1, v0, p1

    if-lez v1, :cond_0

    .line 117
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 119
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    .line 121
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 122
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    invoke-interface {p1, p0, v0, v1}, Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;->onProgressChanged(Lcom/nwd/audioset/view/nwdview/Knob;ZI)V

    :cond_2
    return-void
.end method

.method private detaDegree(FFFF)F
    .locals 2

    sub-float/2addr p3, p1

    sub-float/2addr p4, p2

    const-wide p1, 0x400921fb54442d18L    # Math.PI

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-eqz v1, :cond_3

    div-float v1, p4, p3

    .line 324
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float p3, p3, v0

    if-lez p3, :cond_1

    cmpl-float p3, p4, v0

    if-ltz p3, :cond_0

    float-to-double p3, v1

    .line 328
    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    goto :goto_0

    :cond_0
    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v0, v1

    .line 331
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    sub-double/2addr p3, v0

    goto :goto_0

    :cond_1
    cmpl-float p3, p4, v0

    if-ltz p3, :cond_2

    float-to-double p3, v1

    .line 335
    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    sub-double p3, p1, p3

    goto :goto_0

    :cond_2
    float-to-double p3, v1

    .line 337
    invoke-static {p3, p4}, Ljava/lang/Math;->atan(D)D

    move-result-wide p3

    add-double/2addr p3, p1

    goto :goto_0

    :cond_3
    cmpl-float p3, p4, v0

    if-lez p3, :cond_4

    const-wide p3, 0x3ff921fb54442d18L    # 1.5707963267948966

    goto :goto_0

    :cond_4
    const-wide p3, -0x4006de04abbbd2e8L    # -1.5707963267948966

    :goto_0
    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p3, p3, v0

    div-double/2addr p3, p1

    double-to-float p1, p3

    return p1
.end method

.method private getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 3

    .line 446
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    int-to-float p2, p2

    .line 452
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p2, v2

    int-to-float p3, p3

    .line 453
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr p3, v2

    .line 456
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 457
    invoke-virtual {v2, p2, p3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 458
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v1, p1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 461
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v0
.end method

.method private initSize()V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    mul-int v0, v0, v0

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    mul-int v1, v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxwidth:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 105
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerY:F

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerX:F

    return-void
.end method

.method private requestDisallowInterceptTouchEvent()V
    .locals 2

    .line 299
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 301
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private transformDegree(F)F
    .locals 4

    const/high16 v0, 0x41200000    # 10.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p1, v0

    .line 356
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x3ff3333333333333L    # 1.2

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method public getGoalStep()I
    .locals 1

    .line 373
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    return v0
.end method

.method public getProgress()I
    .locals 3

    .line 225
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxProgress:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/high16 v2, 0x43870000    # 270.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 226
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/nwdview/Knob;->transformDegree(F)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    return v1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 384
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 385
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 387
    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 130
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 132
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 135
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 137
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    int-to-float v1, v1

    neg-float v1, v1

    div-float/2addr v1, v2

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    int-to-float v3, v3

    neg-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 140
    iget-wide v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxwidth:D

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    int-to-double v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v3, v5

    double-to-float v1, v5

    div-float/2addr v1, v2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v5

    double-to-float v3, v3

    div-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 142
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->paint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 144
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 146
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 148
    iget-wide v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxwidth:D

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    int-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    sub-double v5, v3, v5

    double-to-float v5, v5

    div-float/2addr v5, v2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr v3, v6

    double-to-float v3, v3

    div-float/2addr v3, v2

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 151
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->arrow:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_1

    .line 153
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getProgress()I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    .line 158
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 166
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 168
    iget-wide p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxwidth:D

    double-to-int v0, p1

    double-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/nwd/audioset/view/nwdview/Knob;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    goto/16 :goto_1

    .line 254
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->target_x:F

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->down_x:F

    .line 255
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->target_y:F

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->down_y:F

    .line 257
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerX:F

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerY:F

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->target_x:F

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/nwd/audioset/view/nwdview/Knob;->detaDegree(FFFF)F

    move-result p1

    .line 259
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->oldDegree:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    .line 265
    :cond_1
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->current_degree:F

    sub-float v0, p1, v0

    .line 266
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/nwdview/Knob;->transformDegree(F)F

    move-result v0

    const/high16 v2, -0x3c790000    # -270.0f

    const/high16 v3, 0x43b40000    # 360.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_2

    add-float/2addr v0, v3

    goto :goto_0

    :cond_2
    const/high16 v2, 0x43870000    # 270.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_3

    sub-float/2addr v0, v3

    .line 274
    :cond_3
    :goto_0
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/nwdview/Knob;->addDegree(F)V

    .line 275
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/Knob;->transformDegree(F)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->current_degree:F

    .line 276
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->oldDegree:F

    .line 277
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->postInvalidate()V

    goto/16 :goto_1

    .line 283
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->up_x:F

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->up_y:F

    .line 285
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerX:F

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerY:F

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->up_x:F

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/nwd/audioset/view/nwdview/Knob;->detaDegree(FFFF)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->current_degree:F

    .line 286
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/Knob;->transformDegree(F)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->current_degree:F

    .line 287
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    if-eqz p1, :cond_6

    .line 288
    sget-object p1, Lcom/nwd/audioset/view/nwdview/Knob;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_UP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    .line 289
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    invoke-interface {p1, p0, v0}, Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;->onStopTrackingTouch(Lcom/nwd/audioset/view/nwdview/Knob;I)V

    goto :goto_1

    .line 239
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->down_x:F

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->down_y:F

    .line 241
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerX:F

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->centerY:F

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/Knob;->down_x:F

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/nwd/audioset/view/nwdview/Knob;->detaDegree(FFFF)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->current_degree:F

    .line 247
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    if-eqz p1, :cond_6

    .line 248
    sget-object p1, Lcom/nwd/audioset/view/nwdview/Knob;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_DOWN="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    .line 249
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    invoke-interface {p1, p0, v0}, Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;->onStartTrackingTouch(Lcom/nwd/audioset/view/nwdview/Knob;I)V

    .line 294
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->requestDisallowInterceptTouchEvent()V

    return v1
.end method

.method public setGoalStep(I)V
    .locals 3

    .line 377
    sget-object v0, Lcom/nwd/audioset/view/nwdview/Knob;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGoalStep="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    .line 378
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->goalStep:I

    int-to-float p1, p1

    const/high16 v0, 0x43870000    # 270.0f

    mul-float p1, p1, v0

    .line 379
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxProgress:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    return-void
.end method

.method public setMaxProgress(I)V
    .locals 0

    .line 202
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxProgress:I

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    if-gez p1, :cond_0

    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->currentProgress:I

    int-to-float v0, p1

    const/high16 v1, 0x43870000    # 270.0f

    mul-float v0, v0, v1

    .line 211
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->maxProgress:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 212
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 214
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 215
    invoke-interface {v1, p0, v2, p1}, Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;->onProgressChanged(Lcom/nwd/audioset/view/nwdview/Knob;ZI)V

    .line 217
    :cond_1
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/nwdview/Knob;->transformDegree(F)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->deta_degree:F

    .line 218
    sget-object p1, Lcom/nwd/audioset/view/nwdview/Knob;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "setProgress123="

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->postInvalidate()V

    return-void
.end method

.method public setProgressChangeListener(Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->mProListener:Lcom/nwd/audioset/view/nwdview/Knob$OnProgressChangeListener;

    return-void
.end method

.method public setRotatDrawable(Landroid/content/Context;II)V
    .locals 3

    .line 62
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->arrow:Landroid/graphics/Bitmap;

    .line 65
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 66
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    const/16 v2, 0x500

    if-gt v1, v2, :cond_0

    const/16 v1, 0x1e0

    if-gt v0, v1, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    .line 70
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p1}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v0, :cond_1

    .line 73
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    .line 74
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070249

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    .line 77
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070247

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    .line 80
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    .line 81
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->arrow:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I

    invoke-direct {p0, v0, v1, v2}, Lcom/nwd/audioset/view/nwdview/Knob;->getBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/Knob;->arrow:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 84
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-static {p1, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->arrow:Landroid/graphics/Bitmap;

    .line 86
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->width:I

    .line 87
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->ring:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/Knob;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 89
    :catch_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 92
    :goto_1
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->initSize()V

    .line 93
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/Knob;->postInvalidate()V

    return-void
.end method
