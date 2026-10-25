.class Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;
.super Ljava/lang/Object;
.source "BassFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->updateSeekBarUi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

.field final synthetic val$middle_option:I


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;I)V
    .locals 0

    .line 339
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    iput p2, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;->val$middle_option:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$600(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$5;->val$middle_option:I

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    return-void
.end method
