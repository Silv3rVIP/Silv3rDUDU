.class public Lcom/android/utils/uart/UartCommunication;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/uart/ICommunicator;


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;

.field private static UartCommunicationMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/utils/uart/UartCommunication;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final DEBUG:Z

.field private mInputStream:Ljava/io/InputStream;

.field private mOutputStream:Ljava/io/OutputStream;

.field private mRunningFlag:Z

.field private mSerialPort:Lcom/nwd/SerialPort;

.field private mUartFilePath:Ljava/lang/String;

.field private mUartTransfer:Lcom/android/utils/uart/UartTransfer;

.field private mWriteBlock:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private mWritingRunnable:Ljava/lang/Runnable;

.field private testData:[B

.field private testReadIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "UartCommunication"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/uart/UartCommunication;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/android/utils/uart/UartTransfer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/uart/UartCommunication;->DEBUG:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/utils/uart/UartCommunication;->mRunningFlag:Z

    new-instance v1, Lcom/android/utils/uart/UartCommunication$1;

    invoke-direct {v1, p0}, Lcom/android/utils/uart/UartCommunication$1;-><init>(Lcom/android/utils/uart/UartCommunication;)V

    iput-object v1, p0, Lcom/android/utils/uart/UartCommunication;->mWritingRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/utils/uart/UartCommunication;->testReadIndex:I

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/utils/uart/UartCommunication;->testData:[B

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    return-void

    :array_0
    .array-data 1
        -0x10t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x2t
        0x6t
        -0x10t
        0x4t
        0x3t
        0x5t
        0x1t
        0x0t
        0x5t
        -0x10t
        0x7t
        0x4t
        0x2t
        0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x8t
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/uart/UartCommunication;->DEBUG:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/utils/uart/UartCommunication;->mRunningFlag:Z

    new-instance v2, Lcom/android/utils/uart/UartCommunication$1;

    invoke-direct {v2, p0}, Lcom/android/utils/uart/UartCommunication$1;-><init>(Lcom/android/utils/uart/UartCommunication;)V

    iput-object v2, p0, Lcom/android/utils/uart/UartCommunication;->mWritingRunnable:Ljava/lang/Runnable;

    iput v0, p0, Lcom/android/utils/uart/UartCommunication;->testReadIndex:I

    const/16 v0, 0x19

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/utils/uart/UartCommunication;->testData:[B

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mUartFilePath:Ljava/lang/String;

    new-instance p1, Lcom/nwd/SerialPort;

    invoke-direct {p1, v0, p2, p3}, Lcom/nwd/SerialPort;-><init>(Ljava/io/File;II)V

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mSerialPort:Lcom/nwd/SerialPort;

    invoke-virtual {p1}, Lcom/nwd/SerialPort;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mInputStream:Ljava/io/InputStream;

    iget-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mSerialPort:Lcom/nwd/SerialPort;

    invoke-virtual {p1}, Lcom/nwd/SerialPort;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mOutputStream:Ljava/io/OutputStream;

    :cond_0
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0xa

    invoke-direct {p1, p2, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    iput-object p1, p0, Lcom/android/utils/uart/UartCommunication;->mWriteBlock:Ljava/util/concurrent/BlockingQueue;

    new-instance p1, Ljava/lang/Thread;

    iget-object p2, p0, Lcom/android/utils/uart/UartCommunication;->mWritingRunnable:Ljava/lang/Runnable;

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    nop

    :array_0
    .array-data 1
        -0x10t
        0x5t
        0x1t
        0x1t
        0x1t
        0x0t
        0x2t
        0x6t
        -0x10t
        0x4t
        0x3t
        0x5t
        0x1t
        0x0t
        0x5t
        -0x10t
        0x7t
        0x4t
        0x2t
        0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x8t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/utils/uart/UartCommunication;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/utils/uart/UartCommunication;->mRunningFlag:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/utils/uart/UartCommunication;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartCommunication;->mWriteBlock:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/uart/UartCommunication;)Ljava/io/OutputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartCommunication;->mOutputStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public static final getInstance(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartCommunication;
    .locals 3

    sget-object v0, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    const-string v1, "UartTransfer"

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/uart/UartCommunication;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v2, Lcom/android/utils/uart/UartCommunication;

    invoke-direct {v2, p0}, Lcom/android/utils/uart/UartCommunication;-><init>(Lcom/android/utils/uart/UartTransfer;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-object p0, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    invoke-virtual {p0, v1, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception p0

    move-object v0, v2

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_1
    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;II)Lcom/android/utils/uart/UartCommunication;
    .locals 2

    sget-object v0, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/uart/UartCommunication;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v1, Lcom/android/utils/uart/UartCommunication;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/utils/uart/UartCommunication;-><init>(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget-object p1, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p0

    :goto_1
    invoke-virtual {p0}, Ljava/lang/SecurityException;->printStackTrace()V

    :cond_0
    :goto_2
    return-object v0
.end method

.method private testReadData([BII)I
    .locals 6

    new-instance p3, Ljava/util/Random;

    invoke-direct {p3}, Ljava/util/Random;-><init>()V

    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->testData:[B

    array-length v0, v0

    invoke-virtual {p3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    add-int v2, p2, v1

    iget-object v3, p0, Lcom/android/utils/uart/UartCommunication;->testData:[B

    iget v4, p0, Lcom/android/utils/uart/UartCommunication;->testReadIndex:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/utils/uart/UartCommunication;->testReadIndex:I

    aget-byte v4, v3, v4

    aput-byte v4, p1, v2

    array-length v2, v3

    if-lt v5, v2, :cond_0

    iput v0, p0, Lcom/android/utils/uart/UartCommunication;->testReadIndex:I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 p1, 0x1388

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    return p3
.end method


# virtual methods
.method public declared-synchronized readData([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :cond_0
    const/4 p1, 0x0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mInputStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    iput-object v1, p0, Lcom/android/utils/uart/UartCommunication;->mInputStream:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    iput-object v1, p0, Lcom/android/utils/uart/UartCommunication;->mOutputStream:Ljava/io/OutputStream;

    :cond_1
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mSerialPort:Lcom/nwd/SerialPort;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nwd/SerialPort;->close()V

    iput-object v1, p0, Lcom/android/utils/uart/UartCommunication;->mSerialPort:Lcom/nwd/SerialPort;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/uart/UartCommunication;->mRunningFlag:Z

    iput-object v1, p0, Lcom/android/utils/uart/UartCommunication;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    sget-object v0, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/utils/uart/UartCommunication;->UartCommunicationMap:Ljava/util/WeakHashMap;

    iget-object v1, p0, Lcom/android/utils/uart/UartCommunication;->mUartFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public writeData([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/utils/uart/UartCommunication;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mUartTransfer:Lcom/android/utils/uart/UartTransfer;

    invoke-virtual {v0, p1}, Lcom/android/utils/uart/UartTransfer;->sendUartProtocal([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/utils/uart/UartCommunication;->mWriteBlock:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_0
    return-void
.end method
