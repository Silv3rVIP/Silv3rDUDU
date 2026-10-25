.class Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;
.super Ljava/lang/Object;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskInfo"
.end annotation


# instance fields
.field private mService:Ljava/util/concurrent/ExecutorService;

.field private mTimerTask:Ljava/util/TimerTask;


# direct methods
.method private constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1293
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;->mService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ExecutorService;Lcom/blankj/utilcode/util/ThreadUtils$1;)V
    .locals 0

    .line 1288
    invoke-direct {p0, p1}, Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;-><init>(Ljava/util/concurrent/ExecutorService;)V

    return-void
.end method

.method static synthetic access$000(Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;)Ljava/util/concurrent/ExecutorService;
    .locals 0

    .line 1288
    iget-object p0, p0, Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;->mService:Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method static synthetic access$202(Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 1288
    iput-object p1, p0, Lcom/blankj/utilcode/util/ThreadUtils$TaskInfo;->mTimerTask:Ljava/util/TimerTask;

    return-object p1
.end method
