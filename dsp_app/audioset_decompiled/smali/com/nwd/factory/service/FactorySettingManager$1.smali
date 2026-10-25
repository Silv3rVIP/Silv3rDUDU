.class Lcom/nwd/factory/service/FactorySettingManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/factory/service/FactorySettingManager;->saveMcuSetting()V
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

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v1, "saveMcuSetting"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v1, "wait connect kernel"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$200(Lcom/nwd/factory/service/FactorySettingManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v1}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nwd/factory/FactorySettingUtil;->saveFactorySetting(Landroid/content/Context;Lcom/nwd/kernel/aidl/IKernelFeature;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setDVRModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setRadioSensitivity(Lcom/nwd/kernel/aidl/IKernelFeature;BB)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    const/4 v5, 0x1

    invoke-static {v0, v5, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setRadioSensitivity(Lcom/nwd/kernel/aidl/IKernelFeature;BB)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setRadioModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    new-array v0, v5, [Ljava/lang/Object;

    sget-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v0, v4

    const-string v3, "%d"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "radio_type"

    invoke-static {v3, v0}, Lcom/nwd/factory/service/FactorySettingManager;->saveNwdAppConfig(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$300()B

    move-result v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setTvModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$400()B

    move-result v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setDTvModuleStyle(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setRadioLightSensitivity(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setAmpState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setFxpType(Lcom/nwd/kernel/aidl/IKernelFeature;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$600()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setPanelType(Lcom/nwd/kernel/aidl/IKernelFeature;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$700()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setRemoteControlType(Lcom/nwd/kernel/aidl/IKernelFeature;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$800()[Z

    move-result-object v6

    array-length v6, v6

    if-ge v0, v6, :cond_2

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mbTurbineOpen[i]="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$800()[Z

    move-result-object v8

    aget-boolean v8, v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$800()[Z

    move-result-object v6

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_1

    shl-int v6, v5, v0

    or-int/2addr v3, v6

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setTurbineState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    :goto_2
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v0, v0

    if-ge v4, v0, :cond_3

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    add-int/lit8 v3, v4, 0x1

    sget-object v5, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    aget v4, v5, v4

    invoke-static {v0, v3, v4}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setGainValue(Lcom/nwd/kernel/aidl/IKernelFeature;II)V

    move v4, v3

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mCarAudioChannel:I

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setCarAudioChannel(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$900()I

    move-result v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setCarAuxSwitch(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1000()I

    move-result v3

    invoke-static {v0, v3}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setSpeakerSwitch(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingManager;->sleep(J)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setRadioAntennaState(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$200(Lcom/nwd/factory/service/FactorySettingManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mcu_radio_area_current"

    invoke-static {v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    int-to-byte v0, v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1100()B

    move-result v1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$1100()B

    move-result v1

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->setAreaIndex(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    :cond_4
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->save(Lcom/nwd/kernel/aidl/IKernelFeature;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager$1;->this$0:Lcom/nwd/factory/service/FactorySettingManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->access$1202(Lcom/nwd/factory/service/FactorySettingManager;Ljava/lang/Thread;)Ljava/lang/Thread;

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->access$000()Lcom/android/utils/log/JLog;

    move-result-object v0

    const-string v1, "saveMcuSetting end"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method
