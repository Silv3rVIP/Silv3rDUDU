.class public Lcom/android/utils/download/DownloadManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/download/DownloadManager$DownloadListener;
    }
.end annotation


# instance fields
.field private iContext:Landroid/content/Context;

.field private iExecutor:Ljava/util/concurrent/ExecutorService;

.field private iRunningTask:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/utils/download/DownloadTask;",
            "Lcom/android/utils/net/INet;",
            ">;"
        }
    .end annotation
.end field

.field private iTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/utils/download/DownloadTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/utils/download/DownloadManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/download/DownloadManager;->iContext:Landroid/content/Context;

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/download/DownloadManager;->iExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/download/DownloadManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    return-object p0
.end method

.method private createRunningTask(Lcom/android/utils/download/DownloadTask;)Lcom/android/utils/net/INet;
    .locals 4

    new-instance v0, Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/download/DownloadManager;->iContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/utils/net/HttpNet;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setURL(Ljava/lang/String;)V

    const v1, 0xa000

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setWriteBuffSize(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setKeyWord(Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->getSaveFilePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setOutputBuffer(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance v1, Lcom/android/utils/download/DownloadManager$DownloadListener;

    invoke-direct {v1, p0, p1}, Lcom/android/utils/download/DownloadManager$DownloadListener;-><init>(Lcom/android/utils/download/DownloadManager;Lcom/android/utils/download/DownloadTask;)V

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->addListenser(Lcom/android/utils/net/INetListenser;)V

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->getHaveDownloadLength()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/utils/net/INet;->setRange(J)V

    return-object v0
.end method

.method private isTaskExist(Lcom/android/utils/download/DownloadTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isTaskRunning(Lcom/android/utils/download/DownloadTask;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public addTask(Lcom/android/utils/download/DownloadTask;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/utils/download/DownloadManager;->isTaskExist(Lcom/android/utils/download/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p1, "DownloadManager#addTask : task is exist"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public addTaskAndStart(Lcom/android/utils/download/DownloadTask;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/utils/download/DownloadManager;->addTask(Lcom/android/utils/download/DownloadTask;)V

    invoke-virtual {p0, p1}, Lcom/android/utils/download/DownloadManager;->startTask(Lcom/android/utils/download/DownloadTask;)Z

    return-void
.end method

.method public getAllTask()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/utils/download/DownloadTask;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getTaskCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public recycle()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/download/DownloadManager;->removeAllTask()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    iput-object v0, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/utils/download/DownloadManager;->iExecutor:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_0
    iput-object v0, p0, Lcom/android/utils/download/DownloadManager;->iExecutor:Ljava/util/concurrent/ExecutorService;

    iput-object v0, p0, Lcom/android/utils/download/DownloadManager;->iContext:Landroid/content/Context;

    return-void
.end method

.method public removeAllTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/download/DownloadTask;

    invoke-virtual {p0, v1}, Lcom/android/utils/download/DownloadManager;->removeTask(Lcom/android/utils/download/DownloadTask;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeTask(Lcom/android/utils/download/DownloadTask;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/utils/download/DownloadManager;->stopTask(Lcom/android/utils/download/DownloadTask;)Z

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized startTask(Lcom/android/utils/download/DownloadTask;)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/utils/download/DownloadManager;->isTaskRunning(Lcom/android/utils/download/DownloadTask;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/utils/download/DownloadManager;->createRunningTask(Lcom/android/utils/download/DownloadTask;)Lcom/android/utils/net/INet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/utils/download/DownloadManager;->iExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/android/utils/download/DownloadTask;->stateChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DownloadManager#startTask : Task state is not Stop or Error,can\'t start , task state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/utils/download/DownloadTask;->getState()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized stopTask(Lcom/android/utils/download/DownloadTask;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/utils/download/DownloadManager;->isTaskRunning(Lcom/android/utils/download/DownloadTask;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/net/INet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/utils/net/INet;->close()V

    :cond_0
    iget-object v0, p0, Lcom/android/utils/download/DownloadManager;->iRunningTask:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/utils/download/DownloadTask;->stateChange(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    :goto_0
    monitor-exit p0

    return p1

    :cond_1
    :try_start_1
    const-string p1, "DownloadManager#stopTask : the task did\'t start"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
