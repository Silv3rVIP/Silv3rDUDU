.class Lcom/nwd/factory/service/FactorySettingManager$3;
.super Landroid/content/BroadcastReceiver;


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

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager$3;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v0, "com.nwd.ACTION_GET_USB_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    const-string v0, "extra_usb_mode"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "extra_usb_index"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "   mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eq v0, p1, :cond_2

    if-ltz p2, :cond_2

    const/4 p1, 0x3

    if-ge p2, p1, :cond_2

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1500()[I

    move-result-object p1

    aput v0, p1, p2

    goto :goto_0

    :cond_0
    const-string p2, "com.nwd.action.ACTION_BACKCAR_CONFIG_UPDATE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1600()Lcom/nwd/factory/config/FactoryConfigSetting;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1600()Lcom/nwd/factory/config/FactoryConfigSetting;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->release()V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/nwd/factory/service/FactorySettingManager;->access$1602(Lcom/nwd/factory/config/FactoryConfigSetting;)Lcom/nwd/factory/config/FactoryConfigSetting;

    :cond_1
    new-instance p1, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    invoke-static {p1}, Lcom/nwd/factory/service/FactorySettingManager;->access$1602(Lcom/nwd/factory/config/FactoryConfigSetting;)Lcom/nwd/factory/config/FactoryConfigSetting;

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager$3;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {p1}, Lcom/nwd/factory/service/FactorySettingManager;->readConfig()V

    :cond_2
    :goto_0
    return-void
.end method
