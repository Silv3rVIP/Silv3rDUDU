.class Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/letter/LetterListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LetterAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/letter/LetterListView;


# direct methods
.method private constructor <init>(Lcom/android/utils/ui/letter/LetterListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/utils/ui/letter/LetterListView;Lcom/android/utils/ui/letter/LetterListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;-><init>(Lcom/android/utils/ui/letter/LetterListView;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {v0}, Lcom/android/utils/ui/letter/LetterListView;->access$300(Lcom/android/utils/ui/letter/LetterListView;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {v0}, Lcom/android/utils/ui/letter/LetterListView;->access$300(Lcom/android/utils/ui/letter/LetterListView;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-virtual {p3}, Lcom/android/utils/ui/letter/LetterListView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance p3, Landroid/widget/AbsListView$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p3, v0, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x11

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {v0}, Lcom/android/utils/ui/letter/LetterListView;->access$300(Lcom/android/utils/ui/letter/LetterListView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {v0}, Lcom/android/utils/ui/letter/LetterListView;->access$300(Lcom/android/utils/ui/letter/LetterListView;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {v0}, Lcom/android/utils/ui/letter/LetterListView;->access$400(Lcom/android/utils/ui/letter/LetterListView;)F

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-virtual {v0}, Lcom/android/utils/ui/letter/LetterListView;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {p1}, Lcom/android/utils/ui/letter/LetterListView;->access$500(Lcom/android/utils/ui/letter/LetterListView;)I

    move-result p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/utils/ui/letter/LetterListView$LetterAdapter;->this$0:Lcom/android/utils/ui/letter/LetterListView;

    invoke-static {p1}, Lcom/android/utils/ui/letter/LetterListView;->access$600(Lcom/android/utils/ui/letter/LetterListView;)I

    move-result p1

    :goto_0
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object p2
.end method
