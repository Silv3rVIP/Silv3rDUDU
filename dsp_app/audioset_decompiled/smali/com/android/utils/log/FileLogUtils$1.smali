.class Lcom/android/utils/log/FileLogUtils$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/log/FileLogUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/log/FileLogUtils;


# direct methods
.method constructor <init>(Lcom/android/utils/log/FileLogUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-static {v1}, Lcom/android/utils/log/FileLogUtils;->access$000(Lcom/android/utils/log/FileLogUtils;)I

    move-result v1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/log/FileLogUtils;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/utils/log/FileLogUtils;->access$200()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/FileLogUtils;->getFolderTotalSize(Ljava/lang/String;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-static {v3}, Lcom/android/utils/log/FileLogUtils;->access$300(Lcom/android/utils/log/FileLogUtils;)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    iget-object v1, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/utils/log/FileLogUtils;->access$400(Lcom/android/utils/log/FileLogUtils;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    new-instance v1, Ljava/io/File;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-static {v2}, Lcom/android/utils/log/FileLogUtils;->access$500(Lcom/android/utils/log/FileLogUtils;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FileLogUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-static {v1}, Lcom/android/utils/log/FileLogUtils;->access$600(Lcom/android/utils/log/FileLogUtils;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/utils/log/FileLogUtils$1;->this$0:Lcom/android/utils/log/FileLogUtils;

    invoke-static {v0}, Lcom/android/utils/log/FileLogUtils;->access$700(Lcom/android/utils/log/FileLogUtils;)V

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void
.end method
