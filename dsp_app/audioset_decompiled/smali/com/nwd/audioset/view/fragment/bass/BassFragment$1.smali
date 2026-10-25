.class Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;
.super Ljava/lang/Object;
.source "BassFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/bass/BassFragment;->setUserVisibleHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->access$000(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V

    .line 235
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->access$100(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V

    .line 236
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->access$200(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)V

    .line 237
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getPf_area()I

    move-result v0

    .line 238
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-static {v1}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->access$300(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    move-result-object v1

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->areaHFValue(I)I

    move-result v2

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AppUtil;->areaLFValue(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setData(II)V

    const/high16 v1, 0x41f80000    # 31.0f

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_0

    .line 241
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->access$300(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setMaxValue(FF)V

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/bass/BassFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/bass/BassFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/bass/BassFragment;->access$300(Lcom/nwd/audioset/view/fragment/bass/BassFragment;)Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Lcom/nwd/audioset/view/nwdview/DoubleSeekbar;->setMaxValue(FF)V

    :goto_0
    return-void
.end method
