.class public abstract Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;
.super Ljava/lang/Object;


# static fields
.field private static final MSG_CHECK_HAND_BREAK_STATE:I


# instance fields
.field protected mContext:Landroid/app/Activity;

.field private mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Landroid/view/View;

.field private mViewRef:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$1;-><init>(Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$2;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$2;-><init>(Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mContext:Landroid/app/Activity;

    iput p2, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mViewRef:I

    invoke-direct {p0}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mContext:Landroid/app/Activity;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mContext:Landroid/app/Activity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget v1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mViewRef:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method protected abstract getHandBreakChangeAction()[Ljava/lang/String;
.end method

.method protected abstract getState()Z
.end method

.method public hide()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->getState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->hide()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mContext:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onResume()V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->getHandBreakChangeAction()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v0, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mDeviceStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mContext:Landroid/app/Activity;

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mView:Landroid/view/View;

    return-void
.end method

.method public show()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
