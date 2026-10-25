.class public abstract Lcom/nwd/factory/service/FactoryCallback$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/nwd/factory/service/FactoryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/factory/service/FactoryCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/factory/service/FactoryCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nwd.factory.service.FactoryCallback"

.field static final TRANSACTION_notifyAudioGain:I = 0xa

.field static final TRANSACTION_notifyDTvModuleStyle:I = 0x2

.field static final TRANSACTION_notifyDVRModuleStyle:I = 0x5

.field static final TRANSACTION_notifyFactoryInfo:I = 0xb

.field static final TRANSACTION_notifyHbsFactoryData:I = 0xc

.field static final TRANSACTION_notifyPanelStudyAllState:I = 0xd

.field static final TRANSACTION_notifyPanelStudyStep:I = 0xe

.field static final TRANSACTION_notifyPanelType:I = 0x8

.field static final TRANSACTION_notifyRadioLightSensitivity:I = 0x6

.field static final TRANSACTION_notifyRadioModuleStyle:I = 0x3

.field static final TRANSACTION_notifyRadioSensitivity:I = 0x4

.field static final TRANSACTION_notifySteerWheelType:I = 0x9

.field static final TRANSACTION_notifyTurbineState:I = 0x7

.field static final TRANSACTION_notifyTvModuleStyle:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.nwd.factory.service.FactoryCallback"

    invoke-virtual {p0, p0, v0}, Lcom/nwd/factory/service/FactoryCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nwd/factory/service/FactoryCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.nwd.factory.service.FactoryCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nwd/factory/service/FactoryCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/nwd/factory/service/FactoryCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/nwd/factory/service/FactoryCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/nwd/factory/service/FactoryCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x1

    const-string v2, "com.nwd.factory.service.FactoryCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyPanelStudyStep(I)V

    :goto_0
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyPanelStudyAllState([B)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyHbsFactoryData([B)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyFactoryInfo([Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyAudioGain(II)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifySteerWheelType(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyPanelType(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyTurbineState(I)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyRadioLightSensitivity(B)V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyDVRModuleStyle(B)V

    goto :goto_0

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyRadioSensitivity(BB)V

    goto :goto_0

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyRadioModuleStyle(B)V

    goto/16 :goto_0

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyDTvModuleStyle(B)V

    goto/16 :goto_0

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-virtual {p0, p1}, Lcom/nwd/factory/service/FactoryCallback$Stub;->notifyTvModuleStyle(B)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
