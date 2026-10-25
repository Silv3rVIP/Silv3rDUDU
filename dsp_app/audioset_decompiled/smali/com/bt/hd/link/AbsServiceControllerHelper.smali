.class public abstract Lcom/bt/hd/link/AbsServiceControllerHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private mConnectListener:Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

.field protected mContext:Landroid/content/Context;

.field protected mFeature:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "AbsServiceControllerHelper"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/bt/hd/link/AbsServiceControllerHelper;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/bt/hd/link/AbsServiceControllerHelper$1;

    invoke-direct {v0, p0}, Lcom/bt/hd/link/AbsServiceControllerHelper$1;-><init>(Lcom/bt/hd/link/AbsServiceControllerHelper;)V

    iput-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/bt/hd/link/AbsServiceControllerHelper;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create service controller,context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Lcom/android/utils/log/JLog;
    .locals 1

    sget-object v0, Lcom/bt/hd/link/AbsServiceControllerHelper;->LOG:Lcom/android/utils/log/JLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bt/hd/link/AbsServiceControllerHelper;)Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;
    .locals 0

    iget-object p0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mConnectListener:Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    return-object p0
.end method


# virtual methods
.method public checkContextIsNull(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    :cond_0
    return-void
.end method

.method public connectService(Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;)V
    .locals 3

    iput-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mConnectListener:Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mFeature:Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object p1, Lcom/bt/hd/link/AbsServiceControllerHelper;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect Service context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 p1, 0x1

    :try_start_0
    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :try_start_1
    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;->onServiceConnectSuccess()V

    :cond_2
    :goto_1
    return-void
.end method

.method public disconnectService()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->doServiceDisconnected(Landroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mConnectListener:Lcom/bt/hd/link/AbsServiceControllerHelper$OnServiceConnectSuccessListener;

    iput-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mFeature:Ljava/lang/Object;

    return-void
.end method

.method protected abstract doRelease()V
.end method

.method protected abstract doServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method protected abstract doServiceDisconnected(Landroid/content/ComponentName;)V
.end method

.method public getFeature()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mFeature:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract getServiceIntent()Landroid/content/Intent;
.end method

.method public release()V
    .locals 2

    sget-object v0, Lcom/bt/hd/link/AbsServiceControllerHelper;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "service controller release"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->doRelease()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mFeature:Ljava/lang/Object;

    return-void
.end method

.method public stopService()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bt/hd/link/AbsServiceControllerHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/bt/hd/link/AbsServiceControllerHelper;->getServiceIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
