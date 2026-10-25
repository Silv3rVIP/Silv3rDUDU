.class final Lcom/bt/BTDevice$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bt/BTDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/bt/BTDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/bt/BTDevice;
    .locals 2

    new-instance v0, Lcom/bt/BTDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/bt/BTDevice;-><init>(Landroid/os/Parcel;Lcom/bt/BTDevice$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bt/BTDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/bt/BTDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/bt/BTDevice;
    .locals 0

    new-array p1, p1, [Lcom/bt/BTDevice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bt/BTDevice$1;->newArray(I)[Lcom/bt/BTDevice;

    move-result-object p1

    return-object p1
.end method
