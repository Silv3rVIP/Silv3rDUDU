.class public Lcom/android/utils/utils/ToastUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/utils/ToastUtil$MyRunnable;
    }
.end annotation


# static fields
.field private static mHandler:Landroid/os/Handler;

.field private static mRunnable:Ljava/lang/Runnable;

.field private static mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/widget/Toast;
    .locals 1

    sget-object v0, Lcom/android/utils/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    sput-object p0, Lcom/android/utils/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/Runnable;
    .locals 1

    sget-object v0, Lcom/android/utils/utils/ToastUtil;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$102(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    sput-object p0, Lcom/android/utils/utils/ToastUtil;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/utils/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static createToast(Landroid/content/Context;Ljava/lang/String;IFIIIII)Landroid/widget/Toast;
    .locals 2

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p4, :cond_0

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    const p0, 0x1080096

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    invoke-virtual {v0, p5}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0, p6, p7, p8}, Landroid/widget/Toast;->setGravity(III)V

    return-object v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;IFII)Landroid/widget/Toast;
    .locals 9

    const v4, 0x1080096

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/android/utils/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;IFIIIII)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;IFIIIII)Landroid/widget/Toast;
    .locals 0

    invoke-static/range {p0 .. p8}, Lcom/android/utils/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;IFIIIII)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-object p0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/Toast;
    .locals 9

    const/4 v2, -0x1

    const/high16 v3, 0x41c80000    # 25.0f

    const v4, 0x1080096

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-static/range {v0 .. v8}, Lcom/android/utils/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;IFIIIII)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToastByCount(Landroid/content/Context;Ljava/lang/String;IFI)V
    .locals 9

    const v4, 0x1080096

    const/16 v6, 0x11

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-static/range {v0 .. v8}, Lcom/android/utils/utils/ToastUtil;->showToastByCount(Landroid/content/Context;Ljava/lang/String;IFIIIII)V

    return-void
.end method

.method public static showToastByCount(Landroid/content/Context;Ljava/lang/String;IFII)V
    .locals 9

    const v4, 0x1080096

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v8}, Lcom/android/utils/utils/ToastUtil;->showToastByCount(Landroid/content/Context;Ljava/lang/String;IFIIIII)V

    return-void
.end method

.method public static showToastByCount(Landroid/content/Context;Ljava/lang/String;IFIII)V
    .locals 9

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v8}, Lcom/android/utils/utils/ToastUtil;->showToastByCount(Landroid/content/Context;Ljava/lang/String;IFIIIII)V

    return-void
.end method

.method public static showToastByCount(Landroid/content/Context;Ljava/lang/String;IFIIIII)V
    .locals 12

    sget-object v0, Lcom/android/utils/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    sput-object v1, Lcom/android/utils/utils/ToastUtil;->mToast:Landroid/widget/Toast;

    :cond_0
    sget-object v0, Lcom/android/utils/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    sget-object v2, Lcom/android/utils/utils/ToastUtil;->mRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sput-object v1, Lcom/android/utils/utils/ToastUtil;->mRunnable:Ljava/lang/Runnable;

    :cond_1
    sput-object v1, Lcom/android/utils/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/utils/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/utils/utils/ToastUtil$MyRunnable;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p5

    invoke-direct/range {v2 .. v11}, Lcom/android/utils/utils/ToastUtil$MyRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;IFIIIII)V

    sput-object v0, Lcom/android/utils/utils/ToastUtil;->mRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/android/utils/utils/ToastUtil;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public static showToastLong(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/utils/utils/ToastUtil;->showToastLong(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 6

    const/4 v2, -0x1

    const/16 v3, 0x19

    const/4 v4, 0x1

    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/utils/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToastShort(Landroid/content/Context;I)Landroid/widget/Toast;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/utils/utils/ToastUtil;->showToastShort(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
    .locals 6

    const/4 v2, -0x1

    const/16 v3, 0x19

    const/4 v4, 0x0

    const/16 v5, 0x11

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/utils/utils/ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;IIII)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method
