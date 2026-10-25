.class Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;
.super Landroid/os/Handler;
.source "LongClickButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/nwdview/LongClickButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyHandler"
.end annotation


# instance fields
.field private ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/nwd/audioset/view/nwdview/LongClickButton;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;->ref:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 85
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$MyHandler;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/nwd/audioset/view/nwdview/LongClickButton;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/LongClickButton;->performClick()Z

    :cond_0
    return-void
.end method
