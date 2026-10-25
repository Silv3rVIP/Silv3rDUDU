.class Lcom/android/utils/ui/picker/CycleListView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/picker/CycleListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/picker/CycleListView;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/picker/CycleListView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/CycleListView$1;->this$0:Lcom/android/utils/ui/picker/CycleListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView$1;->this$0:Lcom/android/utils/ui/picker/CycleListView;

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/CycleListView;->invalidate()V

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView$1;->this$0:Lcom/android/utils/ui/picker/CycleListView;

    invoke-static {p1}, Lcom/android/utils/ui/picker/CycleListView;->access$000(Lcom/android/utils/ui/picker/CycleListView;)Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView$1;->this$0:Lcom/android/utils/ui/picker/CycleListView;

    invoke-static {p1}, Lcom/android/utils/ui/picker/CycleListView;->access$000(Lcom/android/utils/ui/picker/CycleListView;)Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;

    move-result-object p1

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView$1;->this$0:Lcom/android/utils/ui/picker/CycleListView;

    invoke-interface {p1, v0}, Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;->onDataChange(Lcom/android/utils/ui/picker/CycleListView;)V

    :cond_0
    return-void
.end method
