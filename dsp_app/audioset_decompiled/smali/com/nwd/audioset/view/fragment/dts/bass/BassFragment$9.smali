.class Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BassFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V
    .locals 0

    .line 450
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 495
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "innerScrollListener  : newState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "dsp3-Dts-BassFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 4

    .line 454
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 455
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "innerScrollListener  : dy = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "dsp3-Dts-BassFragment"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$400(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    const-wide/16 v0, 0x96

    const/4 v2, 0x1

    if-ne p1, p2, :cond_0

    .line 457
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$700(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 459
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged font : position = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 462
    iput v2, p2, Landroid/os/Message;->what:I

    sub-int/2addr p1, v2

    .line 463
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 464
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 465
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 467
    :cond_0
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$500(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-ne p1, p2, :cond_1

    .line 468
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$900(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 470
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 471
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged behind : position = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 p3, 0x2

    .line 473
    iput p3, p2, Landroid/os/Message;->what:I

    sub-int/2addr p1, v2

    .line 474
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 476
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 479
    :cond_1
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$600(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p2

    if-ne p1, p2, :cond_2

    .line 480
    iget-object p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p2}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$1000(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;

    move-result-object p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/nwd/audioset/utils/recyclerview/VerticalPagerSnapHelper;->findSnapView(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 482
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result p1

    .line 483
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScrollStateChanged heavy_bass : position = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    const/4 p3, 0x3

    .line 485
    iput p3, p2, Landroid/os/Message;->what:I

    sub-int/2addr p1, v2

    .line 486
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 488
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$9;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$800(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void
.end method
