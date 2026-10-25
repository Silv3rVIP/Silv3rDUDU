.class public Lcom/nwd/kernel/source/ProtocalUtil;
.super Ljava/lang/Object;


# static fields
.field private static isCanWriteData:Z = true

.field private static isNoCommunication:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isCanWriteData2Uart()Z
    .locals 1

    sget-boolean v0, Lcom/nwd/kernel/source/ProtocalUtil;->isCanWriteData:Z

    return v0
.end method

.method public static final isNoCommunication()Z
    .locals 1

    sget-boolean v0, Lcom/nwd/kernel/source/ProtocalUtil;->isNoCommunication:Z

    return v0
.end method

.method public static final setCanWriteData2Uart(Z)V
    .locals 0

    sput-boolean p0, Lcom/nwd/kernel/source/ProtocalUtil;->isCanWriteData:Z

    return-void
.end method

.method public static final setNoCommunication(Z)V
    .locals 3

    sget-object v0, Lcom/nwd/kernel/service/KernelService;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNoCommunication = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sput-boolean p0, Lcom/nwd/kernel/source/ProtocalUtil;->isNoCommunication:Z

    return-void
.end method

.method public static final writeDataToMCU(Lcom/android/utils/uart/ICommunicator;[B)V
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/source/ProtocalUtil;->isCanWriteData2Uart()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lcom/nwd/kernel/service/KernelService;->LOG:Lcom/android/utils/log/JLog;

    const-string p1, "can not write data 2 uart !!!!!!!!!"

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/utils/uart/ICommunicator;->writeData([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
