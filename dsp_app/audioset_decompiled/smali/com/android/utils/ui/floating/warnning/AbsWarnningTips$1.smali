.class Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$1;->this$0:Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$1;->this$0:Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;

    invoke-virtual {p2}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->getHandBreakChangeAction()[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips$1;->this$0:Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;

    invoke-static {p1}, Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;->access$000(Lcom/android/utils/ui/floating/warnning/AbsWarnningTips;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
