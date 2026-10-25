.class public Lcom/nwd/audioset/utils/ThreadManager;
.super Ljava/lang/Object;
.source "ThreadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/utils/ThreadManager$WrapRunnable;
    }
.end annotation


# static fields
.field private static final dbFactory:Ljava/util/concurrent/ThreadFactory;

.field private static sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static final sAsyncFactory:Ljava/util/concurrent/ThreadFactory;

.field private static sSubThread:Landroid/os/HandlerThread;

.field private static sSubThreadHandler:Landroid/os/Handler;

.field private static uiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/nwd/audioset/utils/ThreadManager$1;

    invoke-direct {v0}, Lcom/nwd/audioset/utils/ThreadManager$1;-><init>()V

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncFactory:Ljava/util/concurrent/ThreadFactory;

    .line 35
    new-instance v0, Lcom/nwd/audioset/utils/ThreadManager$2;

    invoke-direct {v0}, Lcom/nwd/audioset/utils/ThreadManager$2;-><init>()V

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->dbFactory:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeOnAsyncThread(Ljava/lang/Runnable;)V
    .locals 3

    .line 151
    :try_start_0
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-nez v0, :cond_0

    const/4 v0, 0x5

    const/16 v1, 0x14

    .line 152
    sget-object v2, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/ThreadManager;->initThreadExecutor(IILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 154
    :cond_0
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static executeOnAsyncThreadDelay(Ljava/lang/Runnable;J)V
    .locals 2

    .line 178
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 179
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1, p2, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    return-void
.end method

.method public static executeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 120
    invoke-static {}, Lcom/nwd/audioset/utils/ThreadManager;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static executeOnMainThreadDelay(Ljava/lang/Runnable;J)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 131
    :cond_1
    invoke-static {}, Lcom/nwd/audioset/utils/ThreadManager;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static getSubThreadHandler()Landroid/os/Handler;
    .locals 2

    .line 96
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sSubThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 97
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "sub_thread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sSubThread:Landroid/os/HandlerThread;

    .line 98
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/nwd/audioset/utils/ThreadManager;->sSubThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sSubThreadHandler:Landroid/os/Handler;

    .line 103
    :cond_0
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sSubThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static getUiHandler()Landroid/os/Handler;
    .locals 2

    .line 108
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->uiHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->uiHandler:Landroid/os/Handler;

    .line 111
    :cond_0
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->uiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static initThreadExecutor(IILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .locals 1

    .line 70
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {v0, p0, p2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 72
    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p1, 0x1

    invoke-virtual {v0, p1, p2, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    .line 73
    new-instance p0, Lcom/nwd/audioset/utils/ThreadManager$3;

    invoke-direct {p0}, Lcom/nwd/audioset/utils/ThreadManager$3;-><init>()V

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method public static initialize()V
    .locals 3

    .line 58
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->uiHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/16 v1, 0x14

    .line 61
    sget-object v2, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncFactory:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/ThreadManager;->initThreadExecutor(IILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    move-result-object v0

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nwd/audioset/utils/ThreadManager;->uiHandler:Landroid/os/Handler;

    return-void
.end method

.method public static removeOnAsyncThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 161
    sget-object v0, Lcom/nwd/audioset/utils/ThreadManager;->sAsyncExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static removeOnMainThread(Ljava/lang/Runnable;)V
    .locals 1

    .line 136
    invoke-static {}, Lcom/nwd/audioset/utils/ThreadManager;->getUiHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
