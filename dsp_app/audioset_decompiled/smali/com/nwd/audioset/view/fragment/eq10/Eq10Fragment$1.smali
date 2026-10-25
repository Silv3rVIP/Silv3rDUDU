.class Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment$1;
.super Landroid/os/Handler;
.source "Eq10Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;)V
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment$1;->this$0:Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 480
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment$1;->this$0:Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateDSPAudio(II)V

    goto :goto_0

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment$1;->this$0:Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, p1}, Lcom/nwd/audioset/view/fragment/eq10/Eq10Fragment;->updateAudio(II)V

    :goto_0
    return-void
.end method
