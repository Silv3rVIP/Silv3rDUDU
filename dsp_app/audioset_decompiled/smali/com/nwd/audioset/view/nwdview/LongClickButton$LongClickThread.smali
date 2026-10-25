.class Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;
.super Ljava/lang/Object;
.source "LongClickButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/nwdview/LongClickButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongClickThread"
.end annotation


# instance fields
.field private num:I

.field final synthetic this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;


# direct methods
.method private constructor <init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;->this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;Lcom/nwd/audioset/view/nwdview/LongClickButton$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;-><init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 62
    :goto_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;->this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;->num:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;->num:I

    .line 64
    rem-int/lit8 v0, v0, 0x5

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;->this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-static {v0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->access$100(Lcom/nwd/audioset/view/nwdview/LongClickButton;)Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;->sendEmptyMessage(I)Z

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;->this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-static {v0}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->access$200(Lcom/nwd/audioset/view/nwdview/LongClickButton;)J

    move-result-wide v0

    const-wide/16 v2, 0x5

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_1
    return-void
.end method
