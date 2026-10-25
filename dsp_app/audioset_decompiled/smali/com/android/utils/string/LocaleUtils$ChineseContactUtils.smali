.class Lcom/android/utils/string/LocaleUtils$ChineseContactUtils;
.super Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/string/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChineseContactUtils"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/string/LocaleUtils;


# direct methods
.method private constructor <init>(Lcom/android/utils/string/LocaleUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/string/LocaleUtils$ChineseContactUtils;->this$0:Lcom/android/utils/string/LocaleUtils;

    invoke-direct {p0, p1}, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/utils/string/LocaleUtils;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/utils/string/LocaleUtils;Lcom/android/utils/string/LocaleUtils$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/string/LocaleUtils$ChineseContactUtils;-><init>(Lcom/android/utils/string/LocaleUtils;)V

    return-void
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/android/utils/string/HanziToPinyin;->getInstance()Lcom/android/utils/string/HanziToPinyin;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/utils/string/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/utils/string/HanziToPinyin$Token;

    const/4 v7, 0x2

    iget v8, v6, Lcom/android/utils/string/HanziToPinyin$Token;->type:I

    const/4 v9, 0x0

    if-ne v7, v8, :cond_0

    iget-object v7, v6, Lcom/android/utils/string/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/utils/string/HanziToPinyin$Token;->target:Ljava/lang/String;

    :goto_1
    invoke-virtual {v7, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v3, v9, v7}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    iget v7, v6, Lcom/android/utils/string/HanziToPinyin$Token;->type:I

    if-ne v5, v7, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    const/16 v8, 0x20

    if-lez v7, :cond_1

    invoke-virtual {v2, v9, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_2

    invoke-virtual {v4, v9, v8}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v7, v6, Lcom/android/utils/string/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v2, v9, v7}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v6, Lcom/android/utils/string/HanziToPinyin$Token;->source:Ljava/lang/String;

    goto :goto_1

    :cond_3
    :goto_2
    iget-object v6, v6, Lcom/android/utils/string/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {v4, v9, v6}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/utils/string/HanziToPinyin;->getInstance()Lcom/android/utils/string/HanziToPinyin;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/utils/string/HanziToPinyin;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/string/HanziToPinyin$Token;

    const/4 v2, 0x2

    iget v3, v1, Lcom/android/utils/string/HanziToPinyin$Token;->type:I

    const/16 v4, 0x20

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v2, v1, Lcom/android/utils/string/HanziToPinyin$Token;->target:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    iget-object v1, v1, Lcom/android/utils/string/HanziToPinyin$Token;->source:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-super {p0, p1}, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
