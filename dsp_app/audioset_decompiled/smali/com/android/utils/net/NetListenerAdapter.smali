.class public Lcom/android/utils/net/NetListenerAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/net/INetListenser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectFaild(JI)V
    .locals 0

    const-string p1, "ConnectFaild"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public ConnectFinish(Lcom/android/utils/net/INet;)V
    .locals 0

    const-string p1, "ConnectFinish"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public ConnectStart(J)V
    .locals 0

    const-string p1, "ConnectStart"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public downloading(JJ[BI)V
    .locals 0

    return-void
.end method

.method public uploading(JJ)V
    .locals 0

    return-void
.end method
