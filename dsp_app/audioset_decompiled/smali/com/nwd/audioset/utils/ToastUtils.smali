.class public Lcom/nwd/audioset/utils/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0, p1}, Lcom/nwd/audioset/utils/ToastUtils;->showToastLong(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method public static showToastLong(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    .line 14
    :try_start_0
    new-instance v0, Lcom/nwd/audioset/utils/ToastUtils$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/nwd/audioset/utils/ToastUtils$1;-><init>(ZLandroid/content/Context;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 25
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
