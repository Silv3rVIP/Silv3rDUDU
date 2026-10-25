.class Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;
.super Ljava/lang/Object;
.source "DtsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->access$000(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;

    invoke-direct {v0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;-><init>()V

    .line 75
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->setSwitchListener(Lcom/nwd/audioset/view/fragment/dts/SwitchListener;)V

    .line 76
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    invoke-static {v1, v0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->access$002(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->access$000(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->access$100(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;Landroidx/fragment/app/Fragment;)V

    .line 79
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/dts/DtsFragment;

    const-string v1, "scene_mode"

    invoke-static {v0, v1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->access$200(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;Ljava/lang/String;)V

    return-void
.end method
