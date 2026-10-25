.class public Lcom/android/utils/eventbus/BusEvent;
.super Ljava/lang/Object;


# instance fields
.field private mEventName:Ljava/lang/String;

.field private mParam:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/utils/eventbus/BusEvent;->mEventName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/utils/eventbus/BusEvent;->mParam:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getEventName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/eventbus/BusEvent;->mEventName:Ljava/lang/String;

    return-object v0
.end method

.method public getParam(I)Ljava/lang/Object;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/utils/eventbus/BusEvent;->mParam:[Ljava/lang/Object;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getParamCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/utils/eventbus/BusEvent;->mParam:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BusEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/utils/eventbus/BusEvent;->mEventName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",param count = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/utils/eventbus/BusEvent;->getParamCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
