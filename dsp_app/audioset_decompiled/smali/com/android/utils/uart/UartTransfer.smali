.class public Lcom/android/utils/uart/UartTransfer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/uart/UartTransfer$UartTransferCallback;
    }
.end annotation


# static fields
.field public static BAUD_RATE_115200:I

.field public static BAUD_RATE_19200:I

.field public static BAUD_RATE_38400:I

.field public static BAUD_RATE_57600:I

.field public static BAUD_RATE_9600:I

.field private static KEY_UART_TRANSFER_MCU:Ljava/lang/String;

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static mbDebugPrint:Z


# instance fields
.field private mCallback:Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

.field private mContext:Landroid/content/Context;

.field private mKernelCallback:Lcom/nwd/kernel/aidl/IKernelCallback$Stub;

.field private mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

.field private mKernelServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "UartTransfer"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const/4 v0, 0x0

    const-string v3, "persist.sys.nwd.transfer.debug"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    const-string v3, "uart_transfer_mcu"

    sput-object v3, Lcom/android/utils/uart/UartTransfer;->KEY_UART_TRANSFER_MCU:Ljava/lang/String;

    sput v0, Lcom/android/utils/uart/UartTransfer;->BAUD_RATE_9600:I

    sput v2, Lcom/android/utils/uart/UartTransfer;->BAUD_RATE_19200:I

    const/4 v0, 0x2

    sput v0, Lcom/android/utils/uart/UartTransfer;->BAUD_RATE_38400:I

    sput v1, Lcom/android/utils/uart/UartTransfer;->BAUD_RATE_57600:I

    const/4 v0, 0x4

    sput v0, Lcom/android/utils/uart/UartTransfer;->BAUD_RATE_115200:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/utils/uart/UartTransfer$UartTransferCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/utils/uart/UartTransfer$1;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartTransfer$1;-><init>(Lcom/android/utils/uart/UartTransfer;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/android/utils/uart/UartTransfer$2;

    invoke-direct {v0, p0}, Lcom/android/utils/uart/UartTransfer$2;-><init>(Lcom/android/utils/uart/UartTransfer;)V

    iput-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelCallback:Lcom/nwd/kernel/aidl/IKernelCallback$Stub;

    iput-object p1, p0, Lcom/android/utils/uart/UartTransfer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/utils/uart/UartTransfer;->mCallback:Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    return v0
.end method

.method static synthetic access$100()Lcom/android/utils/log/JLog;
    .locals 1

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/utils/uart/UartTransfer;)Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/utils/uart/UartTransfer;Lcom/nwd/kernel/aidl/IKernelFeature;)Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 0

    iput-object p1, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/utils/uart/UartTransfer;)Lcom/nwd/kernel/aidl/IKernelCallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelCallback:Lcom/nwd/kernel/aidl/IKernelCallback$Stub;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartTransfer$UartTransferCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/uart/UartTransfer;->mCallback:Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

    return-object p0
.end method

.method public static getCanUartCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const-string v0, "key_can_uart"

    invoke-static {v0}, Lcom/android/utils/uart/UartTransfer;->getUartConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v1

    const-string v2, "/dev/ttyMSM0"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "mcu_version"

    invoke-static {p0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "V6.4"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "V6.5"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "V6.6"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v2

    :cond_1
    sget-object v1, Lcom/android/utils/uart/UartTransfer;->KEY_UART_TRANSFER_MCU:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/utils/uart/UartTransfer;->getUartConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    sget-boolean p0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCanUartCode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_4
    return-object v0
.end method

.method public static getUartConfigValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    :try_start_0
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/nwd/kernel/utils/KernelConstant;->UART_CONFIG:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v3}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-virtual {v1, p0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static isUartTransferMcu(Landroid/content/Context;)Z
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mcu_version"

    invoke-static {v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "remember_mcu_version"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "V6.4"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "V6.5"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "V6.6"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sget-object v3, Lcom/android/utils/uart/UartTransfer;->KEY_UART_TRANSFER_MCU:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/utils/uart/UartTransfer;->getUartConfigValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_2
    array-length v4, v3

    if-ge v1, v4, :cond_3

    aget-object v4, v3, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v2, v0

    :goto_3
    sget-boolean p0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz p0, :cond_4

    sget-object p0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isUartTransferMcu "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_4
    return v2
.end method


# virtual methods
.method public connect()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/utils/uart/UartTransfer;->disconnect()V

    sget-boolean v0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "connect()"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.kernel.service.KernelService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.nwd.kernel"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/utils/uart/UartTransfer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/utils/uart/UartTransfer;->mKernelServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public disconnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    if-eqz v0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "unbindService()"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/utils/uart/UartTransfer;->mKernelServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    iget-object v1, p0, Lcom/android/utils/uart/UartTransfer;->mKernelCallback:Lcom/nwd/kernel/aidl/IKernelCallback$Stub;

    invoke-interface {v0, v1}, Lcom/nwd/kernel/aidl/IKernelFeature;->unRegistCallback(Lcom/nwd/kernel/aidl/IKernelCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    :cond_1
    return-void
.end method

.method public sendUartBaudRate(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendUartBaudRate "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    const/16 v1, 0x20

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    :try_start_0
    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-interface {p1, v0}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "sendUartBaudRate error"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendUartProtocal([B)V
    .locals 4

    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "---------------send---------------"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p1}, Lcom/android/utils/log/JLog;->print([B)V

    sget-object v0, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "----------------------------------"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x3

    const/16 v1, 0x20

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/nwd/kernel/utils/KernelProtocal;->generateNullProtocal(IBB)[B

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v1

    const/4 v2, 0x0

    array-length v3, p1

    invoke-static {p1, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lcom/nwd/kernel/utils/KernelProtocal;->calCheckSumAndWriteEndOfData([B)V

    :try_start_0
    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-interface {p1, v0}, Lcom/nwd/kernel/aidl/IKernelFeature;->request([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/utils/uart/UartTransfer;->mbDebugPrint:Z

    if-eqz p1, :cond_2

    sget-object p1, Lcom/android/utils/uart/UartTransfer;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "sendUartProtocal error"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
