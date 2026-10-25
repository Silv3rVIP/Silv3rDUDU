.class Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;Landroid/os/Looper;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 94
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {v1, v0, p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$000(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;II)V

    :goto_0
    return-void
.end method
