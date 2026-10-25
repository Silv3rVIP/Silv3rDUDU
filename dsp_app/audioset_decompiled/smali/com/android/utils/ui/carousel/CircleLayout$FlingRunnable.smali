.class Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/carousel/CircleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field private mLastFlingX:I

.field private mScroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/android/utils/ui/carousel/CircleLayout;


# direct methods
.method public constructor <init>(Lcom/android/utils/ui/carousel/CircleLayout;)V
    .locals 1

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p1}, Lcom/android/utils/ui/carousel/CircleLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    return-void
.end method

.method private endFling()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-static {v0}, Lcom/android/utils/ui/carousel/CircleLayout;->access$400(Lcom/android/utils/ui/carousel/CircleLayout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    iget v2, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mLastFlingX:I

    sub-int/2addr v2, v0

    if-gez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, -0x1

    :goto_0
    iget-object v4, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-static {v4}, Lcom/android/utils/ui/carousel/CircleLayout;->access$500(Lcom/android/utils/ui/carousel/CircleLayout;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int v2, v2, v3

    iget-object v3, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-static {v3, v2}, Lcom/android/utils/ui/carousel/CircleLayout;->access$600(Lcom/android/utils/ui/carousel/CircleLayout;I)V

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mLastFlingX:I

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-virtual {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->endFling()V

    :goto_1
    return-void
.end method

.method public startUsingVelocity(I)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-virtual {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    if-gez p1, :cond_1

    const v0, 0x7fffffff

    const v2, 0x7fffffff

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iput v2, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mLastFlingX:I

    iget-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, 0x7fffffff

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    iget-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-virtual {p1, p0}, Lcom/android/utils/ui/carousel/CircleLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-virtual {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->endFling()V

    return-void
.end method
