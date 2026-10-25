.class public Lcom/android/utils/adapter/ApnManagerFactor;
.super Ljava/lang/Object;


# static fields
.field static iApnManager:Lcom/android/utils/adapter/IApnManager;

.field private static iApnManagerFactor:Lcom/android/utils/adapter/ApnManagerFactor;

.field private static iContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/utils/adapter/ApnManagerFactor;
    .locals 1

    const-class v0, Lcom/android/utils/adapter/ApnManagerFactor;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lcom/android/utils/adapter/ApnManagerFactor;->iContext:Landroid/content/Context;

    sget-object p0, Lcom/android/utils/adapter/ApnManagerFactor;->iApnManagerFactor:Lcom/android/utils/adapter/ApnManagerFactor;

    if-nez p0, :cond_0

    new-instance p0, Lcom/android/utils/adapter/ApnManagerFactor;

    invoke-direct {p0}, Lcom/android/utils/adapter/ApnManagerFactor;-><init>()V

    sput-object p0, Lcom/android/utils/adapter/ApnManagerFactor;->iApnManagerFactor:Lcom/android/utils/adapter/ApnManagerFactor;

    :cond_0
    sget-object p0, Lcom/android/utils/adapter/ApnManagerFactor;->iApnManagerFactor:Lcom/android/utils/adapter/ApnManagerFactor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final create()Lcom/android/utils/adapter/IApnManager;
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/utils/adapter/ApnManagerFactor;->create(I)Lcom/android/utils/adapter/IApnManager;

    move-result-object v0

    return-object v0
.end method

.method public final create(I)Lcom/android/utils/adapter/IApnManager;
    .locals 0

    new-instance p1, Lcom/android/utils/adapter/Common_ApnManager;

    invoke-direct {p1}, Lcom/android/utils/adapter/Common_ApnManager;-><init>()V

    sput-object p1, Lcom/android/utils/adapter/ApnManagerFactor;->iApnManager:Lcom/android/utils/adapter/IApnManager;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
