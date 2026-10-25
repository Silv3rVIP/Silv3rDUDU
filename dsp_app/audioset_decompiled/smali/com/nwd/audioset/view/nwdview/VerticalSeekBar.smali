.class public Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 46
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 48
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 50
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 39
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 29
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 65
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_4

    .line 86
    invoke-interface {p1, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getMax()I

    move-result v0

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getMax()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float v3, v3, p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    float-to-int p1, v3

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->setProgress(I)V

    .line 78
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_3

    .line 79
    invoke-interface {p1, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;)V

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->onSizeChanged(IIII)V

    :cond_4
    :goto_0
    return v2
.end method

.method public setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 59
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
