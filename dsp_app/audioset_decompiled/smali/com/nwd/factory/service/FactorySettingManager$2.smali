.class Lcom/nwd/factory/service/FactorySettingManager$2;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/factory/service/FactorySettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/factory/service/FactorySettingManager;


# direct methods
.method constructor <init>(Lcom/nwd/factory/service/FactorySettingManager;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager$2;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1300()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager$2;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {p1}, Lcom/nwd/factory/service/FactorySettingManager;->importUpdateConfig()V

    goto :goto_0

    :cond_0
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1400()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager$2;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {p1}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object p1

    invoke-static {p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->reset(Lcom/nwd/kernel/aidl/IKernelFeature;)V

    :cond_1
    :goto_0
    return-void
.end method
