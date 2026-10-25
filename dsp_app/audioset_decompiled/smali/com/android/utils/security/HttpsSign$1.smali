.class Lcom/android/utils/security/HttpsSign$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/net/INetListenser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/security/HttpsSign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/security/HttpsSign;


# direct methods
.method constructor <init>(Lcom/android/utils/security/HttpsSign;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ConnectFaild(JI)V
    .locals 0

    const-string p1, "ConnectFaild"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    const/4 p2, 0x2

    invoke-virtual {p1, p3, p2}, Lcom/android/utils/security/HttpsSign;->notifyObserver(II)V

    return-void
.end method

.method public ConnectFinish(Lcom/android/utils/net/INet;)V
    .locals 6

    const-string p1, "mo"

    const-string v0, "pk"

    const-string v1, "ConnectFinish"

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v1}, Lcom/android/utils/security/HttpsSign;->access$000(Lcom/android/utils/security/HttpsSign;)Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Ljava/lang/String;

    const-string v4, "utf-8"

    invoke-direct {v3, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finish data :  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v3}, Lcom/android/utils/security/HttpsSign;->access$100(Lcom/android/utils/security/HttpsSign;)Lcom/android/utils/xml/GetXMLValue;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/utils/xml/GetXMLValue;->parserXml([B)V

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v1}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " xml Result map:  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v3}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v1}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v1}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v3}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/math/BigInteger;

    iget-object v3, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v3}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/android/utils/security/RSAEncrypt$RSAKey;

    const/16 v3, 0x400

    invoke-direct {p1, v1, v0, v3}, Lcom/android/utils/security/RSAEncrypt$RSAKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    sput-object p1, Lcom/android/utils/security/HttpsSign;->iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "rsa pub key :  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/android/utils/security/HttpsSign;->iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {p1}, Lcom/android/utils/security/HttpsSign;->access$300(Lcom/android/utils/security/HttpsSign;)V

    sget-object p1, Lcom/android/utils/security/HttpsSign;->iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {p1}, Lcom/android/utils/security/HttpsSign;->access$400(Lcom/android/utils/security/HttpsSign;)V

    iget-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {p1}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    iget-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {}, Lcom/android/utils/security/HttpsSign;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/utils/security/HttpsSign;->notifyObserver(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/utils/security/HttpsSign$1;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {}, Lcom/android/utils/security/HttpsSign;->access$500()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/android/utils/security/HttpsSign;->notifyObserver(ILjava/lang/String;)V

    return-void
.end method

.method public ConnectStart(J)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start -- contentLength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

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
