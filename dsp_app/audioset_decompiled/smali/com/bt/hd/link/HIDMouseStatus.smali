.class public Lcom/bt/hd/link/HIDMouseStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bt/hd/link/HIDMouseStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mousePosX:I

.field private mousePosY:I

.field private pressStatus:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bt/hd/link/HIDMouseStatus$1;

    invoke-direct {v0}, Lcom/bt/hd/link/HIDMouseStatus$1;-><init>()V

    sput-object v0, Lcom/bt/hd/link/HIDMouseStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/bt/hd/link/HIDMouseStatus;->pressStatus:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosX:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosY:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/bt/hd/link/HIDMouseStatus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bt/hd/link/HIDMouseStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getMousePosX()I
    .locals 1

    iget v0, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosX:I

    return v0
.end method

.method public getMousePosY()I
    .locals 1

    iget v0, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosY:I

    return v0
.end method

.method public getPressStatus()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDMouseStatus;->pressStatus:B

    return v0
.end method

.method public setMousePosX(I)V
    .locals 0

    iput p1, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosX:I

    return-void
.end method

.method public setMousePosY(I)V
    .locals 0

    iput p1, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosY:I

    return-void
.end method

.method public setPressStatus(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDMouseStatus;->pressStatus:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pressStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDMouseStatus;->pressStatus:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mousePosX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mousePosY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-byte p2, p0, Lcom/bt/hd/link/HIDMouseStatus;->pressStatus:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosX:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/bt/hd/link/HIDMouseStatus;->mousePosY:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
