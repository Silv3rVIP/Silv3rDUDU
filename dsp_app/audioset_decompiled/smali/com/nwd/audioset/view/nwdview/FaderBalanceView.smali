.class public Lcom/nwd/audioset/view/nwdview/FaderBalanceView;
.super Landroid/view/View;
.source "FaderBalanceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FaderBalanceView"


# instance fields
.field private bitmapHeight:I

.field private bitmapWidth:I

.field dropX:F

.field dropY:F

.field mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapPress:Landroid/graphics/Bitmap;

.field mHeight:I

.field mWidth:I

.field maxValueX:I

.field maxValueY:I

.field private onBallMovListener:Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;

.field private xMoveGrid:F

.field private xMoveGridInt:I

.field private xOneSize:F

.field private yMoveGrid:F

.field private yMoveGridInt:I

.field private yOneSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0xe

    .line 51
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->maxValueX:I

    .line 52
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->maxValueY:I

    const/4 p1, 0x0

    .line 54
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropX:F

    .line 55
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    .line 67
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 93
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 94
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00e8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mBitmapPress:Landroid/graphics/Bitmap;

    .line 95
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapWidth:I

    .line 98
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapHeight:I

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 108
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mBitmapPress:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xOneSize:F

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xMoveGridInt:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yOneSize:F

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGridInt:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 114
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 116
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mWidth:I

    .line 117
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mHeight:I

    .line 120
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mWidth:I

    iget p3, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapWidth:I

    sub-int/2addr p2, p3

    int-to-float p2, p2

    iget p3, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->maxValueX:I

    int-to-float p3, p3

    div-float/2addr p2, p3

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xOneSize:F

    .line 121
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapHeight:I

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iget p2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->maxValueY:I

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yOneSize:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 135
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 142
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapWidth:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropX:F

    .line 143
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float/2addr p1, v2

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    const/4 p1, 0x0

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 147
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropX:F

    .line 149
    :cond_1
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    cmpg-float v0, v0, p1

    if-gez v0, :cond_2

    .line 150
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    .line 154
    :cond_2
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropX:F

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mWidth:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapWidth:I

    sub-int v3, v0, v2

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    sub-int/2addr v0, v2

    int-to-float p1, v0

    .line 155
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropX:F

    .line 157
    :cond_3
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->mHeight:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->bitmapHeight:I

    sub-int v3, v0, v2

    int-to-float v3, v3

    cmpl-float p1, p1, v3

    if-lez p1, :cond_4

    sub-int/2addr v0, v2

    int-to-float p1, v0

    .line 158
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    .line 161
    :cond_4
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropX:F

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xOneSize:F

    div-float v2, p1, v0

    iput v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xMoveGrid:F

    .line 162
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->dropY:F

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yOneSize:F

    div-float v5, v3, v4

    iput v5, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGrid:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 164
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xMoveGridInt:I

    div-float/2addr v3, v4

    float-to-int p1, v3

    .line 165
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGridInt:I

    const/16 p1, 0xe

    const/high16 v0, 0x41500000    # 13.0f

    cmpl-float v2, v2, v0

    if-lez v2, :cond_5

    .line 167
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xMoveGridInt:I

    .line 169
    :cond_5
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGrid:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_6

    .line 170
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGridInt:I

    .line 174
    :cond_6
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->invalidate()V

    goto :goto_0

    .line 180
    :cond_7
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->onBallMovListener:Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;

    if-eqz p1, :cond_8

    .line 182
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xMoveGridInt:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGridInt:I

    invoke-interface {p1, v0, v2}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;->onBallMove(II)V

    :cond_8
    :goto_0
    return v1
.end method

.method public performClick()Z
    .locals 1

    .line 194
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setMaxValueXY(II)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->maxValueX:I

    .line 74
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->maxValueY:I

    return-void
.end method

.method public setOnBallMoveListener(Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->onBallMovListener:Lcom/nwd/audioset/view/nwdview/FaderBalanceView$OnBallMoveListener;

    return-void
.end method

.method public setXY(II)V
    .locals 0

    .line 83
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->xMoveGridInt:I

    .line 84
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->yMoveGridInt:I

    .line 85
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FaderBalanceView;->invalidate()V

    return-void
.end method
