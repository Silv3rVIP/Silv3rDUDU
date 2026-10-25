.class Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment$1;
.super Ljava/lang/Object;
.source "SurroundModeFragment.java"

# interfaces
.implements Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 89
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;

    invoke-static {v1}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->access$000(Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;

    invoke-static {v1}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;->access$100(Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nwd/audioset/utils/ViewUtils;->setMaxHeight([Landroid/view/View;)V

    return-void
.end method
