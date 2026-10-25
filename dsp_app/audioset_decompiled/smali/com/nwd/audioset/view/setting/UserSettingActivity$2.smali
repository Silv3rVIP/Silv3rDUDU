.class Lcom/nwd/audioset/view/setting/UserSettingActivity$2;
.super Ljava/lang/Object;
.source "UserSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/setting/UserSettingActivity;->exportEqFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

.field final synthetic val$eq_Path:Ljava/lang/String;

.field final synthetic val$names:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/setting/UserSettingActivity;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 488
    iput-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

    iput-object p2, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->val$names:Ljava/util/List;

    iput-object p3, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->val$eq_Path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 492
    iget-object v0, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->val$names:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 494
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 495
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2;->val$eq_Path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    invoke-static {v3, v4}, Lcom/nwd/audioset/utils/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 497
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move-object v1, v2

    .line 500
    :cond_0
    invoke-static {v3, v4}, Lcom/nwd/audioset/utils/Utils;->copyFile(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_1
    new-instance v0, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;

    invoke-direct {v0, p0, v1}, Lcom/nwd/audioset/view/setting/UserSettingActivity$2$1;-><init>(Lcom/nwd/audioset/view/setting/UserSettingActivity$2;Ljava/lang/String;)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThreadDelay(Ljava/lang/Runnable;J)V

    return-void
.end method
