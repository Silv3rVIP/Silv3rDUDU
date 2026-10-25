.class Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$8;
.super Ljava/lang/Object;
.source "BassFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->onClick(Landroid/view/View;)V
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

    .line 382
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$8;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$8;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$600(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
