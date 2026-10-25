.class Lcom/android/utils/ui/letter/LetterListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/letter/LetterListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/letter/LetterListView;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/letter/LetterListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView$1;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lcom/android/utils/ui/letter/LetterListView$1;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {p2}, Lcom/android/utils/ui/letter/LetterListView;->access$100(Lcom/android/utils/ui/letter/LetterListView;)Lcom/android/utils/ui/letter/LetterManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/utils/ui/letter/LetterManager;->getPositionByLetter(Ljava/lang/String;)I

    move-result p2

    iget-object p4, p0, Lcom/android/utils/ui/letter/LetterListView$1;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {p4}, Lcom/android/utils/ui/letter/LetterListView;->access$200(Lcom/android/utils/ui/letter/LetterListView;)Lcom/android/utils/ui/letter/ILetterListener;

    move-result-object p4

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/android/utils/ui/letter/LetterListView$1;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {p4}, Lcom/android/utils/ui/letter/LetterListView;->access$200(Lcom/android/utils/ui/letter/LetterListView;)Lcom/android/utils/ui/letter/ILetterListener;

    move-result-object p4

    invoke-interface {p4, p1, p2, p3}, Lcom/android/utils/ui/letter/ILetterListener;->onLetterSelect(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
