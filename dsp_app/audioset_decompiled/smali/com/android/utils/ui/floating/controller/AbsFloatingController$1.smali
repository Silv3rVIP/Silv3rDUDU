.class Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;
.super Landroid/os/Handler;


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

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$100()Lcom/android/utils/log/JLog;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----------------->isShow = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-virtual {p1, v1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->refreshControlPanel(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->refreshControlPanel(Z)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$000(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_3

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$1;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-virtual {p1, v0, v1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->queueNextRefresh(J)V

    :cond_3
    :goto_0
    return-void
.end method
