.class public Lcom/nwd/audioset/view/nwdview/SparkView;
.super Landroid/view/SurfaceView;
.source "SparkView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG_FOR_COLOR:Z = false

.field private static HEIGHT:I

.field private static WIDTH:I


# instance fields
.field private X:F

.field private Y:F

.field private isRun:Z

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurrentThread:Ljava/lang/Thread;

.field private mCurrentTimeMillis:J

.field private mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mReset:Z

.field private mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

.field private mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

.field sparks:[[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 92
    check-cast p1, [[I

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->sparks:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 92
    check-cast p1, [[I

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->sparks:[[I

    .line 57
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/SparkView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070155

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/nwd/audioset/view/nwdview/SparkView;->HEIGHT:I

    const p2, 0x7f070156

    .line 60
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/nwd/audioset/view/nwdview/SparkView;->WIDTH:I

    .line 71
    new-instance p1, Lcom/nwd/audioset/view/nwdview/SparkManager;

    invoke-direct {p1}, Lcom/nwd/audioset/view/nwdview/SparkManager;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    .line 72
    sget p2, Lcom/nwd/audioset/view/nwdview/SparkView;->WIDTH:I

    sget v0, Lcom/nwd/audioset/view/nwdview/SparkView;->HEIGHT:I

    invoke-virtual {p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/SparkManager;->setSize(II)V

    .line 74
    new-instance p1, Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-direct {p1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    .line 76
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/SparkView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    .line 77
    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 p1, 0x1

    .line 78
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/view/nwdview/SparkView;->setZOrderOnTop(Z)V

    .line 79
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 p2, -0x3

    invoke-interface {p1, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    return-void
.end method

.method private drawBackgound()V
    .locals 2

    .line 301
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    .line 303
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v3, :cond_1

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    goto :goto_0

    .line 194
    :cond_1
    iput-boolean v3, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mReset:Z

    .line 195
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    iput-boolean v1, v0, Lcom/nwd/audioset/view/nwdview/SparkManager;->isActive:Z

    .line 196
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->X:F

    .line 197
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->Y:F

    goto :goto_0

    .line 184
    :cond_2
    iput-boolean v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mReset:Z

    .line 185
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    iput-boolean v3, v0, Lcom/nwd/audioset/view/nwdview/SparkManager;->isActive:Z

    .line 186
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->X:F

    cmpl-float v4, v0, v2

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->Y:F

    cmpl-float v5, v4, v2

    if-eqz v5, :cond_3

    .line 187
    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v5, v0, v4, v6, v7}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->addLine(FFFF)V

    .line 189
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->X:F

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->Y:F

    .line 204
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 205
    iput-boolean v3, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mReset:Z

    .line 206
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    iput-boolean v1, v0, Lcom/nwd/audioset/view/nwdview/SparkManager;->isActive:Z

    .line 207
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->X:F

    .line 208
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->Y:F

    .line 210
    :cond_4
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

    if-eqz v0, :cond_5

    .line 212
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/SparkView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcom/nwd/audioset/view/nwdview/SparkView;->WIDTH:I

    int-to-float v1, v1

    mul-float v5, v0, v1

    .line 213
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/SparkView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    sget v1, Lcom/nwd/audioset/view/nwdview/SparkView;->HEIGHT:I

    int-to-float v2, v1

    mul-float v6, v0, v2

    .line 214
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

    sget v0, Lcom/nwd/audioset/view/nwdview/SparkView;->WIDTH:I

    int-to-float v7, v0

    int-to-float v8, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-interface/range {v4 .. v9}, Lcom/nwd/audioset/listener/TopLevelTouchListener;->onTouch(FFFFI)V

    :cond_5
    return v3
.end method

.method public pauseStopThread()V
    .locals 1

    const/4 v0, 0x0

    .line 297
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->isRun:Z

    return-void
.end method

.method public run()V
    .locals 9

    .line 99
    const-class v0, I

    sget-boolean v1, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    new-array v1, v2, [I

    .line 100
    fill-array-data v1, :array_0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->sparks:[[I

    goto :goto_0

    :cond_0
    new-array v1, v2, [I

    .line 102
    fill-array-data v1, :array_1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->sparks:[[I

    .line 106
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->isRun:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 110
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCurrentTimeMillis:J

    .line 113
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_5

    .line 119
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 121
    iget-boolean v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mReset:Z

    if-eqz v1, :cond_3

    .line 124
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->sparks:[[I

    array-length v3, v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v1, v4

    .line 125
    aput v2, v5, v2

    const/4 v6, 0x1

    .line 126
    aput v2, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 128
    :cond_2
    iput-boolean v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mReset:Z

    .line 130
    :cond_3
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v3}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->draw(Landroid/graphics/Canvas;)V

    .line 132
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    iget-boolean v1, v1, Lcom/nwd/audioset/view/nwdview/SparkManager;->isActive:Z

    if-eqz v1, :cond_4

    .line 134
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->sparks:[[I

    array-length v3, v1

    :goto_2
    if-ge v2, v3, :cond_4

    aget-object v4, v1, v2

    .line 135
    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    iget-object v6, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->X:F

    float-to-int v7, v7

    iget v8, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->Y:F

    float-to-int v8, v8

    invoke-virtual {v5, v6, v7, v8, v4}, Lcom/nwd/audioset/view/nwdview/SparkManager;->drawSpark(Landroid/graphics/Canvas;II[I)[I

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x14

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCurrentTimeMillis:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 143
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 145
    :cond_5
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 150
    :try_start_2
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 145
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 147
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 150
    :try_start_6
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 150
    :goto_3
    :try_start_7
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_6

    .line 151
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    .line 154
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 156
    :cond_6
    :goto_4
    throw v0

    .line 160
    :cond_7
    :try_start_8
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    .line 161
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->clear()V

    .line 162
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 165
    :try_start_9
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v0, :cond_8

    .line 166
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_5

    :catch_3
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    return-void

    :catchall_2
    move-exception v0

    .line 165
    :try_start_a
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_9

    .line 166
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCanvas:Landroid/graphics/Canvas;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_6

    :catch_4
    move-exception v1

    .line 169
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    :cond_9
    :goto_6
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7

    :array_0
    .array-data 4
        0x32
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x190
        0xa
    .end array-data
.end method

.method public setTopLevelTouchListener(Lcom/nwd/audioset/listener/TopLevelTouchListener;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

    return-void
.end method

.method public startThread()V
    .locals 1

    .line 260
    invoke-static {}, Lcom/nwd/dsp/uitls/DspConstant;->isShowSparkView()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 263
    :try_start_0
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->isRun:Z

    .line 264
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCurrentThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCurrentThread:Ljava/lang/Thread;

    .line 267
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mCurrentThread:Ljava/lang/Thread;

    .line 268
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public stopThread()V
    .locals 1

    const/4 v0, 0x0

    .line 285
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->isRun:Z

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 225
    invoke-static {}, Lcom/nwd/dsp/uitls/DspConstant;->isShowSparkView()Z

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 235
    invoke-static {}, Lcom/nwd/dsp/uitls/DspConstant;->isShowSparkView()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 237
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mSparkManager:Lcom/nwd/audioset/view/nwdview/SparkManager;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/SparkView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/SparkView;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/nwd/audioset/view/nwdview/SparkManager;->setSize(II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "===###surfaceDestroyed333"

    .line 249
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    invoke-static {}, Lcom/nwd/dsp/uitls/DspConstant;->isShowSparkView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->mHolder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    .line 253
    :try_start_0
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/SparkView;->isRun:Z

    .line 254
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method
