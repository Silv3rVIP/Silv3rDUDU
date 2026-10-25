.class public Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;
.super Landroid/widget/SeekBar;
.source "ForwardVerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private myListen:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .line 51
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 52
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    invoke-virtual {v1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const/high16 v0, 0x42b40000    # 90.0f

    .line 76
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 78
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 80
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 0

    monitor-enter p0

    .line 67
    :try_start_0
    invoke-super {p0, p2, p1}, Landroid/widget/SeekBar;->onMeasure(II)V

    .line 69
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getMeasuredHeight()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 35
    invoke-super {p0, p2, p1, p4, p3}, Landroid/widget/SeekBar;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 95
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    goto :goto_0

    .line 115
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_4

    .line 116
    invoke-interface {p1, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 107
    :cond_2
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getMax()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    mul-float v0, v0, p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0, p1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->setProgress(I)V

    .line 108
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;

    if-eqz p1, :cond_3

    .line 109
    invoke-interface {p1, p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;)V

    .line 111
    :cond_3
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getHeight()I

    move-result v0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->onSizeChanged(IIII)V

    :cond_4
    :goto_0
    return v2
.end method

.method public setListener(Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar$OnSeekBarChangeListener;

    return-void
.end method

.method public declared-synchronized setProgress(I)V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 89
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->onSizeChanged(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .line 41
    invoke-virtual {p0, p1}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 42
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 p1, 0x43340000    # 180.0f

    .line 43
    invoke-virtual {v5, p1}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 44
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 47
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ForwardVerticalSeekBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-super {p0, v0}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
