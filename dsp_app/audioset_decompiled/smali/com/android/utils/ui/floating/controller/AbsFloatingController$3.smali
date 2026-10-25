.class Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/floating/controller/AbsFloatingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string v0, "tag is null"

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$200(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)Lcom/android/utils/media/IMediaController;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string v0, "mController is null"

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {v2}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$400(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget-object v2, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {v2}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$500(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$402(Lcom/android/utils/ui/floating/controller/AbsFloatingController;J)J

    const-string v0, "floating_next"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$200(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)Lcom/android/utils/media/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/utils/media/IMediaController;->next()V

    goto :goto_1

    :cond_2
    const-string v0, "floating_previous"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$200(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)Lcom/android/utils/media/IMediaController;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/utils/media/IMediaController;->previous()V

    goto :goto_1

    :cond_3
    const-string v0, "floating_play_pause"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$600(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$3;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->autoHideControlPanel(I)V

    :cond_5
    return-void
.end method
