.class Lcom/android/utils/checker/VideoSignalChecker$2;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/android/utils/checker/VideoSignalChecker$2;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/utils/checker/VideoSignalChecker;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v0, "com.nwd.ACTION_VIDEO_SIGNAL_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    const-string v0, "extra_camera_id"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    const/4 p1, 0x1

    const-string v0, "extra_video_signal"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/utils/checker/VideoSignalChecker$2;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {p2}, Lcom/android/utils/checker/VideoSignalChecker;->access$300(Lcom/android/utils/checker/VideoSignalChecker;)Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/utils/checker/VideoSignalChecker$2;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {p2}, Lcom/android/utils/checker/VideoSignalChecker;->access$400(Lcom/android/utils/checker/VideoSignalChecker;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/utils/checker/VideoSignalChecker$2;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {p2}, Lcom/android/utils/checker/VideoSignalChecker;->access$300(Lcom/android/utils/checker/VideoSignalChecker;)Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;

    move-result-object p2

    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker$2;->this$0:Lcom/android/utils/checker/VideoSignalChecker;

    invoke-static {v0}, Lcom/android/utils/checker/VideoSignalChecker;->access$500(Lcom/android/utils/checker/VideoSignalChecker;)I

    move-result v0

    invoke-interface {p2, v0, p1}, Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;->onVideoSignalChange(II)V

    :cond_0
    return-void
.end method
