.class public Lcom/nwd/kernel/source/data/SourceItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nwd/kernel/source/data/SourceItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_APP_IN:B = 0x1t

.field public static final EVENT_APP_OUT:B = 0x2t

.field public static final EVENT_BT_CALL:B = 0x64t


# instance fields
.field private isEntity:Z

.field private isPowerOffMarkApp:Z

.field private isPowerOnNeedChangeSource2Android:Z

.field private isSpeciallySource:Z

.field private mAppid:I

.field private mClassName:Ljava/lang/String;

.field private mDeviceType:I

.field private mEvent:B

.field private mExitMode:B

.field private mPackageName:Ljava/lang/String;

.field private mProitity:B

.field private mSourceProperty:I

.field private mSourceType:B

.field private mSourceid:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nwd/kernel/source/data/SourceItem$1;

    invoke-direct {v0}, Lcom/nwd/kernel/source/data/SourceItem$1;-><init>()V

    sput-object v0, Lcom/nwd/kernel/source/data/SourceItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    iput v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    iput-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    iput-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    iput v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    iput-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    iput-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mExitMode:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    iput-byte v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceType:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    iput-boolean v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-ne p1, v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/nwd/kernel/source/data/SourceItem$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/data/SourceItem;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    new-instance v0, Lcom/nwd/kernel/source/data/SourceItem;

    invoke-direct {v0}, Lcom/nwd/kernel/source/data/SourceItem;-><init>()V

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    iput v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    iget-object v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    iput-object v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    iput v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    iput-byte v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mExitMode:B

    iput-byte v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mExitMode:B

    iget-object v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    iput-object v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    iput-byte v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    iput-byte v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    iput v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceType:B

    iput-byte v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceType:B

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    iput-boolean v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    iput-boolean v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    iput-boolean v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    iput-boolean v1, v0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    check-cast p1, Lcom/nwd/kernel/source/data/SourceItem;

    invoke-virtual {p1}, Lcom/nwd/kernel/source/data/SourceItem;->getAppid()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    invoke-virtual {p1}, Lcom/nwd/kernel/source/data/SourceItem;->isEntity()Z

    move-result p1

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getAppid()I
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    return v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()I
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    return v0
.end method

.method public getEvent()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    return v0
.end method

.method public getExitMode()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mExitMode:B

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getProitity()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    return v0
.end method

.method public getSourceProperty()I
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    return v0
.end method

.method public getSourceType()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceType:B

    return v0
.end method

.method public getSourceid()B
    .locals 1

    iget-byte v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    return v0
.end method

.method public isEntity()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    return v0
.end method

.method public isPowerOffMarkApp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    return v0
.end method

.method public isPowerOnNeedChangeSource2Android()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    return v0
.end method

.method public isSpeciallySource()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    return v0
.end method

.method public setAppid(I)V
    .locals 0

    iput p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    return-void
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    return-void
.end method

.method public setDeviceType(I)V
    .locals 0

    iput p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    return-void
.end method

.method public setEntity(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    return-void
.end method

.method public setEvent(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    return-void
.end method

.method public setExitMode(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mExitMode:B

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setPowerOffMarkApp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    return-void
.end method

.method public setPowerOnNeedChangeSource2Android(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    return-void
.end method

.method public setProitity(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    return-void
.end method

.method public setSourceProperty(I)V
    .locals 0

    iput p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    return-void
.end method

.method public setSourceType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceType:B

    return-void
.end method

.method public setSourceid(B)V
    .locals 0

    iput-byte p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    return-void
.end method

.method public setSpeciallySource(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Appid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",proitity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",deviceType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",packagename="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",className = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isEntity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mSourceProperty = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",isSpeciallySource"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isPowerOffMarkApp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",isPowerOnNeedChangeSource2Android = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",event = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mAppid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mClassName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mDeviceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mEvent:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mExitMode:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mProitity:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceid:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceProperty:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->mSourceType:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-boolean p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isEntity:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOffMarkApp:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isPowerOnNeedChangeSource2Android:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/nwd/kernel/source/data/SourceItem;->isSpeciallySource:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
