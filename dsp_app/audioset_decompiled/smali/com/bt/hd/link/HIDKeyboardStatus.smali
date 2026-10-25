.class public Lcom/bt/hd/link/HIDKeyboardStatus;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/bt/hd/link/HIDKeyboardStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ctrlID:B

.field private key0_ID:I

.field private key1_ID:B

.field private key2_ID:B

.field private key3_ID:B

.field private key4_ID:B

.field private key5_ID:B

.field private reportID:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bt/hd/link/HIDKeyboardStatus$1;

    invoke-direct {v0}, Lcom/bt/hd/link/HIDKeyboardStatus$1;-><init>()V

    sput-object v0, Lcom/bt/hd/link/HIDKeyboardStatus;->CREATOR:Landroid/os/Parcelable$Creator;

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

    iput-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->reportID:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->ctrlID:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key0_ID:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key1_ID:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key2_ID:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key3_ID:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key4_ID:B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key5_ID:B

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/bt/hd/link/HIDKeyboardStatus$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bt/hd/link/HIDKeyboardStatus;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCtrlID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->ctrlID:B

    return v0
.end method

.method public getKey0_ID()I
    .locals 1

    iget v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key0_ID:I

    return v0
.end method

.method public getKey1_ID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key1_ID:B

    return v0
.end method

.method public getKey2_ID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key2_ID:B

    return v0
.end method

.method public getKey3_ID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key3_ID:B

    return v0
.end method

.method public getKey4_ID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key4_ID:B

    return v0
.end method

.method public getKey5_ID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key5_ID:B

    return v0
.end method

.method public getReportID()B
    .locals 1

    iget-byte v0, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->reportID:B

    return v0
.end method

.method public setCtrlID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->ctrlID:B

    return-void
.end method

.method public setKey0_ID(I)V
    .locals 0

    iput p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key0_ID:I

    return-void
.end method

.method public setKey1_ID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key1_ID:B

    return-void
.end method

.method public setKey2_ID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key2_ID:B

    return-void
.end method

.method public setKey3_ID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key3_ID:B

    return-void
.end method

.method public setKey4_ID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key4_ID:B

    return-void
.end method

.method public setKey5_ID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key5_ID:B

    return-void
.end method

.method public setReportID(B)V
    .locals 0

    iput-byte p1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->reportID:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->reportID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ctrlID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->ctrlID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "key0_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key0_ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "key1_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key1_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "key2_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key2_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "key3_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key3_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "key4_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key4_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "key5_ID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-byte v1, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key5_ID:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->reportID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->ctrlID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key0_ID:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key1_ID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key2_ID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key3_ID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key4_ID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-byte p2, p0, Lcom/bt/hd/link/HIDKeyboardStatus;->key5_ID:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
