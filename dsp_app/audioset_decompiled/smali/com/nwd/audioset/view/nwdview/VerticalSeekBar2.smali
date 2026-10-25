.class public Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private isInScrollingContainer:Z

.field private mIsDragging:Z

.field private mScaledTouchSlop:I

.field private mTouchDownY:F

.field mTouchProgressOffset:F

.field private mVerticalSeekBarChangeListener:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isInScrollingContainer:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 16
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isInScrollingContainer:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 16
    iput-boolean p2, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isInScrollingContainer:Z

    .line 50
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mScaledTouchSlop:I

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 211
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 5

    .line 174
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getHeight()I

    move-result v0

    .line 175
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getPaddingTop()I

    move-result v1

    .line 176
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getPaddingBottom()I

    move-result v2

    sub-int v3, v0, v1

    sub-int/2addr v3, v2

    .line 179
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    sub-int/2addr v0, v2

    const/4 v2, 0x0

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-ge p1, v1, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-int p1, v3, p1

    add-int/2addr p1, v1

    int-to-float p1, p1

    int-to-float v0, v3

    div-float v2, p1, v0

    .line 196
    iget p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mTouchProgressOffset:F

    move v4, v2

    move v2, p1

    move p1, v4

    .line 199
    :goto_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr v2, p1

    float-to-int p1, v2

    .line 202
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public isInScrollingContainer()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isInScrollingContainer:Z

    return v0
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 83
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 84
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 76
    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 77
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 68
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mIsDragging:Z

    .line 238
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mVerticalSeekBarChangeListener:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 240
    invoke-interface {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;->onStartVerticalTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mIsDragging:Z

    .line 251
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mVerticalSeekBarChangeListener:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 253
    invoke-interface {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;->onStopVerticalTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 91
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 96
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    goto/16 :goto_2

    .line 118
    :cond_1
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 120
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 126
    iget v3, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mTouchDownY:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mScaledTouchSlop:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-lez v0, :cond_3

    .line 128
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->setPressed(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->invalidate()V

    .line 131
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onStartTrackingTouch()V

    .line 132
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 133
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->attemptClaimDrag()V

    .line 137
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onSizeChanged(IIII)V

    goto :goto_2

    .line 141
    :cond_4
    iget-boolean v0, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mIsDragging:Z

    if-eqz v0, :cond_5

    .line 143
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 144
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onStopTrackingTouch()V

    .line 145
    invoke-virtual {p0, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->setPressed(Z)V

    goto :goto_1

    .line 153
    :cond_5
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onStartTrackingTouch()V

    .line 154
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 155
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onStopTrackingTouch()V

    .line 158
    :goto_1
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onSizeChanged(IIII)V

    .line 162
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->invalidate()V

    goto :goto_2

    .line 99
    :cond_6
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isInScrollingContainer()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onStartTrackingTouch()V

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mTouchDownY:F

    goto :goto_2

    .line 106
    :cond_7
    invoke-virtual {p0, v2}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->setPressed(Z)V

    .line 108
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->invalidate()V

    .line 109
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onStartTrackingTouch()V

    .line 110
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 111
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->attemptClaimDrag()V

    .line 113
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onSizeChanged(IIII)V

    :goto_2
    return v2
.end method

.method public setInScrollingContainer(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->isInScrollingContainer:Z

    return-void
.end method

.method public setOnVerticalSeekBarChangeListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->mVerticalSeekBarChangeListener:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2$onVerticalSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    .line 219
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 220
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar2;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 221
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
