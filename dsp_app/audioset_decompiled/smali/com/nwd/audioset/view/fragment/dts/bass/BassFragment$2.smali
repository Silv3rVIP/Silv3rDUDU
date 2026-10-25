.class Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;
.super Ljava/lang/Object;
.source "BassFragment.java"

# interfaces
.implements Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/view/View;

    .line 154
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$100(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$200(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment$2;->this$0:Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-static {v1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;->access$300(Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lcom/nwd/audioset/utils/ViewUtils;->setMaxHeight([Landroid/view/View;)V

    return-void
.end method
