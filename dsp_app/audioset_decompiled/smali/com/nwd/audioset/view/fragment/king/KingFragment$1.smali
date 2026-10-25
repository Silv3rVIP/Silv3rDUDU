.class Lcom/nwd/audioset/view/fragment/king/KingFragment$1;
.super Ljava/lang/Object;
.source "KingFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/fragment/king/KingFragment;->setUserVisibleHint(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->access$000(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V

    .line 366
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eq_ch4"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 367
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->access$100(Lcom/nwd/audioset/view/fragment/king/KingFragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 368
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->access$200(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V

    goto :goto_0

    .line 370
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->access$300(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 373
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 375
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/king/KingFragment$1;->this$0:Lcom/nwd/audioset/view/fragment/king/KingFragment;

    invoke-static {v0}, Lcom/nwd/audioset/view/fragment/king/KingFragment;->access$400(Lcom/nwd/audioset/view/fragment/king/KingFragment;)V

    return-void
.end method
