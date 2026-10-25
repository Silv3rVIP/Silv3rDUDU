.class Lcom/android/utils/download/DownloadManager$DownloadListener;
.super Lcom/android/utils/net/NetListenerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/download/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadListener"
.end annotation


# instance fields
.field private iTask:Lcom/android/utils/download/DownloadTask;

.field final synthetic this$0:Lcom/android/utils/download/DownloadManager;


# direct methods
.method public constructor <init>(Lcom/android/utils/download/DownloadManager;Lcom/android/utils/download/DownloadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->this$0:Lcom/android/utils/download/DownloadManager;

    invoke-direct {p0}, Lcom/android/utils/net/NetListenerAdapter;-><init>()V

    iput-object p2, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    return-void
.end method


# virtual methods
.method public ConnectFaild(JI)V
    .locals 0

    iget-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->this$0:Lcom/android/utils/download/DownloadManager;

    invoke-static {p1}, Lcom/android/utils/download/DownloadManager;->access$000(Lcom/android/utils/download/DownloadManager;)Ljava/util/Map;

    move-result-object p1

    iget-object p2, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Lcom/android/utils/download/DownloadTask;->stateChange(I)V

    return-void
.end method

.method public ConnectFinish(Lcom/android/utils/net/INet;)V
    .locals 1

    iget-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->this$0:Lcom/android/utils/download/DownloadManager;

    invoke-static {p1}, Lcom/android/utils/download/DownloadManager;->access$000(Lcom/android/utils/download/DownloadManager;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/utils/download/DownloadTask;->stateChange(I)V

    return-void
.end method

.method public ConnectStart(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    invoke-virtual {v0, p1, p2}, Lcom/android/utils/download/DownloadTask;->setNeedDownloadLength(J)V

    iget-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/utils/download/DownloadTask;->stateChange(I)V

    return-void
.end method

.method public downloading(JJ[BI)V
    .locals 0

    iget-object p1, p0, Lcom/android/utils/download/DownloadManager$DownloadListener;->iTask:Lcom/android/utils/download/DownloadTask;

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->nofityDownloading()V

    return-void
.end method
