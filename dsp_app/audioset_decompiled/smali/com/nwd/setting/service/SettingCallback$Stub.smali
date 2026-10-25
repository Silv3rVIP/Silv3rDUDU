.class public abstract Lcom/nwd/setting/service/SettingCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/nwd/setting/service/SettingCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/setting/service/SettingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/setting/service/SettingCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nwd.setting.service.SettingCallback"

.field static final TRANSACTION_notifyATVStandard:I = 0x1c

.field static final TRANSACTION_notifyAllTireCurrentState:I = 0xf

.field static final TRANSACTION_notifyAllTirePressureAlarmParams:I = 0xd

.field static final TRANSACTION_notifyAmplifierSwitch:I = 0x21

.field static final TRANSACTION_notifyBrakeState:I = 0x1

.field static final TRANSACTION_notifyConfigBackStageManage:I = 0x8

.field static final TRANSACTION_notifyCurrentStudyTireID:I = 0x12

.field static final TRANSACTION_notifyCurrentStudyTirePosition:I = 0x11

.field static final TRANSACTION_notifyDayBackLight:I = 0x1f

.field static final TRANSACTION_notifyDefaultVolume:I = 0x1a

.field static final TRANSACTION_notifyGPSPromptVolumeWay:I = 0x1b

.field static final TRANSACTION_notifyLanguageIndex:I = 0x6

.field static final TRANSACTION_notifyLightState:I = 0x3

.field static final TRANSACTION_notifyMixedRatio:I = 0x1e

.field static final TRANSACTION_notifyOpenedFunctionInBackStage:I = 0x7

.field static final TRANSACTION_notifyRadarSwitch:I = 0x20

.field static final TRANSACTION_notifyRadioRegion:I = 0x1d

.field static final TRANSACTION_notifyReverseState:I = 0x2

.field static final TRANSACTION_notifySingleTireCurrentState:I = 0x10

.field static final TRANSACTION_notifySingleTirePressureAlarmParam:I = 0xe

.field static final TRANSACTION_notifySmartFanSwitch:I = 0x22

.field static final TRANSACTION_notifySteeringWheelKeyState:I = 0x17

.field static final TRANSACTION_notifySteeringWheelStudyState:I = 0x18

.field static final TRANSACTION_notifySteeringWheelStudyTipsIndex:I = 0x19

.field static final TRANSACTION_notifySystemSettingState:I = 0x13

.field static final TRANSACTION_notifyTireID:I = 0xa

.field static final TRANSACTION_notifyTirePressureAlarm:I = 0xc

.field static final TRANSACTION_notifyTirePressureInfo:I = 0x9

.field static final TRANSACTION_notifyTriColor:I = 0x16

.field static final TRANSACTION_notifyVideoMode:I = 0x15

.field static final TRANSACTION_notifyVideoSetting:I = 0x14

.field static final TRANSACTION_notifyVideoSignCheck:I = 0x4

.field static final TRANSACTION_notifyWatchDog:I = 0x5

.field static final TRANSACTION_responseTirePressureSetting:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nwd.setting.service.SettingCallback"

    invoke-virtual {p0, p0, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nwd/setting/service/SettingCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nwd.setting.service.SettingCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nwd/setting/service/SettingCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/nwd/setting/service/SettingCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/nwd/setting/service/SettingCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nwd/setting/service/SettingCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.nwd.setting.service.SettingCallback"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySmartFanSwitch(Z)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyAmplifierSwitch(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyRadarSwitch(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyDayBackLight(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyMixedRatio(I)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyRadioRegion(I)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyATVStandard(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyGPSPromptVolumeWay(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyDefaultVolume(I)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySteeringWheelStudyTipsIndex(I)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySteeringWheelStudyState(I)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySteeringWheelKeyState([Z)V

    goto :goto_0

    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyTriColor(III)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyVideoMode(B)V

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyVideoSetting(BB)V

    goto/16 :goto_0

    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySystemSettingState(I)V

    goto/16 :goto_0

    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyCurrentStudyTireID(II)V

    goto/16 :goto_0

    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyCurrentStudyTirePosition(I)V

    goto/16 :goto_0

    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySingleTireCurrentState(I[I)V

    goto/16 :goto_0

    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyAllTireCurrentState([I)V

    goto/16 :goto_0

    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifySingleTirePressureAlarmParam(III)V

    goto/16 :goto_0

    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyAllTirePressureAlarmParams([I)V

    goto/16 :goto_0

    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyTirePressureAlarm(I)V

    goto/16 :goto_0

    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, p1, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->responseTirePressureSetting(IZ)V

    goto/16 :goto_0

    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyTireID(II)V

    goto/16 :goto_0

    :pswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyTirePressureInfo([I)V

    goto/16 :goto_0

    :pswitch_1a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createBooleanArray()[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyConfigBackStageManage([Z)V

    goto/16 :goto_0

    :pswitch_1b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyOpenedFunctionInBackStage(I)V

    goto/16 :goto_0

    :pswitch_1c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyLanguageIndex(I)V

    goto/16 :goto_0

    :pswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyWatchDog(I)V

    goto/16 :goto_0

    :pswitch_1e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyVideoSignCheck(I)V

    goto/16 :goto_0

    :pswitch_1f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyLightState(Z)V

    goto/16 :goto_0

    :pswitch_20
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyReverseState(Z)V

    goto/16 :goto_0

    :pswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    :cond_5
    invoke-virtual {p0, v0}, Lcom/nwd/setting/service/SettingCallback$Stub;->notifyBrakeState(Z)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
