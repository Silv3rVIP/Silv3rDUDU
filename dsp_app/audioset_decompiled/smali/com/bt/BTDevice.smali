.class public Lcom/bt/BTDevice;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bt/BTDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isPair:Z

.field private isSinkDevice:Z

.field private mAddress:Ljava/lang/String;

.field private mDeviceClass:I

.field private mName:Ljava/lang/String;

.field private mObdPassword:Ljava/lang/String;

.field private mPairRecordIndex:I

.field private mService:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bt/BTDevice$1;

    invoke-direct {v0}, Lcom/bt/BTDevice$1;-><init>()V

    sput-object v0, Lcom/bt/BTDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/bt/BTDevice;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bt/BTDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bt/BTDevice;->mDeviceClass:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bt/BTDevice;->mService:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/bt/BTDevice;->isPair:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bt/BTDevice;->mPairRecordIndex:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bt/BTDevice;->mObdPassword:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    :goto_1
    iput-boolean v1, p0, Lcom/bt/BTDevice;->isSinkDevice:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/bt/BTDevice$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bt/BTDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    iput-object p2, p0, Lcom/bt/BTDevice;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/bt/BTDevice;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    check-cast p1, Lcom/bt/BTDevice;

    invoke-virtual {p1}, Lcom/bt/BTDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceClass()I
    .locals 1

    iget v0, p0, Lcom/bt/BTDevice;->mDeviceClass:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bt/BTDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getObdPassword()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bt/BTDevice;->mObdPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getPairRecordIndex()I
    .locals 1

    iget v0, p0, Lcom/bt/BTDevice;->mPairRecordIndex:I

    return v0
.end method

.method public getService()I
    .locals 1

    iget v0, p0, Lcom/bt/BTDevice;->mService:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_0
    return v0
.end method

.method public isPair()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bt/BTDevice;->isPair:Z

    return v0
.end method

.method public isSinkDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bt/BTDevice;->isSinkDevice:Z

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    return-void
.end method

.method public setDeviceClass(I)V
    .locals 0

    iput p1, p0, Lcom/bt/BTDevice;->mDeviceClass:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bt/BTDevice;->mName:Ljava/lang/String;

    return-void
.end method

.method public setObdPassword(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bt/BTDevice;->mObdPassword:Ljava/lang/String;

    return-void
.end method

.method public setPair(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bt/BTDevice;->isPair:Z

    return-void
.end method

.method public setPairRecordIndex(I)V
    .locals 0

    iput p1, p0, Lcom/bt/BTDevice;->mPairRecordIndex:I

    return-void
.end method

.method public setService(I)V
    .locals 0

    iput p1, p0, Lcom/bt/BTDevice;->mService:I

    return-void
.end method

.method public setSinkDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bt/BTDevice;->isSinkDevice:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "address = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bt/BTDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",isPair = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bt/BTDevice;->isPair:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bt/BTDevice;->mDeviceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",service = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bt/BTDevice;->mService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p2, p0, Lcom/bt/BTDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/bt/BTDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/bt/BTDevice;->mDeviceClass:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bt/BTDevice;->mService:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/bt/BTDevice;->isPair:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bt/BTDevice;->mPairRecordIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/bt/BTDevice;->mObdPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/bt/BTDevice;->isSinkDevice:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
