.class public abstract Lcom/android/utils/cache/ImageCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private mCache:Landroidx/collection/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/LruCache<",
            "TT;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field protected mContext:Landroid/content/Context;

.field private mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "ImageCache"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/cache/ImageCache;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/high16 v0, 0x400000

    invoke-direct {p0, p1, v0}, Lcom/android/utils/cache/ImageCache;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/cache/ImageCache;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/utils/cache/ImageCache;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cacheSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v1, p2, 0x400

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " KB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance p1, Lcom/android/utils/cache/ImageCache$1;

    invoke-direct {p1, p0, p2}, Lcom/android/utils/cache/ImageCache$1;-><init>(Lcom/android/utils/cache/ImageCache;I)V

    iput-object p1, p0, Lcom/android/utils/cache/ImageCache;->mCache:Landroidx/collection/LruCache;

    const/4 p1, 0x5

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/cache/ImageCache;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/cache/ImageCache;)Landroidx/collection/LruCache;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/cache/ImageCache;->mCache:Landroidx/collection/LruCache;

    return-object p0
.end method


# virtual methods
.method protected abstract doCreateBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public loadBitmap(Ljava/lang/Object;Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/cache/ImageCache;->mCache:Landroidx/collection/LruCache;

    invoke-virtual {v0, p1}, Landroidx/collection/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/utils/cache/ImageCache$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/utils/cache/ImageCache$2;-><init>(Lcom/android/utils/cache/ImageCache;Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/utils/cache/ImageCache;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/utils/cache/ImageCache$3;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/utils/cache/ImageCache$3;-><init>(Lcom/android/utils/cache/ImageCache;Ljava/lang/Object;Landroid/os/Handler;)V

    invoke-interface {p2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/utils/cache/ImageCache;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get image from cache,Key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Lcom/android/utils/cache/ImageCache$OnImageLoadCompleteCallback;->onImageLoadComplete(Ljava/lang/Object;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/cache/ImageCache;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/utils/cache/ImageCache;->mCache:Landroidx/collection/LruCache;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/collection/LruCache;->evictAll()V

    iput-object v0, p0, Lcom/android/utils/cache/ImageCache;->mCache:Landroidx/collection/LruCache;

    :cond_0
    iput-object v0, p0, Lcom/android/utils/cache/ImageCache;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
