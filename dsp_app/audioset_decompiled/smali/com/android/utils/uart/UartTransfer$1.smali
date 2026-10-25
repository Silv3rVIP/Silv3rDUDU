.class Lcom/android/utils/uart/UartTransfer$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/uart/UartTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/uart/UartTransfer;


# direct methods
.method constructor <init>(Lcom/android/utils/uart/UartTransfer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/uart/UartTransfer$1;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer$1;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p2}, Lcom/nwd/kernel/aidl/IKernelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/utils/uart/UartTransfer;->access$202(Lcom/android/utils/uart/UartTransfer;Lcom/nwd/kernel/aidl/IKernelFeature;)Lcom/nwd/kernel/aidl/IKernelFeature;

    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer$1;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p1}, Lcom/android/utils/uart/UartTransfer;->access$200(Lcom/android/utils/uart/UartTransfer;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object p1

    iget-object p2, p0, Lcom/android/utils/uart/UartTransfer$1;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p2}, Lcom/android/utils/uart/UartTransfer;->access$300(Lcom/android/utils/uart/UartTransfer;)Lcom/nwd/kernel/aidl/IKernelCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/nwd/kernel/aidl/IKernelFeature;->registCallback(Lcom/nwd/kernel/aidl/IKernelCallback;)V

    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer$1;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p1}, Lcom/android/utils/uart/UartTransfer;->access$400(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/utils/uart/UartTransfer$UartTransferCallback;->notifyConnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/utils/uart/UartTransfer;->access$100()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string v0, "onServiceDisconnected"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/utils/uart/UartTransfer$1;->this$0:Lcom/android/utils/uart/UartTransfer;

    invoke-static {p1}, Lcom/android/utils/uart/UartTransfer;->access$400(Lcom/android/utils/uart/UartTransfer;)Lcom/android/utils/uart/UartTransfer$UartTransferCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/utils/uart/UartTransfer$UartTransferCallback;->notifyDisconnected()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
