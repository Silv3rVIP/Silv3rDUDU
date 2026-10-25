.class public Lcom/android/utils/eventbus/EventBus;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final MSG_NOTIFY_EVENT:I

.field private static instance:Lcom/android/utils/eventbus/EventBus;


# instance fields
.field private isRunningFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private mRegistEventList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/utils/eventbus/IEventListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRunningEventList:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/android/utils/eventbus/BusEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mWaittingFireEventList:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/utils/eventbus/BusEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "EventBus"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/eventbus/EventBus;->isRunningFlag:Z

    new-instance v0, Lcom/android/utils/eventbus/EventBus$2;

    invoke-direct {v0, p0}, Lcom/android/utils/eventbus/EventBus$2;-><init>(Lcom/android/utils/eventbus/EventBus;)V

    iput-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mWaittingFireEventList:Ljava/util/Map;

    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRunningEventList:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/eventbus/EventBus;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/utils/eventbus/EventBus;->isRunningFlag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/utils/eventbus/EventBus;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/eventbus/EventBus;->mRunningEventList:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/eventbus/EventBus;Lcom/android/utils/eventbus/BusEvent;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/utils/eventbus/EventBus;->notifyFireEvent(Lcom/android/utils/eventbus/BusEvent;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/utils/eventbus/EventBus;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/eventbus/EventBus;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addEventToBus(Lcom/android/utils/eventbus/BusEvent;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to bus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRunningEventList:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static final getInstance()Lcom/android/utils/eventbus/EventBus;
    .locals 1

    sget-object v0, Lcom/android/utils/eventbus/EventBus;->instance:Lcom/android/utils/eventbus/EventBus;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/utils/eventbus/EventBus;

    invoke-direct {v0}, Lcom/android/utils/eventbus/EventBus;-><init>()V

    sput-object v0, Lcom/android/utils/eventbus/EventBus;->instance:Lcom/android/utils/eventbus/EventBus;

    :cond_0
    sget-object v0, Lcom/android/utils/eventbus/EventBus;->instance:Lcom/android/utils/eventbus/EventBus;

    return-object v0
.end method

.method private notifyFireEvent(Lcom/android/utils/eventbus/BusEvent;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/utils/eventbus/BusEvent;->getEventName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/eventbus/IEventListener;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_2

    invoke-interface {v1, p1}, Lcom/android/utils/eventbus/IEventListener;->doInUiThread(Lcom/android/utils/eventbus/BusEvent;)V

    goto :goto_0

    :cond_2
    invoke-interface {v1, p1}, Lcom/android/utils/eventbus/IEventListener;->doInBackgroundThread(Lcom/android/utils/eventbus/BusEvent;)V

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public clearEvent(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear event for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mWaittingFireEventList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs fireEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/utils/eventbus/BusEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/utils/eventbus/BusEvent;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/utils/eventbus/EventBus;->addEventToBus(Lcom/android/utils/eventbus/BusEvent;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/utils/eventbus/EventBus;->mWaittingFireEventList:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to waitting list"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public initBus()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/utils/eventbus/EventBus;->isRunningFlag:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/eventbus/EventBus;->isRunningFlag:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/utils/eventbus/EventBus$1;

    invoke-direct {v1, p0}, Lcom/android/utils/eventbus/EventBus$1;-><init>(Lcom/android/utils/eventbus/EventBus;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    sget-object v0, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "bus init success"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized registListener(Ljava/lang/String;Ljava/lang/String;Lcom/android/utils/eventbus/IEventListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "regist listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object p2, p0, Lcom/android/utils/eventbus/EventBus;->mWaittingFireEventList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/utils/eventbus/EventBus;->mWaittingFireEventList:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/utils/eventbus/BusEvent;

    invoke-direct {p0, p2}, Lcom/android/utils/eventbus/EventBus;->addEventToBus(Lcom/android/utils/eventbus/BusEvent;)V

    invoke-virtual {p0, p1}, Lcom/android/utils/eventbus/EventBus;->clearEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/eventbus/EventBus;->isRunningFlag:Z

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iput-object v1, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    :cond_0
    sput-object v1, Lcom/android/utils/eventbus/EventBus;->instance:Lcom/android/utils/eventbus/EventBus;

    return-void
.end method

.method public unRegistListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/utils/eventbus/EventBus;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregist listener for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/eventbus/EventBus;->mRegistEventList:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
