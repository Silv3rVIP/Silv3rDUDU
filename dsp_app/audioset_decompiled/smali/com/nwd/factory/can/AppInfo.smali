.class public Lcom/nwd/factory/can/AppInfo;
.super Ljava/lang/Object;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mMd5:Ljava/lang/String;

.field private mParentCanInfo:Lcom/nwd/factory/can/CanInfo;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/nwd/factory/can/AppInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nwd/factory/can/AppInfo;->mMd5:Ljava/lang/String;

    check-cast p1, Lcom/nwd/factory/can/AppInfo;

    invoke-virtual {p1}, Lcom/nwd/factory/can/AppInfo;->getMd5()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/can/AppInfo;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/can/AppInfo;->mMd5:Ljava/lang/String;

    return-object v0
.end method

.method public getParentCanInfo()Lcom/nwd/factory/can/CanInfo;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/can/AppInfo;->mParentCanInfo:Lcom/nwd/factory/can/CanInfo;

    return-object v0
.end method

.method protected setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/AppInfo;->mAppName:Ljava/lang/String;

    return-void
.end method

.method protected setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/AppInfo;->mMd5:Ljava/lang/String;

    return-void
.end method

.method protected setParentCanInfo(Lcom/nwd/factory/can/CanInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/can/AppInfo;->mParentCanInfo:Lcom/nwd/factory/can/CanInfo;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppInfo:appName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/factory/can/AppInfo;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",md5 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/factory/can/AppInfo;->mMd5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
