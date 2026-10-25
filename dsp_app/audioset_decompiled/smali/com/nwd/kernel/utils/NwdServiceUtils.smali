.class public Lcom/nwd/kernel/utils/NwdServiceUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/utils/NwdServiceUtils$INWDEventCallback;
    }
.end annotation


# static fields
.field public static EVENT_BACKCAR_STATE:Ljava/lang/String;

.field public static EVENT_MCU_STATE:Ljava/lang/String;

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static mServicesUtils:Lcom/nwd/kernel/utils/NwdServiceUtils;


# instance fields
.field private mCallback:Lcom/nwd/kernel/aidl/IEventCallback$Stub;

.field private mContext:Landroid/content/Context;

.field private mEventCallback:Lcom/nwd/kernel/aidl/IEventCallback;

.field private mEventCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/kernel/utils/NwdServiceUtils$INWDEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

.field private mKernelServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "NwdServiceUtils"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "event_mcu_state"

    sput-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->EVENT_MCU_STATE:Ljava/lang/String;

    const-string v0, "event_backcar_state"

    sput-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->EVENT_BACKCAR_STATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    new-instance v0, Lcom/nwd/kernel/utils/NwdServiceUtils$1;

    invoke-direct {v0, p0}, Lcom/nwd/kernel/utils/NwdServiceUtils$1;-><init>(Lcom/nwd/kernel/utils/NwdServiceUtils;)V

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mCallback:Lcom/nwd/kernel/aidl/IEventCallback$Stub;

    new-instance v0, Lcom/nwd/kernel/utils/NwdServiceUtils$2;

    invoke-direct {v0, p0}, Lcom/nwd/kernel/utils/NwdServiceUtils$2;-><init>(Lcom/nwd/kernel/utils/NwdServiceUtils;)V

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/kernel/utils/NwdServiceUtils;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IEventCallback;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallback:Lcom/nwd/kernel/aidl/IEventCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object p0
.end method

.method static synthetic access$202(Lcom/nwd/kernel/utils/NwdServiceUtils;Lcom/nwd/kernel/aidl/IKernelFeature;)Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object p1
.end method

.method static synthetic access$300()Lcom/android/utils/log/JLog;
    .locals 1

    sget-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->LOG:Lcom/android/utils/log/JLog;

    return-object v0
.end method

.method static synthetic access$400(Lcom/nwd/kernel/utils/NwdServiceUtils;)Lcom/nwd/kernel/aidl/IEventCallback$Stub;
    .locals 0

    iget-object p0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mCallback:Lcom/nwd/kernel/aidl/IEventCallback$Stub;

    return-object p0
.end method

.method private bindKernelService()V
    .locals 4

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.nwd.kernel.service.KernelService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lcom/nwd/kernel/utils/NwdServiceUtils;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    sget-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "connectKernelService"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method private createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
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

.method public static getInstance(Landroid/content/Context;)Lcom/nwd/kernel/utils/NwdServiceUtils;
    .locals 1

    sget-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mServicesUtils:Lcom/nwd/kernel/utils/NwdServiceUtils;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-direct {v0, p0}, Lcom/nwd/kernel/utils/NwdServiceUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mServicesUtils:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-direct {v0}, Lcom/nwd/kernel/utils/NwdServiceUtils;->bindKernelService()V

    :cond_0
    sget-object p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mServicesUtils:Lcom/nwd/kernel/utils/NwdServiceUtils;

    return-object p0
.end method


# virtual methods
.method public getFeature()Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object v0
.end method

.method public registEventCallback(Lcom/nwd/kernel/utils/NwdServiceUtils$INWDEventCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    iget-object v1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mCallback:Lcom/nwd/kernel/aidl/IEventCallback$Stub;

    invoke-interface {v0, v1}, Lcom/nwd/kernel/aidl/IKernelFeature;->unRegistEventCallback(Lcom/nwd/kernel/aidl/IEventCallback;)V

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mKernelServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mServicesUtils:Lcom/nwd/kernel/utils/NwdServiceUtils;

    iput-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unRegistEventCallback(Lcom/nwd/kernel/utils/NwdServiceUtils$INWDEventCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nwd/kernel/utils/NwdServiceUtils;->mEventCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
