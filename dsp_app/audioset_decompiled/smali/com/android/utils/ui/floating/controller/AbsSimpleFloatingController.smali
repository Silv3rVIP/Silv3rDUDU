.class public abstract Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;
.super Ljava/lang/Object;


# static fields
.field protected static final DEFAULT_SHOW_TIME:I = 0x1388

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static final MSG_REFRESH_CONTROL:I = 0x2


# instance fields
.field private isAlwayShowController:Z

.field private isShowingControl:Z

.field protected mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPlayControlPanel:Landroid/view/View;

.field protected mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "AbsSimpleFloatingController"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController$1;-><init>(Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->onCreate()V

    return-void
.end method

.method private initControllerView(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v0, 0x50

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x0

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, -0x3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x2

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method


# virtual methods
.method protected abstract afterCreateView()V
.end method

.method protected autoHideControlPanel(I)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->isAlwayShowController:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public initView()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->onCreateView(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mPlayControlPanel:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->initControllerView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->afterCreateView()V

    return-void
.end method

.method protected abstract onCreate()V
.end method

.method protected abstract onCreateView(Landroid/view/LayoutInflater;)Landroid/view/View;
.end method

.method public refreshControlPanel(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->isShowingControl:Z

    if-eqz p1, :cond_0

    :try_start_0
    sget-object p1, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "show control"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mPlayControlPanel:Landroid/view/View;

    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x1388

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->autoHideControlPanel(I)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "hide control"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mPlayControlPanel:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->refreshControlPanel(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mPlayControlPanel:Landroid/view/View;

    return-void
.end method

.method public toggleFullScreen()V
    .locals 3

    iget-object v0, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mPlayControlPanel:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/utils/ui/floating/controller/AbsSimpleFloatingController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
