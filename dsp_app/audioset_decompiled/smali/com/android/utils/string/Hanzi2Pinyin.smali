.class public Lcom/android/utils/string/Hanzi2Pinyin;
.super Ljava/lang/Object;


# static fields
.field private static final COMMA:Ljava/lang/String; = ","

.field private static final LEFT_BRACKET:Ljava/lang/String; = "("

.field private static final RIGHT_BRACKET:Ljava/lang/String; = ")"

.field private static instance:Lcom/android/utils/string/Hanzi2Pinyin;


# instance fields
.field private mProperties:Ljava/util/Properties;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/utils/string/Hanzi2Pinyin;->mProperties:Ljava/util/Properties;

    :try_start_0
    const-class v0, Lcom/android/utils/string/Hanzi2Pinyin;

    const-string v1, "/assets/unicode_to_hanyu_pinyin.txt"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/string/Hanzi2Pinyin;->mProperties:Ljava/util/Properties;

    invoke-virtual {v1, v0}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private getHanziFromProperties(C)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/utils/string/Hanzi2Pinyin;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/string/Hanzi2Pinyin;->mProperties:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static final getInstance()Lcom/android/utils/string/Hanzi2Pinyin;
    .locals 1

    sget-object v0, Lcom/android/utils/string/Hanzi2Pinyin;->instance:Lcom/android/utils/string/Hanzi2Pinyin;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/utils/string/Hanzi2Pinyin;

    invoke-direct {v0}, Lcom/android/utils/string/Hanzi2Pinyin;-><init>()V

    sput-object v0, Lcom/android/utils/string/Hanzi2Pinyin;->instance:Lcom/android/utils/string/Hanzi2Pinyin;

    :cond_0
    sget-object v0, Lcom/android/utils/string/Hanzi2Pinyin;->instance:Lcom/android/utils/string/Hanzi2Pinyin;

    return-object v0
.end method


# virtual methods
.method public getHanzi(C)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/utils/string/Hanzi2Pinyin;->getHanziFromProperties(C)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    :cond_0
    return-object p1
.end method
