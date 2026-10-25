.class Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$3;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$3;->this$0:Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;

    invoke-virtual {p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->hideDialog()V

    return-void
.end method
