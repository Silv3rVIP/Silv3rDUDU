.class public Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;
.super Landroid/view/View;
.source "DoubleSeekbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DoubleSeekbar"


# instance fields
.field XCenter:F

.field direction:Z

.field isLeftMove:Z

.field isRightMove:Z

.field mBitmapPaint:Landroid/graphics/Paint;

.field mHeight:I

.field private mLeftBitmap:Landroid/graphics/Bitmap;

.field mLeftX:I

.field private mPressBG:Landroid/graphics/Bitmap;

.field private mRightBitmap:Landroid/graphics/Bitmap;

.field mRightX:I

.field mWidth:I

.field maxValue:F

.field minValue:F

.field private onDataChangeListener:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;

.field private tempMax:F

.field private tempMin:F

.field private xDown:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 33
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->XCenter:F

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isRightMove:Z

    .line 35
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isLeftMove:Z

    .line 36
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->direction:Z

    .line 53
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mBitmapPaint:Landroid/graphics/Paint;

    .line 59
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00d3

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftBitmap:Landroid/graphics/Bitmap;

    .line 61
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightBitmap:Landroid/graphics/Bitmap;

    .line 62
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d009e

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mPressBG:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->minValue:F

    const/high16 v0, 0x41f80000    # 31.0f

    .line 64
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->maxValue:F

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 69
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 70
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mBitmapPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 71
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mPressBG:Landroid/graphics/Bitmap;

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    add-int/lit8 v4, v4, 0x3

    add-int/2addr v4, v1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    add-int/lit8 v2, v1, -0x3

    if-lt v0, v2, :cond_1

    add-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    .line 77
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightBitmap:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    sub-int/2addr p1, v0

    add-int/lit8 p1, p1, 0x3

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    int-to-float v0, v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->XCenter:F

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 98
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 99
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    .line 100
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mHeight:I

    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    .line 102
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    add-int/lit8 p2, p1, -0x3

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    .line 103
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->maxValue:F

    int-to-float p3, p1

    mul-float p2, p2, p3

    const/high16 p3, 0x41f80000    # 31.0f

    div-float/2addr p2, p3

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->tempMax:F

    .line 104
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->minValue:F

    int-to-float p1, p1

    mul-float p2, p2, p1

    div-float/2addr p2, p3

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->tempMin:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 111
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    if-eq v0, v2, :cond_b

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto/16 :goto_5

    .line 122
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 130
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->direction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 131
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isLeftMove:Z

    if-nez v0, :cond_4

    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 134
    :cond_1
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->tempMax:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_2

    move p1, v0

    .line 138
    :cond_2
    :goto_0
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_3

    float-to-int p1, p1

    .line 139
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    goto :goto_1

    :cond_3
    add-int/2addr v0, v2

    .line 141
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    .line 144
    :cond_4
    :goto_1
    iput-boolean v2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isRightMove:Z

    goto :goto_4

    .line 146
    :cond_5
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isRightMove:Z

    if-nez v0, :cond_9

    cmpg-float v0, p1, v1

    if-gez v0, :cond_6

    const/4 p1, 0x0

    goto :goto_2

    .line 149
    :cond_6
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->tempMax:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_7

    move p1, v0

    .line 153
    :cond_7
    :goto_2
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    int-to-float v1, v0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_8

    float-to-int p1, p1

    .line 154
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    goto :goto_3

    :cond_8
    sub-int/2addr v0, v2

    .line 156
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    .line 159
    :cond_9
    :goto_3
    iput-boolean v2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isLeftMove:Z

    .line 162
    :goto_4
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->onDataChangeListener:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;

    if-eqz p1, :cond_a

    .line 163
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    div-int/2addr v0, v1

    .line 168
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x1f

    div-int/2addr v3, v1

    invoke-interface {p1, v3, v0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;->onDataChange(II)V

    .line 170
    :cond_a
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->invalidate()V

    goto :goto_5

    .line 173
    :cond_b
    iput-boolean v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isRightMove:Z

    .line 174
    iput-boolean v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->isLeftMove:Z

    .line 175
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->onDataChangeListener:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;

    if-eqz p1, :cond_e

    .line 177
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    add-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    div-int/2addr v0, v1

    .line 181
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v3, v3, 0x1f

    div-int/2addr v3, v1

    invoke-interface {p1, v3, v0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;->onStopChange(II)V

    goto :goto_5

    .line 113
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->xDown:F

    .line 114
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->XCenter:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_d

    .line 115
    iput-boolean v2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->direction:Z

    goto :goto_5

    .line 117
    :cond_d
    iput-boolean v1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->direction:Z

    :cond_e
    :goto_5
    return v2
.end method

.method public performClick()Z
    .locals 1

    .line 191
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setData(II)V
    .locals 1

    .line 83
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    mul-int p1, p1, v0

    div-int/lit8 p1, p1, 0x1f

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mLeftX:I

    mul-int p2, p2, v0

    .line 84
    div-int/lit8 p2, p2, 0x1f

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mRightX:I

    .line 85
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->invalidate()V

    return-void
.end method

.method public setMaxValue(FF)V
    .locals 2

    .line 90
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->minValue:F

    .line 91
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->maxValue:F

    .line 92
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->mWidth:I

    int-to-float v1, v0

    mul-float p2, p2, v1

    const/high16 v1, 0x41f80000    # 31.0f

    div-float/2addr p2, v1

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->tempMax:F

    int-to-float p2, v0

    mul-float p1, p1, p2

    div-float/2addr p1, v1

    .line 93
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->tempMin:F

    return-void
.end method

.method public setOnDataChangeListener(Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->onDataChangeListener:Lcom/nwd/audioset/view/nwdview/DoubleSeekbar$OnDataChangeListener;

    return-void
.end method
