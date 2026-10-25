.class public interface abstract Lcom/android/utils/scanner/IFileScanner;
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


# virtual methods
.method public abstract cancelScan()V
.end method

.method public abstract isScanning()Z
.end method

.method public abstract scan(Ljava/lang/String;)V
.end method

.method public abstract setFileFilter(Ljava/io/FileFilter;)V
.end method

.method public abstract setFileScanListener(Lcom/android/utils/scanner/IFileScanListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/utils/scanner/IFileScanListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setNoScanFile(Ljava/lang/String;)V
.end method
