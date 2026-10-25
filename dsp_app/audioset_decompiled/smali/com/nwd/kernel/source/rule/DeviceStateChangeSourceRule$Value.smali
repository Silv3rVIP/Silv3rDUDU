.class public Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Value"
.end annotation


# instance fields
.field private mDeviceState:Z

.field private mDeviceType:I


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceType:I

    iput-boolean p2, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceState:Z

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceState:Z

    return p0
.end method

.method static synthetic access$100(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)I
    .locals 0

    iget p0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceType:I

    return p0
.end method


# virtual methods
.method public getDeivceType()I
    .locals 1

    iget v0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceType:I

    return v0
.end method

.method public getDeviceState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceState:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceStateChangeSourceValue,deviceType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",deviceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->mDeviceState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
