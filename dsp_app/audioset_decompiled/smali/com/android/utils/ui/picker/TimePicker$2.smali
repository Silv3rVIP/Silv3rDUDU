.class Lcom/android/utils/ui/picker/TimePicker$2;
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

    iput-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataChange(Lcom/android/utils/ui/picker/CycleListView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/CycleListView;->getShowCurrent()Lcom/android/utils/ui/picker/CycleListView$Item;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/utils/ui/picker/CycleListView$Item;->getNumber()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/utils/ui/picker/TimePicker;->access$002(Lcom/android/utils/ui/picker/TimePicker;I)I

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$100(Lcom/android/utils/ui/picker/TimePicker;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$000(Lcom/android/utils/ui/picker/TimePicker;)I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/utils/ui/picker/TimePicker;->access$002(Lcom/android/utils/ui/picker/TimePicker;I)I

    :cond_0
    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$200(Lcom/android/utils/ui/picker/TimePicker;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$000(Lcom/android/utils/ui/picker/TimePicker;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {p1, v1}, Lcom/android/utils/ui/picker/TimePicker;->access$002(Lcom/android/utils/ui/picker/TimePicker;I)I

    :cond_1
    iget-object p1, p0, Lcom/android/utils/ui/picker/TimePicker$2;->this$0:Lcom/android/utils/ui/picker/TimePicker;

    invoke-static {p1}, Lcom/android/utils/ui/picker/TimePicker;->access$300(Lcom/android/utils/ui/picker/TimePicker;)V

    return-void
.end method
