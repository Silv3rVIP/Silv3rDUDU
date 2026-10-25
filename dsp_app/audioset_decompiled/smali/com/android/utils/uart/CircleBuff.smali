.class public Lcom/android/utils/uart/CircleBuff;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private isSameRound:Z

.field private mBuffData:[B

.field private mCapacity:I

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private mReadCondition:Ljava/util/concurrent/locks/Condition;

.field private mReadIndex:I

.field private mWriteCondition:Ljava/util/concurrent/locks/Condition;

.field private mWriteIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "CircleBuff"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    new-instance p1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mReadCondition:Ljava/util/concurrent/locks/Condition;

    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method private isCanReadData()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    if-gt v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    if-gt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private readData()B
    .locals 3

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    aget-byte v0, v0, v1

    :try_start_0
    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    if-lt v2, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    iput v2, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    :cond_1
    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private writeData(B)Z
    .locals 5

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    iget v3, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    if-ge v0, v3, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    iget v3, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    if-ge v0, v3, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    iget v3, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    aput-byte p1, v0, v3

    iget p1, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    if-lt v4, p1, :cond_4

    iget-boolean p1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    iput v2, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mReadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return v1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    iput v0, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    return-void
.end method

.method public getCount()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    add-int/2addr v0, v1

    :goto_0
    sget-object v1, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v0
.end method

.method public getFreeSpace()I
    .locals 2

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    invoke-virtual {p0}, Lcom/android/utils/uart/CircleBuff;->getCount()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public readDataWithBlock()B
    .locals 2

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/utils/uart/CircleBuff;->isCanReadData()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "read await"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mReadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-direct {p0}, Lcom/android/utils/uart/CircleBuff;->readData()B

    move-result v0

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public readDataWithBlock([BII)I
    .locals 3

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/utils/uart/CircleBuff;->isCanReadData()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "read waiting"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mReadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    :goto_1
    iget v2, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    sub-int/2addr v1, v2

    if-le v1, p3, :cond_2

    goto :goto_2

    :cond_2
    move p3, v1

    :goto_2
    :try_start_1
    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    iget v2, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    iget p2, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    if-lt p1, p2, :cond_4

    iget-boolean p1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    iput-boolean p1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    iput v0, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    :cond_4
    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    move v0, p3

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p3, v0

    :goto_5
    sget-object p1, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isSameRound = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ",mReadIndex = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mReadIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return p3
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    iput-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    iput-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mReadCondition:Ljava/util/concurrent/locks/Condition;

    iput-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteCondition:Ljava/util/concurrent/locks/Condition;

    return-void
.end method

.method public writeDataWithBlock(B)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/utils/uart/CircleBuff;->writeData(B)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "write await"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public writeDataWithBlock([BII)V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/utils/uart/CircleBuff;->getFreeSpace()I

    move-result v0

    if-ge v0, p3, :cond_0

    sget-object v0, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "write waiting"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mWriteCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    sub-int/2addr v0, v1

    if-gt v0, p3, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/android/utils/uart/CircleBuff;->mCapacity:I

    iget v1, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    iget v2, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    const/4 v2, 0x0

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    add-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/utils/uart/CircleBuff;->mBuffData:[B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    sget-object p1, Lcom/android/utils/uart/CircleBuff;->LOG:Lcom/android/utils/log/JLog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isSameRound = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/utils/uart/CircleBuff;->isSameRound:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ",mWriteIndex = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/utils/uart/CircleBuff;->mWriteIndex:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mReadCondition:Ljava/util/concurrent/locks/Condition;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signal()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    iget-object p1, p0, Lcom/android/utils/uart/CircleBuff;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method
