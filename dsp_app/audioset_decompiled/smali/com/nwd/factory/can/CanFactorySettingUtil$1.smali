.class Lcom/nwd/factory/can/CanFactorySettingUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/factory/can/CanFactorySettingUtil;->selectNewCan(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

.field final synthetic val$canNumber:I

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/nwd/factory/can/CanFactorySettingUtil;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    iput-object p2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->val$canNumber:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$000(Lcom/nwd/factory/can/CanFactorySettingUtil;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    invoke-static {}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$100()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v2, "====step1 set system/app can write!=="

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$200(Lcom/nwd/factory/can/CanFactorySettingUtil;Landroid/content/Context;Z)V

    invoke-static {}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$100()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v2, "====step2 delete origin can app!=="

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$300(Lcom/nwd/factory/can/CanFactorySettingUtil;)V

    invoke-static {}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$100()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v2, "====step3 copy new app to system!=="

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    iget v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->val$canNumber:I

    invoke-virtual {v0, v2}, Lcom/nwd/factory/can/CanFactorySettingUtil;->getCanInfoByCanNumber(I)Lcom/nwd/factory/can/CanInfo;

    move-result-object v0

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    const/4 v3, 0x3

    invoke-static {v2, v0, v3}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$400(Lcom/nwd/factory/can/CanFactorySettingUtil;Lcom/nwd/factory/can/CanInfo;I)I

    move-result v2

    invoke-static {}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$100()Lcom/android/utils/log/JLog;

    move-result-object v4

    const-string v5, "====step4 notify listener!=="

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-lt v2, v3, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v2, v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$502(Lcom/nwd/factory/can/CanFactorySettingUtil;Lcom/nwd/factory/can/CanInfo;)Lcom/nwd/factory/can/CanInfo;

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$600(Lcom/nwd/factory/can/CanFactorySettingUtil;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v2}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$700(Lcom/nwd/factory/can/CanFactorySettingUtil;)Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v2}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$700(Lcom/nwd/factory/can/CanFactorySettingUtil;)Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;->onCanCopyFinish(I)V

    :cond_1
    invoke-static {}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$100()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v2, "====step5 set system/app read only=="

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    iget-object v2, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v2, v1}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$200(Lcom/nwd/factory/can/CanFactorySettingUtil;Landroid/content/Context;Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$700(Lcom/nwd/factory/can/CanFactorySettingUtil;)Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v0}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$700(Lcom/nwd/factory/can/CanFactorySettingUtil;)Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;

    move-result-object v0

    const/4 v2, -0x2

    invoke-interface {v0, v2}, Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;->onCanCopyFinish(I)V

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/nwd/factory/can/CanFactorySettingUtil$1;->this$0:Lcom/nwd/factory/can/CanFactorySettingUtil;

    invoke-static {v0, v1}, Lcom/nwd/factory/can/CanFactorySettingUtil;->access$802(Lcom/nwd/factory/can/CanFactorySettingUtil;Z)Z

    return-void
.end method
