.class public Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;
.super Lcom/nwd/kernel/source/rule/AbsChangeSourceRule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private reqSource:Lcom/nwd/kernel/source/data/SourceItem;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "DeviceStateChangeSourceRule"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/nwd/kernel/source/DeviceState;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/nwd/kernel/source/rule/AbsChangeSourceRule;-><init>(Landroid/content/Context;Lcom/nwd/kernel/source/DeviceState;)V

    return-void
.end method

.method private getReqSource(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)Lcom/nwd/kernel/source/data/SourceItem;
    .locals 1

    iget-object v0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->access$100(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/nwd/kernel/source/DBUtils;->getInitSourceByDeviceType(Landroid/content/Context;I)Lcom/nwd/kernel/source/data/SourceItem;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected doGetType()B
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAction(Ljava/lang/Object;Lcom/nwd/kernel/source/data/SourceItem;)I
    .locals 3

    check-cast p1, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;

    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->getReqSource(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)Lcom/nwd/kernel/source/data/SourceItem;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    invoke-static {p1}, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;->access$000(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    invoke-virtual {p0, p2, p1}, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->isNeedStartApp(Lcom/nwd/kernel/source/data/SourceItem;Lcom/nwd/kernel/source/data/SourceItem;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    invoke-virtual {p1}, Lcom/nwd/kernel/source/data/SourceItem;->getSourceid()B

    move-result p1

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->mDeviceStateManager:Lcom/nwd/kernel/source/DeviceState;

    invoke-virtual {p1}, Lcom/nwd/kernel/source/DeviceState;->getDiskInsertState()B

    move-result p1

    if-ne p1, v2, :cond_0

    sget-object p1, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->LOG:Lcom/android/utils/log/JLog;

    const-string p2, "because is auto insert disk state,so don\'t change source"

    invoke-virtual {p1, p2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 p1, 0x20

    return p1

    :cond_1
    const/16 p1, 0x10

    return p1

    :cond_2
    iget-object v0, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    invoke-virtual {p0, p2, v0}, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->isAtTop(Lcom/nwd/kernel/source/data/SourceItem;Lcom/nwd/kernel/source/data/SourceItem;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/nwd/kernel/source/data/SourceItem;->getExitMode()B

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    return v1

    :cond_3
    const/16 p1, 0x20c0

    return p1

    :cond_4
    const/16 p1, 0x2140

    return p1

    :cond_5
    iget-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->mContext:Landroid/content/Context;

    const/4 p2, 0x4

    invoke-static {p1, p2}, Lcom/nwd/kernel/source/DBUtils;->getInitSourceByAppid(Landroid/content/Context;I)Lcom/nwd/kernel/source/data/SourceItem;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    const/16 p1, 0x2060

    return p1

    :cond_6
    invoke-direct {p0, p1}, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->getReqSource(Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule$Value;)Lcom/nwd/kernel/source/data/SourceItem;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    const/16 p1, 0x48

    return p1
.end method

.method public getChangeSourceId(Ljava/lang/Object;)Lcom/nwd/kernel/source/data/SourceItem;
    .locals 0

    iget-object p1, p0, Lcom/nwd/kernel/source/rule/DeviceStateChangeSourceRule;->reqSource:Lcom/nwd/kernel/source/data/SourceItem;

    return-object p1
.end method
