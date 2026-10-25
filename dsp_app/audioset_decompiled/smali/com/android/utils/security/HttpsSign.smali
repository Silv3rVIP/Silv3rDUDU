.class public Lcom/android/utils/security/HttpsSign;
.super Lcom/android/utils/observer/Subject;


# static fields
.field public static final RESULT_ERROR:I = 0x2

.field public static final RESULT_OK:I = 0x1

.field private static desKey:Ljava/lang/String;

.field public static iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

.field private static sendDesKey:Ljava/lang/String;


# instance fields
.field private MD5Head:Ljava/lang/String;

.field private URL:Ljava/lang/String;

.field public client_Des:Lcom/android/utils/security/DesEncryptC;

.field private iContext:Landroid/content/Context;

.field private iHandler:Lorg/xml/sax/helpers/DefaultHandler;

.field private iNet:Lcom/android/utils/net/INet;

.field iNetListenser:Lcom/android/utils/net/INetListenser;

.field private iOutBuff:Ljava/io/ByteArrayOutputStream;

.field private iXmlReader:Lcom/android/utils/xml/GetXMLValue;

.field private sendData:Ljava/lang/String;

.field private xmlResult:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/utils/observer/Subject;-><init>()V

    const-string v0, "http://220.231.158.243:9999/account/RASKey.do"

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->URL:Ljava/lang/String;

    new-instance v0, Lcom/android/utils/security/HttpsSign$1;

    invoke-direct {v0, p0}, Lcom/android/utils/security/HttpsSign$1;-><init>(Lcom/android/utils/security/HttpsSign;)V

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNetListenser:Lcom/android/utils/net/INetListenser;

    new-instance v0, Lcom/android/utils/security/HttpsSign$2;

    invoke-direct {v0, p0}, Lcom/android/utils/security/HttpsSign$2;-><init>(Lcom/android/utils/security/HttpsSign;)V

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->iHandler:Lorg/xml/sax/helpers/DefaultHandler;

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign;->iContext:Landroid/content/Context;

    new-instance p1, Lcom/android/utils/xml/GetXMLValue;

    invoke-direct {p1, v0}, Lcom/android/utils/xml/GetXMLValue;-><init>(Lorg/xml/sax/helpers/DefaultHandler;)V

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign;->iXmlReader:Lcom/android/utils/xml/GetXMLValue;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign;->xmlResult:Ljava/util/Map;

    return-void
.end method

.method private ConnectServer()V
    .locals 2

    new-instance v0, Lcom/android/utils/net/HttpNet;

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->iContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/utils/net/HttpNet;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign;->iOutBuff:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->iOutBuff:Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    invoke-virtual {v1, v0}, Lcom/android/utils/net/INet;->setOutputBuffer(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setURL(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    const v1, 0x1d4c0

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setTimeOut(I)V

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    const-string v1, "post"

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->setMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->iNetListenser:Lcom/android/utils/net/INetListenser;

    invoke-virtual {v0, v1}, Lcom/android/utils/net/INet;->addListenser(Lcom/android/utils/net/INetListenser;)V

    iget-object v0, p0, Lcom/android/utils/security/HttpsSign;->iNet:Lcom/android/utils/net/INet;

    invoke-virtual {v0}, Lcom/android/utils/net/INet;->start()V

    return-void
.end method

.method private MD5dataHead(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/utils/security/MD5;

    invoke-direct {v0}, Lcom/android/utils/security/MD5;-><init>()V

    invoke-virtual {v0, p1}, Lcom/android/utils/security/MD5;->getMD5ofStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign;->MD5Head:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/security/HttpsSign;)Ljava/io/ByteArrayOutputStream;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/security/HttpsSign;->iOutBuff:Ljava/io/ByteArrayOutputStream;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/utils/security/HttpsSign;)Lcom/android/utils/xml/GetXMLValue;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/security/HttpsSign;->iXmlReader:Lcom/android/utils/xml/GetXMLValue;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/utils/security/HttpsSign;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/security/HttpsSign;->xmlResult:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/utils/security/HttpsSign;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign;->xmlResult:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/utils/security/HttpsSign;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/security/HttpsSign;->createClientDESKey()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/utils/security/HttpsSign;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/security/HttpsSign;->encryptClientRSAPublicKey()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    return-object v0
.end method

.method private createClientDESKey()V
    .locals 5

    const-string v0, ""

    sput-object v0, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    const-wide/high16 v3, 0x403a000000000000L    # 26.0

    mul-double v1, v1, v3

    const-wide v3, 0x4058400000000000L    # 97.0

    add-double/2addr v1, v3

    double-to-int v1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v1, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create Client DES key....\uff1asecure ."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-static {v1}, Ljava/security/SecureRandom;->getSeed(I)[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method private encryptClientRSAPublicKey()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " encrypt Client RSA befor des key :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    new-instance v0, Lcom/android/utils/security/RSAEncrypt;

    sget-object v1, Lcom/android/utils/security/HttpsSign;->iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    invoke-direct {v0, v1}, Lcom/android/utils/security/RSAEncrypt;-><init>(Lcom/android/utils/security/RSAEncrypt$RSAKey;)V

    sget-object v1, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/security/RSAEncrypt;->encrypt([B)[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encrypt  des Data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/utils/security/HttpsSign;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/utils/security/HttpsSign;->sendDesKey:Ljava/lang/String;

    return-void
.end method

.method private encyptInfoDESKey(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/utils/security/DesEncryptC;

    sget-object v1, Lcom/android/utils/security/HttpsSign;->desKey:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/utils/security/DesEncryptC;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->client_Des:Lcom/android/utils/security/DesEncryptC;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/utils/security/DesEncryptC;->encrypt([B)[B

    move-result-object p1

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/utils/security/HttpsSign;->sendData:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/utils/security/HttpsSign;->parseByte2HexStr([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/security/HttpsSign;->sendData:Ljava/lang/String;

    return-void
.end method

.method public static parseByte2HexStr([B)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parseHexStr2Byte(Ljava/lang/String;)[B
    .locals 6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_1

    mul-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    mul-int/lit8 v4, v4, 0x10

    add-int/2addr v4, v2

    int-to-byte v2, v4

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private toXMLData()[B
    .locals 6

    const-string v0, "root"

    const-string v1, "utf-8"

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v4

    invoke-interface {v4, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v4, v1, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    sget-object v1, Lcom/android/utils/security/HttpsSign;->sendDesKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "dk"

    sget-object v5, Lcom/android/utils/security/HttpsSign;->sendDesKey:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v5}, Lcom/android/utils/security/HttpsSign;->writeXMLData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->MD5Head:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "im5"

    iget-object v5, p0, Lcom/android/utils/security/HttpsSign;->MD5Head:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v5}, Lcom/android/utils/security/HttpsSign;->writeXMLData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->sendData:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "da"

    iget-object v5, p0, Lcom/android/utils/security/HttpsSign;->sendData:Ljava/lang/String;

    invoke-direct {p0, v4, v1, v5}, Lcom/android/utils/security/HttpsSign;->writeXMLData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v4, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " xml Data :  - dk  -:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/utils/security/HttpsSign;->sendDesKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - md5 - :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->MD5Head:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  - da- :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/utils/security/HttpsSign;->sendData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_3
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_4
    move-exception v0

    :try_start_8
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " send result : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-object v3

    :goto_1
    :try_start_a
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_2

    :catch_5
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    throw v0
.end method

.method private writeXMLData(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    invoke-interface {p1, p3}, Lorg/xmlpull/v1/XmlSerializer;->cdsect(Ljava/lang/String;)V

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public sendClientDESKey(Ljava/lang/String;)[B
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/security/HttpsSign;->MD5dataHead(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/utils/security/HttpsSign;->encyptInfoDESKey(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/utils/security/HttpsSign;->toXMLData()[B

    move-result-object p1

    return-object p1
.end method

.method public startGetSign()V
    .locals 2

    sget-object v0, Lcom/android/utils/security/HttpsSign;->iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/utils/security/HttpsSign;->encryptClientRSAPublicKey()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/utils/security/HttpsSign;->ConnectServer()V

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  s_rsa pub key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/utils/security/HttpsSign;->iRsa_PublicKey_S:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/utils/log/BaseLog;->print(Ljava/lang/String;)V

    return-void
.end method
