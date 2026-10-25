.class public Lcom/android/utils/ui/picker/ScrollLayout;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;
    }
.end annotation


# static fields
.field private static final SNAP_VELOCITY:I = 0x258

.field private static final TAG:Ljava/lang/String; = "ScrollLayout"

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


# instance fields
.field private angle:F

.field private mCamera:Landroid/graphics/Camera;

.field private mCurScreen:I

.field private mDefaultScreen:I

.field private mLastMotionX:F

.field private mListener:Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mScroller:Landroid/widget/Scroller;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/ui/picker/ScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mDefaultScreen:I

    iput p2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->angle:F

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mListener:Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;

    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    iget p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mDefaultScreen:I

    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchSlop:I

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCamera:Landroid/graphics/Camera;

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mMatrix:Landroid/graphics/Matrix;

    iget-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mListener:Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-interface {p1, p2}, Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;->notifyScreenScrollChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget-object v1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/utils/ui/picker/ScrollLayout;->scrollTo(II)V

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->postInvalidate()V

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {p0, p1, v3, v0, v1}, Lcom/android/utils/ui/picker/ScrollLayout;->drawScreen(Landroid/graphics/Canvas;IJ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public drawScreen(Landroid/graphics/Canvas;IJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getWidth()I

    move-result v0

    mul-int v1, p2, v0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getScrollX()I

    move-result v2

    add-int v3, v2, v0

    if-gt v1, v3, :cond_3

    add-int/2addr v0, v1

    if-ge v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/android/utils/ui/picker/ScrollLayout;->angle:F

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getMeasuredWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    mul-float v4, v4, v5

    int-to-float p2, p2

    iget v5, p0, Lcom/android/utils/ui/picker/ScrollLayout;->angle:F

    mul-float p2, p2, v5

    sub-float/2addr v4, p2

    const/high16 p2, 0x42b40000    # 90.0f

    cmpl-float p2, v4, p2

    if-gtz p2, :cond_3

    const/high16 p2, -0x3d4c0000    # -90.0f

    cmpg-float p2, v4, p2

    if-gez p2, :cond_1

    goto :goto_1

    :cond_1
    if-ge v1, v2, :cond_2

    int-to-float p2, v0

    goto :goto_0

    :cond_2
    int-to-float p2, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCamera:Landroid/graphics/Camera;

    iget-object v2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v1}, Landroid/graphics/Camera;->save()V

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Camera;->rotateY(F)V

    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    neg-float v1, p2

    neg-float v4, v0

    invoke-virtual {v2, v1, v4}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    invoke-virtual {v2, p2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/android/utils/ui/picker/ScrollLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    return-void
.end method

.method public getCurScreen()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    iget v3, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    if-eqz v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mLastMotionX:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchSlop:I

    if-le p1, v0, :cond_4

    iput v2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    goto :goto_0

    :cond_3
    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mLastMotionX:F

    iget-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    xor-int/2addr p1, v2

    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    :cond_4
    :goto_0
    iget p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p3, p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p5, p4, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    move p4, v0

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    mul-int p1, p1, v0

    invoke-virtual {p0, p1, v2}, Lcom/android/utils/ui/picker/ScrollLayout;->scrollTo(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    iput v2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mTouchState:I

    goto :goto_2

    :cond_2
    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mLastMotionX:F

    sub-float/2addr v0, p1

    float-to-int v0, v0

    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mLastMotionX:F

    invoke-virtual {p0, v0, v2}, Lcom/android/utils/ui/picker/ScrollLayout;->scrollBy(II)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    float-to-int p1, p1

    const/16 v0, 0x258

    if-le p1, v0, :cond_4

    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    if-lez v0, :cond_4

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/picker/ScrollLayout;->snapToScreen(I)V

    goto :goto_1

    :cond_4
    const/16 v0, -0x258

    if-ge p1, v0, :cond_5

    iget p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    iget p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    add-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/picker/ScrollLayout;->snapToScreen(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->snapToDestination()V

    :goto_1
    iget-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_7
    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mLastMotionX:F

    :goto_2
    return v1
.end method

.method public setScreenScrollChangedListener(Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mListener:Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;

    return-void
.end method

.method public setToScreen(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getWidth()I

    move-result v1

    mul-int p1, p1, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/utils/ui/picker/ScrollLayout;->scrollTo(II)V

    iget-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mListener:Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-interface {p1, v0}, Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;->notifyScreenScrollChanged(I)V

    :cond_0
    return-void
.end method

.method public snapToDestination()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getScrollX()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    add-int/2addr v1, v2

    div-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/utils/ui/picker/ScrollLayout;->snapToScreen(I)V

    return-void
.end method

.method public snapToScreen(I)V
    .locals 8

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getWidth()I

    move-result v1

    mul-int v1, v1, p1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getWidth()I

    move-result v0

    mul-int v0, v0, p1

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getScrollX()I

    move-result v1

    sub-int v5, v0, v1

    iget-object v2, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->getScrollX()I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v7, v0, 0x2

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    iput p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/ScrollLayout;->invalidate()V

    iget-object p1, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mListener:Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/utils/ui/picker/ScrollLayout;->mCurScreen:I

    invoke-interface {p1, v0}, Lcom/android/utils/ui/picker/ScrollLayout$ScreenScrollChangedListener;->notifyScreenScrollChanged(I)V

    :cond_0
    return-void
.end method
