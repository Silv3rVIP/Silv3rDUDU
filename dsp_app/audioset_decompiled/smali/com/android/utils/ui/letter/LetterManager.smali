.class public Lcom/android/utils/ui/letter/LetterManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private mChar2IndexCollection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyValueComparetor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "LetterManager"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/ui/letter/LetterManager;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/utils/ui/letter/LetterManager$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/letter/LetterManager$1;-><init>(Lcom/android/utils/ui/letter/LetterManager;)V

    iput-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mKeyValueComparetor:Ljava/util/Comparator;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mChar2IndexCollection:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/letter/LetterManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/ui/letter/LetterManager;->string2Letter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getFirstChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/utils/ui/letter/LetterManager;->string2Letter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private string2Letter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Lcom/android/utils/utils/StringUtils;->getFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "*"

    if-eqz v1, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    const-string v1, "[\\u4E00-\\u9FA5]"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {}, Lcom/android/utils/string/Hanzi2Pinyin;->getInstance()Lcom/android/utils/string/Hanzi2Pinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/utils/string/Hanzi2Pinyin;->getHanzi(C)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getPositionByLetter(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mChar2IndexCollection:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public release()V
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mChar2IndexCollection:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mChar2IndexCollection:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public setAndSortValue(Ljava/util/List;)V
    .locals 5

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mChar2IndexCollection:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterManager;->mKeyValueComparetor:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;

    invoke-interface {v2}, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;->getLetterKeyValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const-string v2, "unKnown"

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/utils/ui/letter/LetterManager;->getFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;

    invoke-interface {v3}, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;->getLetterKeyValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/utils/ui/letter/LetterManager;->getFirstChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/utils/ui/letter/LetterManager;->mChar2IndexCollection:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
