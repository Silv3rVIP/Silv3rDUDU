.class public Lcom/nwd/audioset/view/nwdview/WaveView;
.super Landroid/view/View;
.source "WaveView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WaveView"


# instance fields
.field private bass_margin_right:F

.field private bass_margin_top:F

.field private center_margin_top:F

.field defaultTempB:I

.field defaultTempL:I

.field defaultTempR:I

.field defaultTempT:I

.field private front_left_margin_right:F

.field private front_right_margin_left:F

.field intervalNum:I

.field public isRun:Z

.field private mHeight:I

.field private mWidth:I

.field private painColor:I

.field private paint:Landroid/graphics/Paint;

.field private refreshThread:Ljava/lang/Thread;

.field private suf_left_margin_right:F

.field private suf_left_margin_top:F

.field private suf_right_margin_left:F

.field tempB:I

.field tempL:I

.field tempR:I

.field tempT:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 189
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->isRun:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/WaveView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 189
    iput-boolean p3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->isRun:Z

    .line 48
    invoke-direct {p0, p2, p1}, Lcom/nwd/audioset/view/nwdview/WaveView;->initView(Landroid/util/AttributeSet;Landroid/content/Context;)V

    .line 49
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->initPaint()V

    return-void
.end method

.method private initView(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/nwd/audioset/R$styleable;->WaveView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "#8BE430"

    .line 73
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x5

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->painColor:I

    const/4 p2, 0x2

    const/high16 v0, -0x3ee00000    # -10.0f

    .line 74
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempL:I

    const/4 p2, 0x4

    const/high16 v0, 0x43480000    # 200.0f

    .line 75
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempT:I

    const/4 p2, 0x3

    const/high16 v0, 0x41200000    # 10.0f

    .line 76
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempR:I

    const/4 p2, 0x1

    const/high16 v0, 0x43820000    # 260.0f

    .line 77
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempB:I

    const/4 p2, 0x0

    const/high16 v0, 0x42480000    # 50.0f

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    .line 80
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempL:I

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    .line 81
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempT:I

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    .line 82
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempR:I

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    .line 83
    iget p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempB:I

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempB:I

    .line 85
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u4e0a: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u4e0b: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempB:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u5de6: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u53f3: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "WaveView"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703bf

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->center_margin_top:F

    .line 90
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703c1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->front_right_margin_left:F

    .line 91
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703c4

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->suf_right_margin_left:F

    .line 92
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703be

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->bass_margin_top:F

    .line 93
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703bd

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->bass_margin_right:F

    .line 94
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703c2

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->suf_left_margin_right:F

    .line 95
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703c3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->suf_left_margin_top:F

    .line 96
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0703c0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->front_left_margin_right:F

    return-void
.end method


# virtual methods
.method public initPaint()V
    .locals 2

    .line 101
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    .line 102
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->painColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public synthetic lambda$start$0$WaveView()V
    .locals 2

    .line 199
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->isRun:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x46

    .line 200
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 201
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->postInvalidate()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    :catch_0
    move-exception v0

    .line 205
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 223
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 229
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 232
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->refreshThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->refreshThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .line 111
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 115
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, -0xa

    if-le v0, v1, :cond_0

    .line 116
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempL:I

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    .line 117
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempT:I

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    .line 118
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->defaultTempR:I

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    const-wide/16 v0, 0xc8

    .line 120
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 126
    :cond_0
    :goto_0
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    add-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    .line 127
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    .line 128
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    .line 129
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->isRun:Z

    if-eqz v0, :cond_2

    .line 131
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 133
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->center_margin_top:F

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v3, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v6, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v7, -0x3d900000    # -60.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 135
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    sub-int/2addr v0, v2

    int-to-float v4, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v0, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/2addr v3, v2

    int-to-float v7, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v8, -0x3d740000    # -70.0f

    const/high16 v9, 0x430c0000    # 140.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 136
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    int-to-float v4, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v0, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v3, v6

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v3, v7

    int-to-float v7, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v8, -0x3d6a0000    # -75.0f

    const/high16 v9, 0x43160000    # 150.0f

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 137
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v3, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v6, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v7, -0x3d900000    # -60.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 143
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->front_right_margin_left:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, 0x42b40000    # 90.0f

    .line 144
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 145
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v4, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v7, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v8, -0x3d900000    # -60.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 146
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v4, v2, 0x2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    int-to-float v7, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/2addr v4, v3

    int-to-float v8, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v9, -0x3d740000    # -70.0f

    const/high16 v10, 0x430c0000    # 140.0f

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 147
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v4, v2, 0x2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v4, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v4, v7

    int-to-float v7, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    int-to-float v8, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v9, -0x3d600000    # -80.0f

    const/high16 v10, 0x43200000    # 160.0f

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 148
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v4, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v7, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v8, -0x3d900000    # -60.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 151
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->suf_right_margin_left:F

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v4, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v7, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 154
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v4, v2, 0x2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    int-to-float v7, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/2addr v4, v3

    int-to-float v8, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v9, -0x3d740000    # -70.0f

    const/high16 v10, 0x430c0000    # 140.0f

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 155
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v4, v2, 0x2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v4, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v4, v7

    int-to-float v7, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    int-to-float v8, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v9, -0x3d600000    # -80.0f

    const/high16 v10, 0x43200000    # 160.0f

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 156
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v4, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v7, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v8, -0x3d900000    # -60.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 158
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 159
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->bass_margin_right:F

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->bass_margin_top:F

    neg-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 161
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v4, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v7, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 162
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    sub-int/2addr v2, v3

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v4, v2, 0x2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v4, v6

    sub-int/2addr v4, v3

    int-to-float v7, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/2addr v4, v3

    int-to-float v8, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v9, -0x3d740000    # -70.0f

    const/high16 v10, 0x430c0000    # 140.0f

    const/4 v11, 0x1

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 163
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v4, v2, 0x2

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v4, v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v4, v7

    int-to-float v7, v4

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    mul-int/lit8 v8, v3, 0x2

    add-int/2addr v4, v8

    int-to-float v8, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v6

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    const/high16 v9, -0x3d6a0000    # -75.0f

    const/high16 v10, 0x43160000    # 150.0f

    iget-object v12, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v4, p1

    move v6, v7

    move v7, v8

    move v8, v2

    invoke-virtual/range {v4 .. v12}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 164
    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v4, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v2, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v7, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    int-to-float v2, v2

    const/high16 v8, -0x3d900000    # -60.0f

    const/high16 v9, 0x42f00000    # 120.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v2

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 167
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 168
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->suf_left_margin_top:F

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->suf_left_margin_right:F

    neg-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 170
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v3, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v6, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v7, -0x3d900000    # -60.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 171
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    sub-int/2addr v0, v2

    int-to-float v4, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v0, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    sub-int/2addr v3, v2

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/2addr v3, v2

    int-to-float v7, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v8, -0x3d740000    # -70.0f

    const/high16 v9, 0x430c0000    # 140.0f

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 172
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v0, v3

    int-to-float v4, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v3, v0, 0x2

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v3, v5

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v3, v6

    int-to-float v6, v3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v3, v7

    int-to-float v7, v3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v5

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v0, v0

    const/high16 v8, -0x3d600000    # -80.0f

    const/high16 v9, 0x43200000    # 160.0f

    iget-object v11, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v6

    move v6, v7

    move v7, v0

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 173
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v3, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v2, v4

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v6, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    int-to-float v0, v0

    const/high16 v7, -0x3d900000    # -60.0f

    const/high16 v8, 0x42f00000    # 120.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 176
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->front_left_margin_right:F

    neg-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 177
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v2, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v1, v0, 0x2

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v1, v3

    int-to-float v4, v1

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v5, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v6, -0x3d900000    # -60.0f

    const/high16 v7, 0x42f00000    # 120.0f

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v0

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 178
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    add-int/2addr v2, v1

    int-to-float v6, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v7, -0x3d740000    # -70.0f

    const/high16 v8, 0x430c0000    # 140.0f

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 179
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->intervalNum:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    int-to-float v3, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v2, v0, 0x2

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v2, v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v2, v5

    int-to-float v5, v2

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    mul-int/lit8 v6, v1, 0x2

    add-int/2addr v2, v6

    int-to-float v6, v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v7, -0x3d600000    # -80.0f

    const/high16 v8, 0x43200000    # 160.0f

    iget-object v10, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v5

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 180
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempL:I

    int-to-float v2, v0

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    div-int/lit8 v1, v0, 0x2

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempT:I

    sub-int/2addr v1, v3

    int-to-float v4, v1

    iget v1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->tempR:I

    int-to-float v5, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v3

    int-to-float v0, v0

    const/high16 v6, -0x3d900000    # -60.0f

    const/high16 v7, 0x42f00000    # 120.0f

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    move v3, v4

    move v4, v5

    move v5, v0

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 181
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 241
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 242
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u63a7\u4ef6\u5bbd\u4e3a: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WaveView"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u63a7\u4ef6\u9ad8\u4e3a: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getHeight()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mWidth:I

    .line 245
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/WaveView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->mHeight:I

    return-void
.end method

.method public start()V
    .locals 2

    const-string v0, "WaveView"

    const-string v1, "\u5f00\u59cb\u52a8\u753b"

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 193
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->isRun:Z

    .line 197
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nwd/audioset/view/nwdview/-$$Lambda$WaveView$gqulj8edeMtVT4Hl7dz7KVduSz0;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/nwdview/-$$Lambda$WaveView$gqulj8edeMtVT4Hl7dz7KVduSz0;-><init>(Lcom/nwd/audioset/view/nwdview/WaveView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->refreshThread:Ljava/lang/Thread;

    .line 209
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    const-string v0, "WaveView"

    const-string v1, "\u7ed3\u675f\u52a8\u753b"

    .line 216
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/WaveView;->isRun:Z

    return-void
.end method
