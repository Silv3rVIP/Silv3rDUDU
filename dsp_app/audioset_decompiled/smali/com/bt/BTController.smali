.class public Lcom/bt/BTController;
.super Lcom/android/utils/utils/AbsServiceControllerHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/BTController$BtListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/utils/utils/AbsServiceControllerHelper<",
        "Lcom/bt/BTFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static instance:Lcom/bt/BTController;


# instance fields
.field private mBTPIMCallback:Lcom/bt/BTPIMCallback$Stub;

.field private mBtListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bt/BTController$BtListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "BTController"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/bt/BTController;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/utils/AbsServiceControllerHelper;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/bt/BTController$1;

    invoke-direct {p1, p0}, Lcom/bt/BTController$1;-><init>(Lcom/bt/BTController;)V

    iput-object p1, p0, Lcom/bt/BTController;->mBTPIMCallback:Lcom/bt/BTPIMCallback$Stub;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/bt/BTController;->mBtListener:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/bt/BTController;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/bt/BTController;->mBtListener:Ljava/util/List;

    return-object p0
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/bt/BTController;
    .locals 1

    sget-object v0, Lcom/bt/BTController;->instance:Lcom/bt/BTController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bt/BTController;

    invoke-direct {v0, p0}, Lcom/bt/BTController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bt/BTController;->instance:Lcom/bt/BTController;

    :cond_0
    sget-object v0, Lcom/bt/BTController;->instance:Lcom/bt/BTController;

    iput-object p0, v0, Lcom/bt/BTController;->mContext:Landroid/content/Context;

    sget-object p0, Lcom/bt/BTController;->instance:Lcom/bt/BTController;

    return-object p0
.end method


# virtual methods
.method public addBtListener(Lcom/bt/BTController$BtListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bt/BTController;->mBtListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bt/BTController;->mBtListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ResolveInfo;

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object p1

    :cond_1
    :goto_0
    return-object p2
.end method

.method protected doRelease()V
    .locals 2

    sget-object v0, Lcom/bt/BTController;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "doRelease"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bt/BTController;->mFeature:Ljava/lang/Object;

    sput-object v0, Lcom/bt/BTController;->instance:Lcom/bt/BTController;

    iput-object v0, p0, Lcom/bt/BTController;->mBTPIMCallback:Lcom/bt/BTPIMCallback$Stub;

    return-void
.end method

.method protected doServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-static {p2}, Lcom/bt/BTFeature$Stub;->asInterface(Landroid/os/IBinder;)Lcom/bt/BTFeature;

    move-result-object p1

    iput-object p1, p0, Lcom/bt/BTController;->mFeature:Ljava/lang/Object;

    iget-object p1, p0, Lcom/bt/BTController;->mFeature:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/bt/BTController;->mFeature:Ljava/lang/Object;

    check-cast p1, Lcom/bt/BTFeature;

    iget-object p2, p0, Lcom/bt/BTController;->mBTPIMCallback:Lcom/bt/BTPIMCallback$Stub;

    invoke-interface {p1, p2}, Lcom/bt/BTFeature;->registPIMCallback(Lcom/bt/BTPIMCallback;)V
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

.method protected doServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/bt/BTController;->mFeature:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/bt/BTController;->mFeature:Ljava/lang/Object;

    check-cast p1, Lcom/bt/BTFeature;

    iget-object v0, p0, Lcom/bt/BTController;->mBTPIMCallback:Lcom/bt/BTPIMCallback$Stub;

    invoke-interface {p1, v0}, Lcom/bt/BTFeature;->unregistPIMCallback(Lcom/bt/BTPIMCallback;)V
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

.method protected getServiceIntent()Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/bt/BTController;->instance:Lcom/bt/BTController;

    iget-object v0, v0, Lcom/bt/BTController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.bt.ACTION_START_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/bt/BTController;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public removeBtListener(Lcom/bt/BTController$BtListener;)V
    .locals 1

    iget-object v0, p0, Lcom/bt/BTController;->mBtListener:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
