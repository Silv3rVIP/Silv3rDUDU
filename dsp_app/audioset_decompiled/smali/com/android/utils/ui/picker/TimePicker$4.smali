.class Lcom/android/utils/ui/picker/TimePicker$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/ui/picker/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/picker/TimePicker;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/picker/TimePicker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChange(Lcom/android/utils/ui/picker/CycleListView;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/CycleListView;->getShowCurrent()Lcom/android/utils/ui/picker/CycleListView$Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/CycleListView$Item;->getNumber()I

    move-result p1

    const/4 v0, 0x1

    const/16 v1, 0xc

    if-ge p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$000(Lcom/android/utils/ui/picker/TimePicker;)I

    move-result p1

    if-lt p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$000(Lcom/android/utils/ui/picker/TimePicker;)I

    move-result v2

    sub-int/2addr v2, v1

    invoke-static {p1, v2}, Lcom/android/utils/ui/picker/TimePicker;->access$002(Lcom/android/utils/ui/picker/TimePicker;I)I

    :cond_0
    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$000(Lcom/android/utils/ui/picker/TimePicker;)I

    move-result p1

    if-ge p1, v1, :cond_2

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$000(Lcom/android/utils/ui/picker/TimePicker;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/android/utils/ui/picker/TimePicker;->access$002(Lcom/android/utils/ui/picker/TimePicker;I)I

    :cond_2
    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/android/utils/ui/picker/TimePicker;->access$202(Lcom/android/utils/ui/picker/TimePicker;Z)Z

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$4;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$300(Lcom/android/utils/ui/picker/TimePicker;)V

    return-void
.end method
