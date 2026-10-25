.class public Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FrequencyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field index:I

.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;


# direct methods
.method public constructor <init>(Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;Landroid/view/View;I)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter;

    .line 65
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 66
    iput p3, p0, Lcom/nwd/audioset/view/fragment/dts/bass/FrequencyAdapter$MyViewHolder;->index:I

    return-void
.end method
