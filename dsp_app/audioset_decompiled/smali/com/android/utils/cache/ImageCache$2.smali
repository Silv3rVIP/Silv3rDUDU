.class Lcom/android/utils/cache/ImageCache$2;
.super Landroid/os/Handler;


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

.field final synthetic val$aCallback:Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;

.field final synthetic val$aKey:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/utils/cache/ImageCache;Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/cache/ImageCache$2;->this$0:Lcom/android/utils/cache/ImageCache;

    iput-object p2, p0, Lcom/android/utils/cache/ImageCache$2;->val$aCallback:Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;

    iput-object p3, p0, Lcom/android/utils/cache/ImageCache$2;->val$aKey:Ljava/lang/Object;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/cache/ImageCache$2;->val$aCallback:Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;

    iget-object v1, p0, Lcom/android/utils/cache/ImageCache$2;->val$aKey:Ljava/lang/Object;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1, p1}, Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;->onImageLoadComplete(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    return-void
.end method
