.class Lcom/android/utils/ui/lyric/Lyric$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/ui/lyric/Lyric;->init(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/utils/ui/lyric/Sentence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/lyric/Lyric;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/lyric/Lyric;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/lyric/Lyric$3;->this$0:Lcom/android/utils/ui/lyric/Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/utils/ui/lyric/Sentence;Lcom/android/utils/ui/lyric/Sentence;)I
    .locals 2

    invoke-virtual {p1}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/utils/ui/lyric/Sentence;->getFromTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/utils/ui/lyric/Sentence;

    check-cast p2, Lcom/android/utils/ui/lyric/Sentence;

    invoke-virtual {p0, p1, p2}, Lcom/android/utils/ui/lyric/Lyric$3;->compare(Lcom/android/utils/ui/lyric/Sentence;Lcom/android/utils/ui/lyric/Sentence;)I

    move-result p1

    return p1
.end method
