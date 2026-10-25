.class Lcom/android/utils/ui/letter/LetterManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/letter/LetterManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/letter/LetterManager;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/letter/LetterManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterManager$1;->this$0:Lcom/android/utils/ui/letter/LetterManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;)I
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterManager$1;->this$0:Lcom/android/utils/ui/letter/LetterManager;

    invoke-interface {p1}, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;->getLetterKeyValue()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/utils/ui/letter/LetterManager;->access$000(Lcom/android/utils/ui/letter/LetterManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterManager$1;->this$0:Lcom/android/utils/ui/letter/LetterManager;

    invoke-interface {p2}, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;->getLetterKeyValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/utils/ui/letter/LetterManager;->access$000(Lcom/android/utils/ui/letter/LetterManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;

    check-cast p2, Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;

    invoke-virtual {p0, p1, p2}, Lcom/android/utils/ui/letter/LetterManager$1;->compare(Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;Lcom/android/utils/ui/letter/LetterManager$ILetterKeyValue;)I

    move-result p1

    return p1
.end method
