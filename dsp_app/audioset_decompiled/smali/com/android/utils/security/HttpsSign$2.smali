.class Lcom/android/utils/security/HttpsSign$2;
.super Lorg/xml/sax/helpers/DefaultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/security/HttpsSign;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private iTagName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/utils/security/HttpsSign;


# direct methods
.method constructor <init>(Lcom/android/utils/security/HttpsSign;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign$2;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->characters([CII)V

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign$2;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v0}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign$2;->iTagName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign$2;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {v0}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign$2;->iTagName:Ljava/lang/String;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign$2;->iTagName:Ljava/lang/String;

    const-string p1, "SAX Event: END DOCUMENT"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Lorg/xml/sax/helpers/DefaultHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    iput-object p2, p0, Lcom/android/utils/security/HttpsSign$2;->iTagName:Ljava/lang/String;

    const-string p1, "SAX Event: START DOCUMENT"

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SAX Event: START ELEMENT[ "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ] "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :cond_0
    if-eqz p4, :cond_3

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p1

    if-lez p1, :cond_3

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result p2

    if-ge p1, p2, :cond_3

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/utils/security/HttpsSign$2;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {p2}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/utils/security/HttpsSign$2;->this$0:Lcom/android/utils/security/HttpsSign;

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2, p3}, Lcom/android/utils/security/HttpsSign;->access$202(Lcom/android/utils/security/HttpsSign;Ljava/util/Map;)Ljava/util/Map;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/android/utils/security/HttpsSign$2;->this$0:Lcom/android/utils/security/HttpsSign;

    invoke-static {p2}, Lcom/android/utils/security/HttpsSign;->access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "   ATTRIBUTE : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " value : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p4, p1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
