.class public Lcom/android/utils/scanner/FileScanner;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/scanner/IFileScanner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/scanner/FileScanner$ScanThread;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/utils/scanner/IFileScanner<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field public static final LOG:Lcom/android/utils/log/JLog;

.field private static final TAG:Ljava/lang/String; = "FileScanner"


# instance fields
.field SDCardBroadcast:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mFileflter:Ljava/io/FileFilter;

.field private mIsScanFinished:Z

.field private mListener:Lcom/android/utils/scanner/IFileScanListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/utils/scanner/IFileScanListener<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mNoScanFile:Ljava/lang/String;

.field private mSDString:Ljava/lang/String;

.field private mScanThread:Lcom/android/utils/scanner/FileScanner$ScanThread;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "FileScanner"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/scanner/FileScanner;->mIsScanFinished:Z

    new-instance p1, Lcom/android/utils/scanner/FileScanner$1;

    invoke-direct {p1, p0}, Lcom/android/utils/scanner/FileScanner$1;-><init>(Lcom/android/utils/scanner/FileScanner;)V

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner;->SDCardBroadcast:Landroid/content/BroadcastReceiver;

    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "file"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/utils/scanner/FileScanner;->SDCardBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/FileScanner;->mSDString:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/FileScanner$ScanThread;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/FileScanner;->mScanThread:Lcom/android/utils/scanner/FileScanner$ScanThread;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/utils/scanner/FileScanner;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/scanner/FileScanner;->mIsScanFinished:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/utils/scanner/FileScanner;)Ljava/io/FileFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/FileScanner;->mFileflter:Ljava/io/FileFilter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/FileScanner;->mNoScanFile:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/IFileScanListener;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/scanner/FileScanner;->mListener:Lcom/android/utils/scanner/IFileScanListener;

    return-object p0
.end method


# virtual methods
.method public cancelScan()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mScanThread:Lcom/android/utils/scanner/FileScanner$ScanThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/utils/scanner/FileScanner$ScanThread;->access$002(Lcom/android/utils/scanner/FileScanner$ScanThread;Z)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/scanner/FileScanner;->mIsScanFinished:Z

    return-void
.end method

.method public isScanning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/utils/scanner/FileScanner;->mIsScanFinished:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/utils/scanner/FileScanner;->SDCardBroadcast:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mContext:Landroid/content/Context;

    return-void
.end method

.method public scan(Ljava/lang/String;)V
    .locals 3

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mSDString:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/android/utils/scanner/FileScanner;->mIsScanFinished:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/scanner/FileScanner;->mIsScanFinished:Z

    new-instance v0, Lcom/android/utils/scanner/FileScanner$ScanThread;

    invoke-direct {v0, p0}, Lcom/android/utils/scanner/FileScanner$ScanThread;-><init>(Lcom/android/utils/scanner/FileScanner;)V

    iput-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mScanThread:Lcom/android/utils/scanner/FileScanner$ScanThread;

    invoke-virtual {v0, p1}, Lcom/android/utils/scanner/FileScanner$ScanThread;->setStr(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner;->mScanThread:Lcom/android/utils/scanner/FileScanner$ScanThread;

    invoke-virtual {v0}, Lcom/android/utils/scanner/FileScanner$ScanThread;->start()V

    sget-object v0, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start scan = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setFileFilter(Ljava/io/FileFilter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner;->mFileflter:Ljava/io/FileFilter;

    return-void
.end method

.method public setFileScanListener(Lcom/android/utils/scanner/IFileScanListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/utils/scanner/IFileScanListener<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner;->mListener:Lcom/android/utils/scanner/IFileScanListener;

    return-void
.end method

.method public setNoScanFile(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner;->mNoScanFile:Ljava/lang/String;

    return-void
.end method
