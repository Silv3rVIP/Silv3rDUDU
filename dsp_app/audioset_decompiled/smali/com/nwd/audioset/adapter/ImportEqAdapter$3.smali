.class Lcom/nwd/audioset/adapter/ImportEqAdapter$3;
.super Ljava/lang/Object;
.source "ImportEqAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/adapter/ImportEqAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    iput p2, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 162
    new-instance p1, Lcom/nwd/audioset/adapter/ImportEqAdapter$3$1;

    invoke-direct {p1, p0}, Lcom/nwd/audioset/adapter/ImportEqAdapter$3$1;-><init>(Lcom/nwd/audioset/adapter/ImportEqAdapter$3;)V

    invoke-static {p1}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
