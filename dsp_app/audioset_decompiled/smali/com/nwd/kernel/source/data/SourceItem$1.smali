.class final Lcom/nwd/kernel/source/data/SourceItem$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/source/data/SourceItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nwd/kernel/source/data/SourceItem;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nwd/kernel/source/data/SourceItem;
    .locals 2

    new-instance v0, Lcom/nwd/kernel/source/data/SourceItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/nwd/kernel/source/data/SourceItem;-><init>(Landroid/os/Parcel;Lcom/nwd/kernel/source/data/SourceItem$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nwd/kernel/source/data/SourceItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nwd/kernel/source/data/SourceItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/nwd/kernel/source/data/SourceItem;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/nwd/kernel/source/data/SourceItem$1;->newArray(I)[Lcom/nwd/kernel/source/data/SourceItem;

    move-result-object p1

    return-object p1
.end method
