.class Lcom/android/utils/utils/AbsServiceControllerHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/utils/AbsServiceControllerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/utils/AbsServiceControllerHelper;


# direct methods
.method constructor <init>(Lcom/android/utils/utils/AbsServiceControllerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/utils/AbsServiceControllerHelper$1;->this$0:Lcom/android/utils/utils/AbsServiceControllerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/android/utils/utils/AbsServiceControllerHelper;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/utils/AbsServiceControllerHelper$1;->this$0:Lcom/android/utils/utils/AbsServiceControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/utils/utils/AbsServiceControllerHelper;->doServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/android/utils/utils/AbsServiceControllerHelper$1;->this$0:Lcom/android/utils/utils/AbsServiceControllerHelper;

    invoke-static {p1}, Lcom/android/utils/utils/AbsServiceControllerHelper;->access$100(Lcom/android/utils/utils/AbsServiceControllerHelper;)Lcom/android/utils/utils/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/utils/utils/AbsServiceControllerHelper$1;->this$0:Lcom/android/utils/utils/AbsServiceControllerHelper;

    invoke-static {p1}, Lcom/android/utils/utils/AbsServiceControllerHelper;->access$100(Lcom/android/utils/utils/AbsServiceControllerHelper;)Lcom/android/utils/utils/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/utils/utils/AbsServiceControllerHelper$OnServiceConnectSuccessListener;->onServiceConnectSuccess()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
