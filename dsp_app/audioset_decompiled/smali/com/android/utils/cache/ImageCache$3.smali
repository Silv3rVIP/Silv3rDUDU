.class Lcom/android/utils/cache/ImageCache$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/cache/ImageCache;->loadBitmap(Ljava/lang/Object;Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/cache/ImageCache;

.field final synthetic val$aKey:Ljava/lang/Object;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/utils/cache/ImageCache;Ljava/lang/Object;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/cache/ImageCache$3;->this$0:Lcom/android/utils/cache/ImageCache;

    iput-object p2, p0, Lcom/android/utils/cache/ImageCache$3;->val$aKey:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/utils/cache/ImageCache$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/android/utils/cache/ImageCache;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no cache found,so create a new bitmap by key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/utils/cache/ImageCache$3;->val$aKey:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/cache/ImageCache$3;->this$0:Lcom/android/utils/cache/ImageCache;

    iget-object v1, p0, Lcom/android/utils/cache/ImageCache$3;->val$aKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/android/utils/cache/ImageCache;->doCreateBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/utils/cache/ImageCache;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "push the new bitmap into cache"

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/utils/cache/ImageCache$3;->this$0:Lcom/android/utils/cache/ImageCache;

    invoke-static {v1}, Lcom/android/utils/cache/ImageCache;->access$000(Lcom/android/utils/cache/ImageCache;)Landroidx/collection/LruCache;

    move-result-object v1

    iget-object v2, p0, Lcom/android/utils/cache/ImageCache$3;->val$aKey:Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Landroidx/collection/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/android/utils/cache/ImageCache$3;->val$handler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
