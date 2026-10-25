.class public Lcom/android/utils/uart/UartWorker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;
    }
.end annotation


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;

.field private static final MCU_BUFFER_SIZE:I = 0x2800


# instance fields
.field private isRunningFlag:I

.field private mAnalyseRunnable:Ljava/lang/Runnable;

.field private mBlockQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private mCommunication:Lcom/android/utils/uart/ICommunicator;

.field private mDistributeListener:Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;

.field private mDistributionRunnable:Ljava/lang/Runnable;

.field private mReadRunnable:Ljava/lang/Runnable;

.field private mReadingCache:Lcom/android/utils/uart/CircleBuff;

.field private mUartProtocal:Lcom/android/utils/uart/IUartProtocal;

.field private mUartTransfer:Lcom/android/utils/uart/UartTransfer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "UartWorker"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Lcom/android/utils/uart/ICommunicator;Lcom/android/utils/uart/IUartProtocal;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/utils/uart/UartWorker$1;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$1;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/UartWorker$2;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$2;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mAnalyseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/UartWorker$3;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$3;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mDistributionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/CircleBuff;

    const/16 v1, 0x2800

    invoke-direct {v0, v1}, Lcom/android/utils/uart/CircleBuff;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    iput-object p2, p0, Lcom/android/utils/uart/UartWorker;->mUartProtocal:Lcom/android/utils/uart/IUartProtocal;

    return-void
.end method

.method public constructor <init>(Lcom/android/utils/uart/UartTransfer;Lcom/android/utils/uart/IUartProtocal;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/utils/uart/UartWorker$1;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$1;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/UartWorker$2;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$2;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mAnalyseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/UartWorker$3;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$3;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mDistributionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/CircleBuff;

    const/16 v1, 0x2800

    invoke-direct {v0, v1}, Lcom/android/utils/uart/CircleBuff;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p1}, Lcom/android/utils/uart/UartCommunication;->getInstance(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartCommunication;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    iput-object p2, p0, Lcom/android/utils/uart/UartWorker;->mUartProtocal:Lcom/android/utils/uart/IUartProtocal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILcom/android/utils/uart/IUartProtocal;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v0, Lcom/android/utils/uart/UartWorker$1;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$1;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/UartWorker$2;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$2;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mAnalyseRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/UartWorker$3;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartWorker$3;-><init>(Lcom/android/utils/uart/UartWorker;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mDistributionRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/utils/uart/CircleBuff;

    const/16 v1, 0x2800

    invoke-direct {v0, v1}, Lcom/android/utils/uart/CircleBuff;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    invoke-static {p1, p2, p3}, Lcom/android/utils/uart/UartCommunication;->getInstance(Ljava/lang/String;II)Lcom/android/utils/uart/UartCommunication;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    iput-object p4, p0, Lcom/android/utils/uart/UartWorker;->mUartProtocal:Lcom/android/utils/uart/IUartProtocal;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/uart/UartWorker;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/uart/UartWorker;->isRunningFlag:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/ICommunicator;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/CircleBuff;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/IUartProtocal;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartWorker;->mUartProtocal:Lcom/android/utils/uart/IUartProtocal;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/utils/uart/UartWorker;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartWorker;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/utils/uart/UartWorker;)Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartWorker;->mDistributeListener:Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;

    return-object p0
.end method

.method private initWrokingThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/utils/uart/UartTransfer;->connect()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/utils/uart/UartWorker;->mReadRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/utils/uart/UartWorker;->mAnalyseRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/utils/uart/UartWorker;->mDistributionRunnable:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public getCommunicator()Lcom/android/utils/uart/ICommunicator;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    return-object v0
.end method

.method public getWriter()Lcom/android/utils/uart/UartCommunication;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    check-cast v0, Lcom/android/utils/uart/UartCommunication;

    return-object v0
.end method

.method public readData([B)V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/utils/uart/CircleBuff;->writeDataWithBlock([BII)V

    return-void
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "=====.release()"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/utils/uart/UartWorker;->stopCommunicate()V

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/utils/uart/CircleBuff;->release()V

    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mReadingCache:Lcom/android/utils/uart/CircleBuff;

    :cond_0
    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mReadRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mAnalyseRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mBlockQueue:Ljava/util/concurrent/BlockingQueue;

    :cond_1
    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mDistributionRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/utils/uart/ICommunicator;->release()V

    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mCommunication:Lcom/android/utils/uart/ICommunicator;

    :cond_2
    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mUartProtocal:Lcom/android/utils/uart/IUartProtocal;

    iget-object v0, p0, Lcom/android/utils/uart/UartWorker;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/utils/uart/UartTransfer;->disconnect()V

    iput-object v1, p0, Lcom/android/utils/uart/UartWorker;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    :cond_3
    return-void
.end method

.method public setProtocalDistributeListener(Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/uart/UartWorker;->mDistributeListener:Lcom/android/utils/uart/UartWorker$OnProtocalDistributeListener;

    return-void
.end method

.method public startCommunicate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/uart/UartWorker;->initWrokingThread()V

    return-void
.end method

.method public stopCommunicate()V
    .locals 2

    sget-object v0, Lcom/android/utils/uart/UartWorker;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "stop communicaate"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/utils/uart/UartWorker;->isRunningFlag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/utils/uart/UartWorker;->isRunningFlag:I

    return-void
.end method
