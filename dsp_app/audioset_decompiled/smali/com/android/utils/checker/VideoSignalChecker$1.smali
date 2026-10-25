.class Lcom/android/utils/checker/VideoSignalChecker$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/checker/VideoSignalChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/checker/VideoSignalChecker;


# direct methods
.method constructor <init>(Lcom/android/utils/checker/VideoSignalChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/checker/VideoSignalChecker$1;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/utils/checker/VideoSignalChecker$1;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {p1}, Lcom/android/utils/checker/VideoSignalChecker;->access$100(Lcom/android/utils/checker/VideoSignalChecker;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker$1;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {v0}, Lcom/android/utils/checker/VideoSignalChecker;->access$000(Lcom/android/utils/checker/VideoSignalChecker;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p1, 0x0

    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker$1;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {v0}, Lcom/android/utils/checker/VideoSignalChecker;->access$200(Lcom/android/utils/checker/VideoSignalChecker;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/utils/checker/VideoSignalChecker$1;->sendEmptyMessageDelayed(IJ)Z

    :goto_0
    return-void
.end method
