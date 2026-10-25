.class Lcom/nwd/kernel/utils/NwdServiceUtils$1;
.super Lcom/nwd/kernel/aidl/IEventCallback$Stub;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/utils/NwdServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;


# direct methods
.method constructor <init>(Lcom/nwd/kernel/utils/NwdServiceUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$1;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-direct {p0}, Lcom/nwd/kernel/aidl/IEventCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, ","

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-object v2, p1, v0

    aget-object v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$1;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {p1}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$000(Lcom/nwd/kernel/utils/NwdServiceUtils;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge p3, p1, :cond_1

    iget-object p1, p0, Lcom/nwd/kernel/utils/NwdServiceUtils$1;->this$0:Lcom/nwd/kernel/utils/NwdServiceUtils;

    invoke-static {p1}, Lcom/nwd/kernel/utils/NwdServiceUtils;->access$000(Lcom/nwd/kernel/utils/NwdServiceUtils;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nwd/kernel/utils/NwdServiceUtils$INWDEventCallback;

    invoke-interface {p1, v1}, Lcom/nwd/kernel/utils/NwdServiceUtils$INWDEventCallback;->notifyEvent(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :catch_0
    :cond_1
    return-void
.end method
