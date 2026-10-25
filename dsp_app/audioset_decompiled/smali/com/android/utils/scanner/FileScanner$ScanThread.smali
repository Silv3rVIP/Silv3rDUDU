.class Lcom/android/utils/scanner/FileScanner$ScanThread;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/scanner/FileScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ScanThread"
.end annotation


# instance fields
.field private FileNum:I

.field private mIsRunning:Z

.field private mIsSDcardExists:Z

.field private mResultCode:I

.field private mScanpath:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/utils/scanner/FileScanner;


# direct methods
.method constructor <init>(Lcom/android/utils/scanner/FileScanner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsRunning:Z

    iput-boolean p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsSDcardExists:Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mResultCode:I

    iput p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->FileNum:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/utils/scanner/FileScanner$ScanThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsRunning:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/utils/scanner/FileScanner$ScanThread;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsSDcardExists:Z

    return p1
.end method

.method private isContainsNoScanFile([Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private listenToFile(Ljava/io/File;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {p2}, Lcom/android/utils/scanner/FileScanner;->access$700(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/IFileScanListener;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {p2}, Lcom/android/utils/scanner/FileScanner;->access$700(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/IFileScanListener;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/utils/scanner/IFileScanListener;->onFileFount(Ljava/lang/Object;)V

    iget p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->FileNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->FileNum:I

    :cond_1
    :goto_0
    return-void
.end method

.method private traversal([Ljava/io/File;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-boolean v2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsRunning:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsSDcardExists:Z

    if-eqz v2, :cond_0

    aget-object v2, p1, v1

    invoke-direct {p0, v2, p2}, Lcom/android/utils/scanner/FileScanner$ScanThread;->listenToFile(Ljava/io/File;Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/utils/scanner/FileScanner;->access$402(Lcom/android/utils/scanner/FileScanner;Z)Z

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mScanpath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v3}, Lcom/android/utils/scanner/FileScanner;->access$500(Lcom/android/utils/scanner/FileScanner;)Ljava/io/FileFilter;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v3}, Lcom/android/utils/scanner/FileScanner;->access$500(Lcom/android/utils/scanner/FileScanner;)Ljava/io/FileFilter;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v3}, Lcom/android/utils/scanner/FileScanner;->access$600(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v3}, Lcom/android/utils/scanner/FileScanner;->access$600(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/utils/scanner/FileScanner$ScanThread;->isContainsNoScanFile([Ljava/io/File;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_1
    sget-object v3, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "files.length = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    array-length v3, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_7

    iget-boolean v5, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsRunning:Z

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsSDcardExists:Z

    if-eqz v5, :cond_7

    aget-object v5, v0, v4

    invoke-direct {p0, v5, v2}, Lcom/android/utils/scanner/FileScanner$ScanThread;->listenToFile(Ljava/io/File;Ljava/util/List;)V

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsRunning:Z

    if-eqz v5, :cond_4

    iget-boolean v5, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsSDcardExists:Z

    if-eqz v5, :cond_4

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v6}, Lcom/android/utils/scanner/FileScanner;->access$500(Lcom/android/utils/scanner/FileScanner;)Ljava/io/FileFilter;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v6}, Lcom/android/utils/scanner/FileScanner;->access$500(Lcom/android/utils/scanner/FileScanner;)Ljava/io/FileFilter;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_4

    iget-object v6, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v6}, Lcom/android/utils/scanner/FileScanner;->access$600(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v6}, Lcom/android/utils/scanner/FileScanner;->access$600(Lcom/android/utils/scanner/FileScanner;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/android/utils/scanner/FileScanner$ScanThread;->isContainsNoScanFile([Ljava/io/File;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    invoke-direct {p0, v5, v2}, Lcom/android/utils/scanner/FileScanner$ScanThread;->traversal([Ljava/io/File;Ljava/util/List;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "no files"

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    sget-object v0, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "file not found"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_5
    iget-boolean v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsRunning:Z

    const/4 v2, 0x1

    if-nez v0, :cond_8

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mResultCode:I

    goto :goto_6

    :cond_8
    iget-boolean v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mIsSDcardExists:Z

    if-nez v0, :cond_9

    iput v2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mResultCode:I

    goto :goto_6

    :cond_9
    iput v1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mResultCode:I

    :goto_6
    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v0, v2}, Lcom/android/utils/scanner/FileScanner;->access$402(Lcom/android/utils/scanner/FileScanner;Z)Z

    sget-object v0, Lcom/android/utils/scanner/FileScanner;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Files found : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->FileNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v0}, Lcom/android/utils/scanner/FileScanner;->access$700(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/IFileScanListener;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->this$0:Lcom/android/utils/scanner/FileScanner;

    invoke-static {v0}, Lcom/android/utils/scanner/FileScanner;->access$700(Lcom/android/utils/scanner/FileScanner;)Lcom/android/utils/scanner/IFileScanListener;

    move-result-object v0

    iget v1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mResultCode:I

    invoke-interface {v0, v1}, Lcom/android/utils/scanner/IFileScanListener;->onScanFinish(I)V

    :cond_a
    return-void
.end method

.method setStr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/scanner/FileScanner$ScanThread;->mScanpath:Ljava/lang/String;

    return-void
.end method
