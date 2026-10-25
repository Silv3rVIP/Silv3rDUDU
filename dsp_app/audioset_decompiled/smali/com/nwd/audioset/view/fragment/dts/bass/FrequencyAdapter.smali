.class public Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FrequencyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private data:[Ljava/lang/String;

.field private viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->data:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 20
    check-cast p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->onBindViewHolder(Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;I)V
    .locals 5

    .line 40
    iget-object v0, p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f090137

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->data:[Ljava/lang/String;

    aget-object v1, v1, p2

    .line 42
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    iget-object v2, p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0701b2

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setHeight(Landroid/view/View;I)V

    .line 44
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    const v2, 0x7f070368

    invoke-virtual {v1, v0, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 45
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {v1, v0, v3}, Lcom/nwd/audioset/utils/ViewAdapter;->setHeight(Landroid/view/View;I)V

    .line 46
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    const v2, 0x7f0701c9

    invoke-virtual {v1, v0, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 47
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {v1, v0, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginRight(Landroid/view/View;I)V

    .line 48
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->data:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-ne p2, v0, :cond_0

    .line 49
    iget-object p2, p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 50
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    const v4, 0x7f0701c0

    .line 51
    invoke-virtual {v3, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result v3

    float-to-int v3, v3

    .line 50
    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 52
    iget-object p1, p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    goto :goto_0

    .line 54
    :cond_0
    iget-object p2, p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 55
    iget v0, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    iget v1, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    iget v2, p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->setMargins(IIII)V

    .line 57
    iget-object p1, p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;
    .locals 3

    .line 28
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0044

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    new-instance v1, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;->viewAdapter:Lcom/nwd/audioset/utils/ViewAdapter;

    .line 30
    new-instance p1, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;

    invoke-direct {p1, p0, v0, p2}, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;-><init>(Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;Landroid/view/View;I)V

    return-object p1
.end method
