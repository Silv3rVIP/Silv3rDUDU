.class Lcom/blankj/utilcode/util/Utils$Task$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/Utils$Task;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/Utils$Task;

.field final synthetic val$t:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/Utils$Task;Ljava/lang/Object;)V
    .locals 0

    .line 554
    iput-object p1, p0, Lcom/blankj/utilcode/util/Utils$Task$1;->this$0:Lcom/blankj/utilcode/util/Utils$Task;

    iput-object p2, p0, Lcom/blankj/utilcode/util/Utils$Task$1;->val$t:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/blankj/utilcode/util/Utils$Task$1;->this$0:Lcom/blankj/utilcode/util/Utils$Task;

    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils$Task;->access$100(Lcom/blankj/utilcode/util/Utils$Task;)Lcom/blankj/utilcode/util/Utils$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/blankj/utilcode/util/Utils$Task$1;->val$t:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/blankj/utilcode/util/Utils$Callback;->onCall(Ljava/lang/Object;)V

    return-void
.end method
