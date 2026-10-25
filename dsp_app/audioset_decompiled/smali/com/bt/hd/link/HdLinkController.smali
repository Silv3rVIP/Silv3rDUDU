.class public Lcom/bt/hd/link/HdLinkController;
.super Lcom/bt/hd/link/AbsServiceControllerHelper;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bt/hd/link/AbsServiceControllerHelper<",
        "Lcom/bt/hd/link/BluetoothAPI;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static instance:Lcom/bt/hd/link/HdLinkController;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "BluetoothAPI"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/bt/hd/link/HdLinkController;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bt/hd/link/AbsServiceControllerHelper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/bt/hd/link/HdLinkController;
    .locals 1

    sget-object v0, Lcom/bt/hd/link/HdLinkController;->instance:Lcom/bt/hd/link/HdLinkController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bt/hd/link/HdLinkController;

    invoke-direct {v0, p0}, Lcom/bt/hd/link/HdLinkController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bt/hd/link/HdLinkController;->instance:Lcom/bt/hd/link/HdLinkController;

    :cond_0
    sget-object v0, Lcom/bt/hd/link/HdLinkController;->instance:Lcom/bt/hd/link/HdLinkController;

    iput-object p0, v0, Lcom/bt/hd/link/HdLinkController;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/bt/hd/link/HdLinkController;->instance:Lcom/bt/hd/link/HdLinkController;

    return-object p0
.end method


# virtual methods
.method public addSppDataCallback(Lcom/bt/hd/link/SppDataCallBack$Stub;)V
    .locals 1

    iget-object v0, p0, Lcom/bt/hd/link/HdLinkController;->mFeature:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bt/hd/link/HdLinkController;->mFeature:Ljava/lang/Object;

    check-cast v0, Lcom/bt/hd/link/BluetoothAPI;

    invoke-interface {v0, p1}, Lcom/bt/hd/link/BluetoothAPI;->registSppDataCallback(Lcom/bt/hd/link/SppDataCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected doRelease()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bt/hd/link/HdLinkController;->mFeature:Ljava/lang/Object;

    sput-object v0, Lcom/bt/hd/link/HdLinkController;->instance:Lcom/bt/hd/link/HdLinkController;

    return-void
.end method

.method protected doServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/bt/hd/link/BluetoothAPI$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bt/hd/link/BluetoothAPI;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/hd/link/HdLinkController;->mFeature:Ljava/lang/Object;

    return-void
.end method

.method protected doServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method protected getServiceIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.bt.ACTION_START_HDLINK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public removeSppDataCallback(Lcom/bt/hd/link/SppDataCallBack$Stub;)V
    .locals 1

    iget-object v0, p0, Lcom/bt/hd/link/HdLinkController;->mFeature:Ljava/lang/Object;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bt/hd/link/HdLinkController;->mFeature:Ljava/lang/Object;

    check-cast v0, Lcom/bt/hd/link/BluetoothAPI;

    invoke-interface {v0, p1}, Lcom/bt/hd/link/BluetoothAPI;->unregistSppDataCallback(Lcom/bt/hd/link/SppDataCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
