.class public Lcom/nwd/audioset/view/nwdview/FadeLineView;
.super Landroid/view/View;
.source "FadeLineView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;
    }
.end annotation


# static fields
.field private static HEIGHT:I

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static WIDTH:I


# instance fields
.field private X:F

.field private Y:F

.field private mDrawThread:Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;

.field private mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

.field private mIsRunning:Z

.field private mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 14
    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "FadeLineView"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mIsRunning:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 94
    iput-boolean p2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mIsRunning:Z

    .line 27
    new-instance p2, Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-direct {p2}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;-><init>()V

    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070155

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    sput p2, Lcom/nwd/audioset/view/nwdview/FadeLineView;->HEIGHT:I

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f070156

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    sput p1, Lcom/nwd/audioset/view/nwdview/FadeLineView;->WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mIsRunning:Z

    return-void
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/nwdview/FadeLineView;)Z
    .locals 0

    .line 13
    iget-boolean p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mIsRunning:Z

    return p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/nwdview/FadeLineView;)Lcom/nwd/audioset/view/nwdview/FadeLineManager;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    return-object p0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 82
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 83
    new-instance v0, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;-><init>(Lcom/nwd/audioset/view/nwdview/FadeLineView;Lcom/nwd/audioset/view/nwdview/FadeLineView$1;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mDrawThread:Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;

    const/4 v1, 0x1

    .line 84
    iput-boolean v1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mIsRunning:Z

    .line 85
    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;->start()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 90
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 91
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mIsRunning:Z

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mDrawThread:Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 116
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 117
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 39
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 55
    :cond_1
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->X:F

    .line 56
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->Y:F

    goto :goto_0

    .line 45
    :cond_2
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->X:F

    cmpl-float v3, v0, v2

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->Y:F

    cmpl-float v4, v3, v2

    if-eqz v4, :cond_3

    .line 47
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mFadeLineManager:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v4, v0, v3, v5, v6}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->addLine(FFFF)V

    .line 49
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->X:F

    .line 50
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->Y:F

    .line 63
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 65
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->X:F

    .line 66
    iput v2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->Y:F

    .line 69
    :cond_4
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lcom/nwd/audioset/view/nwdview/FadeLineView;->WIDTH:I

    int-to-float v2, v2

    mul-float v4, v0, v2

    .line 73
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    sget v2, Lcom/nwd/audioset/view/nwdview/FadeLineView;->HEIGHT:I

    int-to-float v3, v2

    mul-float v5, v0, v3

    .line 74
    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

    sget v0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->WIDTH:I

    int-to-float v6, v0

    int-to-float v7, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    invoke-interface/range {v3 .. v8}, Lcom/nwd/audioset/listener/TopLevelTouchListener;->onTouch(FFFFI)V

    :cond_5
    return v1
.end method

.method public setTopLevelTouchListener(Lcom/nwd/audioset/listener/TopLevelTouchListener;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView;->mSparkTouchListener:Lcom/nwd/audioset/listener/TopLevelTouchListener;

    return-void
.end method
