.class Lcom/android/utils/uart/UartTransfer$2;
.super Lcom/nwd/kernel/aidl/IKernelCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/uart/UartTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mResponseType:[B

.field final synthetic this$0:Lcom/android/utils/uart/UartTransfer;


# direct methods
.method constructor <init>(Lcom/android/utils/uart/UartTransfer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/utils/uart/UartTransfer$2;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-direct {p0}, Lcom/nwd/kernel/aidl/IKernelCallback$Stub;-><init>()V

    const/4 p1, 0x1

    new-array p1, p1, [B

    const/4 v0, 0x0

    const/16 v1, 0x20

    aput-byte v1, p1, v0

    iput-object p1, p0, Lcom/android/utils/uart/UartTransfer$2;->mResponseType:[B

    return-void
.end method


# virtual methods
.method public getCanResponseType()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer$2;->mResponseType:[B

    return-object v0
.end method

.method public response([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/uart/UartTransfer$2;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {v0}, Lcom/android/utils/uart/UartTransfer;->access$400(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataStartOffset([B)B

    move-result v0

    invoke-static {p1}, Lcom/nwd/kernel/utils/KernelProtocal;->getProtocalDataLength([B)I

    move-result v1

    new-array v2, v1, [B

    const/4 v3, 0x0

    invoke-static {p1, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string v0, "---------------receive---------------"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/utils/log/JLog;->print([B)V

    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string v0, "-------------------------------------"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer$2;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p1}, Lcom/android/utils/uart/UartTransfer;->access$400(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/android/utils/uart/UartTransfer$UartTransferCallback;->notifyUartData([B)V

    :cond_1
    return-void
.end method

.method public responseSourceState(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
