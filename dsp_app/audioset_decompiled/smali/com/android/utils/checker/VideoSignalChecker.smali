.class public Lcom/android/utils/checker/VideoSignalChecker;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ACTION_VIDEO_SIGNAL_STATE:Ljava/lang/String; = "com.nwd.ACTION_VIDEO_SIGNAL_STATE"

.field private static final EXTRA_CAMERA_ID:Ljava/lang/String; = "extra_camera_id"

.field private static final EXTRA_VIDEO_SIGNAL:Ljava/lang/String; = "extra_video_signal"

.field public static final LOG:Lcom/android/utils/log/JLog;

.field private static final MSG_CHECK_VIDEO_SIGNAL:I


# instance fields
.field private isChecking:Z

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCameraId:I

.field private mCheckTimeDelay:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQueryVideoSignalIntent:Landroid/content/Intent;

.field private mVideoSignalListener:Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "VideoSignalChecker"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/checker/VideoSignalChecker;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mCheckTimeDelay:I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.ACTION_QUERY_VIDEO_SIGNAL_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mQueryVideoSignalIntent:Landroid/content/Intent;

    new-instance v0, Lcom/android/utils/checker/VideoSignalChecker$1;

    invoke-direct {v0, p0}, Lcom/android/utils/checker/VideoSignalChecker$1;-><init>(Lcom/android/utils/checker/VideoSignalChecker;)V

    iput-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/utils/checker/VideoSignalChecker$2;

    invoke-direct {v0, p0}, Lcom/android/utils/checker/VideoSignalChecker$2;-><init>(Lcom/android/utils/checker/VideoSignalChecker;)V

    iput-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput p2, p0, Lcom/android/utils/checker/VideoSignalChecker;->mCameraId:I

    iput-object p1, p0, Lcom/android/utils/checker/VideoSignalChecker;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/utils/checker/VideoSignalChecker;->mQueryVideoSignalIntent:Landroid/content/Intent;

    const-string v0, "extra_camera_id"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/utils/checker/VideoSignalChecker;->mVideoSignalListener:Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "com.nwd.ACTION_VIDEO_SIGNAL_STATE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :try_start_0
    iget-object p2, p0, Lcom/android/utils/checker/VideoSignalChecker;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/utils/checker/VideoSignalChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, p3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/checker/VideoSignalChecker;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mQueryVideoSignalIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/utils/checker/VideoSignalChecker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/checker/VideoSignalChecker;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mCheckTimeDelay:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/utils/checker/VideoSignalChecker;)Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mVideoSignalListener:Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/utils/checker/VideoSignalChecker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/utils/checker/VideoSignalChecker;->isChecking:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/utils/checker/VideoSignalChecker;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mCameraId:I

    return p0
.end method


# virtual methods
.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/utils/checker/VideoSignalChecker;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-virtual {p0}, Lcom/android/utils/checker/VideoSignalChecker;->stopChecker()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mVideoSignalListener:Lcom/android/utils/checker/VideoSignalChecker$IVideoSignalListener;

    iput-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCheckTimeDelay(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/checker/VideoSignalChecker;->mCheckTimeDelay:I

    return-void
.end method

.method public startChecker()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->isChecking:Z

    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/utils/checker/VideoSignalChecker;->mCheckTimeDelay:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public stopChecker()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->isChecking:Z

    iget-object v0, p0, Lcom/android/utils/checker/VideoSignalChecker;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method
