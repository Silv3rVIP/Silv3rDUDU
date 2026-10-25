.class public Lcom/android/utils/utils/ToastUtil$MyRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/utils/ToastUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyRunnable"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDrawableID:I

.field private mGravity:I

.field private mText:Ljava/lang/String;

.field private mTextColor:I

.field private mTextSize:F

.field private mXoffset:I

.field private mYoffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IFIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mCount:I

    iput-object p1, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mText:Ljava/lang/String;

    iput p3, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mTextColor:I

    iput p4, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mTextSize:F

    iput p5, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mDrawableID:I

    iput p6, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mGravity:I

    iput p7, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mXoffset:I

    iput p8, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mYoffset:I

    iput p9, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mCount:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Lcom/android/utils/utils/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mText:Ljava/lang/String;

    iget v3, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mTextColor:I

    iget v4, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mTextSize:F

    iget v5, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mDrawableID:I

    const/4 v6, 0x1

    iget v7, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mGravity:I

    iget v8, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mXoffset:I

    iget v9, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mYoffset:I

    invoke-static/range {v1 .. v9}, Lcom/android/utils/utils/ToastUtil;->createToast(Landroid/content/Context;Ljava/lang/String;IFIIIII)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/utils/ToastUtil;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    :cond_0
    iget v0, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mCount:I

    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/utils/utils/ToastUtil;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget v0, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/utils/utils/ToastUtil$MyRunnable;->mCount:I

    invoke-static {}, Lcom/android/utils/utils/ToastUtil;->access$200()Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/utils/utils/ToastUtil;->access$100()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/utils/utils/ToastUtil;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    invoke-static {v0}, Lcom/android/utils/utils/ToastUtil;->access$102(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
