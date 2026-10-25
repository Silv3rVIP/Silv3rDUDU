.class Lcom/nwd/audioset/adapter/ImportEqAdapter$3$1;
.super Ljava/lang/Object;
.source "ImportEqAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/adapter/ImportEqAdapter$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nwd/audioset/adapter/ImportEqAdapter$3;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/adapter/ImportEqAdapter$3;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3$1;->this$1:Lcom/nwd/audioset/adapter/ImportEqAdapter$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3$1;->this$1:Lcom/nwd/audioset/adapter/ImportEqAdapter$3;

    iget-object v0, v0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3;->this$0:Lcom/nwd/audioset/adapter/ImportEqAdapter;

    iget-object v1, p0, Lcom/nwd/audioset/adapter/ImportEqAdapter$3$1;->this$1:Lcom/nwd/audioset/adapter/ImportEqAdapter$3;

    iget v1, v1, Lcom/nwd/audioset/adapter/ImportEqAdapter$3;->val$position:I

    invoke-static {v0, v1}, Lcom/nwd/audioset/adapter/ImportEqAdapter;->access$100(Lcom/nwd/audioset/adapter/ImportEqAdapter;I)V

    return-void
.end method
