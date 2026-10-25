.class Lcom/android/utils/scanner/AudioScanner$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/scanner/IFileScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/scanner/AudioScanner;->setFileScanListener(Lcom/android/utils/scanner/IFileScanListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/utils/scanner/IFileScanListener<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/scanner/AudioScanner;


# direct methods
.method constructor <init>(Lcom/android/utils/scanner/AudioScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/AudioScanner$1;->this$0:Lcom/android/utils/scanner/AudioScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFileFount(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner$1;->this$0:Lcom/android/utils/scanner/AudioScanner;

    invoke-static {v0, p1}, Lcom/android/utils/scanner/AudioScanner;->access$200(Lcom/android/utils/scanner/AudioScanner;Ljava/io/File;)Lcom/android/utils/scanner/AudioFile;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/utils/scanner/AudioScanner;->access$102(Lcom/android/utils/scanner/AudioScanner;Lcom/android/utils/scanner/AudioFile;)Lcom/android/utils/scanner/AudioFile;

    iget-object p1, p0, Lcom/android/utils/scanner/AudioScanner$1;->this$0:Lcom/android/utils/scanner/AudioScanner;

    invoke-static {p1}, Lcom/android/utils/scanner/AudioScanner;->access$000(Lcom/android/utils/scanner/AudioScanner;)Lcom/android/utils/scanner/IFileScanListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner$1;->this$0:Lcom/android/utils/scanner/AudioScanner;

    invoke-static {v0}, Lcom/android/utils/scanner/AudioScanner;->access$100(Lcom/android/utils/scanner/AudioScanner;)Lcom/android/utils/scanner/AudioFile;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/utils/scanner/IFileScanListener;->onFileFount(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onFileFount(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/utils/scanner/AudioScanner$1;->onFileFount(Ljava/io/File;)V

    return-void
.end method

.method public onScanFinish(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/scanner/AudioScanner$1;->this$0:Lcom/android/utils/scanner/AudioScanner;

    invoke-static {v0}, Lcom/android/utils/scanner/AudioScanner;->access$000(Lcom/android/utils/scanner/AudioScanner;)Lcom/android/utils/scanner/IFileScanListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/utils/scanner/IFileScanListener;->onScanFinish(I)V

    return-void
.end method
