.class Lcom/android/utils/scanner/FileScanner$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/scanner/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/scanner/FileScanner;


# direct methods
.method constructor <init>(Lcom/android/utils/scanner/FileScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner$1;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/io/File;

    const-string p2, "/mnt/"

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/utils/scanner/FileScanner$1;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v3}, Lcom/android/utils/scanner/FileScanner;->access$100(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "SDcard is found"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/utils/scanner/FileScanner$1;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {p1}, Lcom/android/utils/scanner/FileScanner;->access$200(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/FileScanner$ScanThread;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/utils/scanner/FileScanner$ScanThread;->access$302(Lcom/android/utils/scanner/FileScanner$ScanThread;Z)Z

    :cond_1
    return-void
.end method
