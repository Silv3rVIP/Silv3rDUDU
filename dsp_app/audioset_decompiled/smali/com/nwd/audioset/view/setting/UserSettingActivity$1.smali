.class Lcom/nwd/audioset/view/setting/UserSettingActivity$1;
.super Ljava/lang/Object;
.source "UserSettingActivity.java"

# interfaces
.implements Lcom/nwd/audioset/utils/CustomerImportEqSettingDialog$onYesOnclickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/setting/UserSettingActivity;->importEqFile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/setting/UserSettingActivity;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/nwd/audioset/view/setting/UserSettingActivity$1;->this$0:Lcom/nwd/audioset/view/setting/UserSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onYesClick()V
    .locals 4

    .line 436
    invoke-static {}, Lcom/nwd/audioset/view/setting/UserSettingActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "importEqFile \u5bfc\u5165\u6210\u529f,\u5237\u65b0\u6570\u636e"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 437
    new-instance v0, Lcom/nwd/audioset/view/setting/UserSettingActivity$1$1;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/setting/UserSettingActivity$1$1;-><init>(Lcom/nwd/audioset/view/setting/UserSettingActivity$1;)V

    invoke-static {v0}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
