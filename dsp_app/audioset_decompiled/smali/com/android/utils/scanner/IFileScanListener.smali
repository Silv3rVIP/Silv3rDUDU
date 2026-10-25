.class public interface abstract Lcom/android/utils/scanner/IFileScanListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final RESULT_ERR_CANCEL:I = 0x2

.field public static final RESULT_ERR_UNMOUNT:I = 0x1

.field public static final RESULT_OK:I


# virtual methods
.method public abstract onFileFount(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract onScanFinish(I)V
.end method
