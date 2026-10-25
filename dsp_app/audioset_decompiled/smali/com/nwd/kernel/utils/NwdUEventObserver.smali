.class public Lcom/nwd/kernel/utils/NwdUEventObserver;
.super Landroid/os/UEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/utils/NwdUEventObserver$IUEventListener;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static mNwdObserver:Lcom/nwd/kernel/utils/NwdUEventObserver;


# instance fields
.field private MSG_NOTIFY_EVENT:I

.field private mAction:Ljava/lang/String;

.field private mDevName:Ljava/lang/String;

.field private mDevicePathKey:Ljava/lang/String;

.field private mDevicesStateKey:Ljava/lang/String;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/nwd/kernel/utils/NwdUEventObserver$IUEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchNameKey:Ljava/lang/String;

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "NwdUEventObserver"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/utils/NwdUEventObserver;->LOG:Lcom/android/utils/log/JLog;

    const/4 v0, 0x0

    sput-object v0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mNwdObserver:Lcom/nwd/kernel/utils/NwdUEventObserver;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHashMap:Ljava/util/HashMap;

    const-string v0, "SWITCH_STATE"

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicesStateKey:Ljava/lang/String;

    const-string v0, "DEVPATH"

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicePathKey:Ljava/lang/String;

    const-string v0, "SWITCH_NAME"

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mSwitchNameKey:Ljava/lang/String;

    const-string v0, "DEVNAME"

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevName:Ljava/lang/String;

    const-string v0, "ACTION"

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mAction:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->MSG_NOTIFY_EVENT:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "NwdUEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/nwd/kernel/utils/NwdUEventObserver$1;

    iget-object v1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/nwd/kernel/utils/NwdUEventObserver$1;-><init>(Lcom/nwd/kernel/utils/NwdUEventObserver;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/kernel/utils/NwdUEventObserver;)I
    .locals 0

    iget p0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->MSG_NOTIFY_EVENT:I

    return p0
.end method

.method static synthetic access$100(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicePathKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicesStateKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mSwitchNameKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mAction:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/nwd/kernel/utils/NwdUEventObserver;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHashMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static declared-synchronized getInstance()Lcom/nwd/kernel/utils/NwdUEventObserver;
    .locals 2

    const-class v0, Lcom/nwd/kernel/utils/NwdUEventObserver;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/nwd/kernel/utils/NwdUEventObserver;->mNwdObserver:Lcom/nwd/kernel/utils/NwdUEventObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/nwd/kernel/utils/NwdUEventObserver;

    invoke-direct {v1}, Lcom/nwd/kernel/utils/NwdUEventObserver;-><init>()V

    sput-object v1, Lcom/nwd/kernel/utils/NwdUEventObserver;->mNwdObserver:Lcom/nwd/kernel/utils/NwdUEventObserver;

    :cond_0
    sget-object v1, Lcom/nwd/kernel/utils/NwdUEventObserver;->mNwdObserver:Lcom/nwd/kernel/utils/NwdUEventObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public addObserving(Ljava/lang/String;Lcom/nwd/kernel/utils/NwdUEventObserver$IUEventListener;)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/nwd/kernel/utils/NwdUEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nwd/kernel/utils/NwdUEventObserver;->sendEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method public release()V
    .locals 2

    invoke-virtual {p0}, Lcom/nwd/kernel/utils/NwdUEventObserver;->stopObserving()V

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHashMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    iput-object v1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHashMap:Ljava/util/HashMap;

    iput-object v1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mHandlerThread:Landroid/os/HandlerThread;

    sput-object v1, Lcom/nwd/kernel/utils/NwdUEventObserver;->mNwdObserver:Lcom/nwd/kernel/utils/NwdUEventObserver;

    return-void
.end method

.method public declared-synchronized sendEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/nwd/kernel/utils/NwdUEventObserver;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicePathKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicePathKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicesStateKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevicesStateKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mSwitchNameKey:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mDevName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v3, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mSwitchNameKey:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mAction:Ljava/lang/String;

    iget-object v3, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->MSG_NOTIFY_EVENT:I

    iput p1, v0, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdUEventObserver;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
