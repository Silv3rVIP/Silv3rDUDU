.class public Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/string/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ContactLocaleUtilsBase"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/string/LocaleUtils;


# direct methods
.method public constructor <init>(Lcom/android/utils/string/LocaleUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/string/LocaleUtils$ContactLocaleUtilsBase;->this$0:Lcom/android/utils/string/LocaleUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method
