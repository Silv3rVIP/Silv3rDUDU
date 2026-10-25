.class Lcom/bt/hd/link/AbsServiceControllerHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/hd/link/AbsServiceControllerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bt/hd/link/AbsServiceControllerHelper;


# direct methods
.method constructor <init>(Lcom/bt/hd/link/AbsServiceControllerHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper$1;->this$0:Lcom/bt/hd/link/AbsServiceControllerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    invoke-static {}, Lcom/bt/hd/link/AbsServiceControllerHelper;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v1, "onServiceConnected"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper$1;->this$0:Lcom/bt/hd/link/AbsServiceControllerHelper;

    invoke-virtual {v0, p1, p2}, Lcom/bt/hd/link/AbsServiceControllerHelper;->doServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper$1;->this$0:Lcom/bt/hd/link/AbsServiceControllerHelper;

    invoke-static {p1}, Lcom/bt/hd/link/AbsServiceControllerHelper;->access$100(Lcom/bt/hd/link/AbsServiceControllerHelper;)Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper$1;->this$0:Lcom/bt/hd/link/AbsServiceControllerHelper;

    invoke-static {p1}, Lcom/bt/hd/link/AbsServiceControllerHelper;->access$100(Lcom/bt/hd/link/AbsServiceControllerHelper;)Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;->onServiceConnectSuccess()V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
