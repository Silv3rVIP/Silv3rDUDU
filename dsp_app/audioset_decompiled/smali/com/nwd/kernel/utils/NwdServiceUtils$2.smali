.class Lcom/nwd/kernel/utils/NwdServiceUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/utils/NwdServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;


# direct methods
.method constructor <init>(Lcom/nwd/kernel/utils/NwdServiceUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {p2}, Lcom/nwd/kernel/aidl/IKernelFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$202(Lcom/nwd/kernel/utils/NwdServiceUtils;Lcom/nwd/kernel/aidl/IKernelFeature;)Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$300()Lcom/android/utils/log/JLog;

    move-result-object p1

    const-string p2, "onKernelServiceConnected"

    invoke-virtual {p1, p2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {p1}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$200(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object p1

    iget-object p2, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {p2}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$400(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IEventCallback$Stub;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/nwd/kernel/aidl/IKernelFeature;->registEventCallback(Lcom/nwd/kernel/aidl/IEventCallback;)V
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
    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {p1}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$200(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object p1

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {v0}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$100(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IEventCallback;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/nwd/kernel/aidl/IKernelFeature;->unRegistEventCallback(Lcom/nwd/kernel/aidl/IEventCallback;)V

    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$202(Lcom/nwd/kernel/utils/NwdServiceUtils;Lcom/nwd/kernel/aidl/IKernelFeature;)Lcom/nwd/kernel/aidl/IKernelFeature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
