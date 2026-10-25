.class Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;
.super Ljava/lang/Thread;
.source "FadeLineView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/nwdview/FadeLineView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/nwdview/FadeLineView;


# direct methods
.method private constructor <init>(Lcom/nwd/audioset/view/nwdview/FadeLineView;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;->this$0:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nwd/audioset/view/nwdview/FadeLineView;Lcom/nwd/audioset/view/nwdview/FadeLineView$1;)V
    .locals 0

    .line 95
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;-><init>(Lcom/nwd/audioset/view/nwdview/FadeLineView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 99
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;->this$0:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    invoke-static {v0}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->access$100(Lcom/nwd/audioset/view/nwdview/FadeLineView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 100
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;->this$0:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    invoke-static {v0}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->access$200(Lcom/nwd/audioset/view/nwdview/FadeLineView;)Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->getSize()I

    move-result v0

    if-lez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineView$DrawThread;->this$0:Lcom/nwd/audioset/view/nwdview/FadeLineView;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/FadeLineView;->postInvalidate()V

    :cond_0
    const-wide/16 v0, 0xa

    .line 106
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    return-void
.end method
