.class Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_4

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iget-object v3, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {v3}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$000(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)F

    move-result v3

    sub-float/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float p1, p1, v3

    if-gtz p1, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget-object v4, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {v4}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$100(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)F

    move-result v4

    sub-float/2addr p1, v4

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v3

    if-lez p1, :cond_5

    :cond_1
    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1, v1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$302(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;Z)Z

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$400(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iget-object v3, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {v3}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$500(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result v3

    div-int/2addr v3, v2

    sub-int/2addr v0, v3

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$400(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$600(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$500(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v0

    div-int/2addr v0, v2

    sub-int/2addr p2, v0

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$700(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p2}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$500(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$400(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$300(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1, v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$302(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;Z)Z

    const/4 v0, 0x1

    :cond_3
    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    const p2, 0x3ecccccd    # 0.4f

    invoke-static {p1, p2}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$200(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)V

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-static {p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$800(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-static {p1, v1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$002(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)F

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p1, p2}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$102(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)F

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->access$200(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)V

    :cond_5
    :goto_0
    return v0
.end method
