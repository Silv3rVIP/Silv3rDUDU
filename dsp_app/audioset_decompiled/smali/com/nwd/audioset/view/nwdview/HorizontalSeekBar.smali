.class public Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;
.super Landroid/widget/SeekBar;
.source "HorizontalSeekBar.java"


# instance fields
.field private myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 27
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_3

    .line 38
    invoke-interface {v0, p0}, Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;)V

    .line 52
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setListener(Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/HorizontalSeekBar;->myListen:Lcom/nwd/audioset/view/nwdview/VerticalSeekBar$OnSeekBarChangeListener;

    return-void
.end method
