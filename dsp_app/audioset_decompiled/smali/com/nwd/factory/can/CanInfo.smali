.class public Lcom/nwd/factory/can/CanInfo;
.super Ljava/lang/Object;


# instance fields
.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/factory/can/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mId:I

.field private mName:Ljava/lang/String;

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/factory/can/CanInfo;->mAppList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected addApp(Lcom/nwd/factory/can/AppInfo;)V
    .locals 1

    invoke-virtual {p1, p0}, Lcom/nwd/factory/can/AppInfo;->setParentCanInfo(Lcom/nwd/factory/can/CanInfo;)V

    iget-object v0, p0, Lcom/nwd/factory/can/CanInfo;->mAppList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/nwd/factory/can/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nwd/factory/can/CanInfo;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/nwd/factory/can/CanInfo;->mId:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/can/CanInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/can/CanInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method protected setId(I)V
    .locals 0

    iput p1, p0, Lcom/nwd/factory/can/CanInfo;->mId:I

    return-void
.end method

.method protected setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/CanInfo;->mName:Ljava/lang/String;

    return-void
.end method

.method protected setVersionName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/CanInfo;->mVersionName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CanInfo:Name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/factory/can/CanInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nwd/factory/can/CanInfo;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
