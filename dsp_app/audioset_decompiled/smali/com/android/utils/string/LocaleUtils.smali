.class public Lcom/android/utils/string/LocaleUtils;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/string/LocaleUtils$ChineseContactUtils;,
        Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final CHINESE_LANGUAGE:Ljava/lang/String;

.field private static final JAPANESE_LANGUAGE:Ljava/lang/String;

.field private static final KOREAN_LANGUAGE:Ljava/lang/String;

.field private static sSingleton:Lcom/android/utils/string/LocaleUtils;


# instance fields
.field private mBase:Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

.field private mLanguage:Ljava/lang/String;

.field private mUtils:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/utils/string/LocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/utils/string/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->KOREAN:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/utils/string/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/utils/string/LocaleUtils;->mUtils:Ljava/util/HashMap;

    new-instance v0, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    invoke-direct {v0, p0}, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;-><init>(Lcom/android/utils/string/LocaleUtils;)V

    iput-object v0, p0, Lcom/android/utils/string/LocaleUtils;->mBase:Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/utils/string/LocaleUtils;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method private declared-synchronized get(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/string/LocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    new-instance v0, Lcom/android/utils/string/LocaleUtils$ChineseContactUtils;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/utils/string/LocaleUtils$ChineseContactUtils;-><init>(Lcom/android/utils/string/LocaleUtils;Lcom/android/utils/string/LocaleUtils$1;)V

    iget-object v1, p0, Lcom/android/utils/string/LocaleUtils;->mUtils:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/string/LocaleUtils;->mBase:Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getAdjustedStyle(I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/android/utils/string/LocaleUtils;->JAPANESE_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/utils/string/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/utils/string/LocaleUtils;->KOREAN_LANGUAGE:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/utils/string/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x3

    :cond_0
    return p1
.end method

.method private getForNameLookup(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/utils/string/LocaleUtils;->getAdjustedStyle(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/android/utils/string/LocaleUtils;->CHINESE_LANGUAGE:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/utils/string/LocaleUtils;->mLanguage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/utils/string/LocaleUtils;->get(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    move-result-object p1

    return-object p1
.end method

.method private getForSort(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/utils/string/LocaleUtils;->getAdjustedStyle(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/utils/string/LocaleUtils;->get(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    move-result-object p1

    return-object p1
.end method

.method public static declared-synchronized getIntance()Lcom/android/utils/string/LocaleUtils;
    .locals 2

    const-class v0, Lcom/android/utils/string/LocaleUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/utils/string/LocaleUtils;->sSingleton:Lcom/android/utils/string/LocaleUtils;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/utils/string/LocaleUtils;

    invoke-direct {v1}, Lcom/android/utils/string/LocaleUtils;-><init>()V

    sput-object v1, Lcom/android/utils/string/LocaleUtils;->sSingleton:Lcom/android/utils/string/LocaleUtils;

    :cond_0
    sget-object v1, Lcom/android/utils/string/LocaleUtils;->sSingleton:Lcom/android/utils/string/LocaleUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;I)Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/utils/string/LocaleUtils;->getForNameLookup(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;->getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public getSortKey(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/android/utils/string/LocaleUtils;->getForSort(Ljava/lang/Integer;)Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/string/LocaleUtils;->mLanguage:Ljava/lang/String;

    return-void
.end method
