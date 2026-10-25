.class Lcom/nwd/audioset/view/nwdview/LongClickButton$1;
.super Ljava/lang/Object;
.source "LongClickButton.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/nwdview/LongClickButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$1;->this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 48
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/LongClickButton$1;->this$0:Lcom/nwd/audioset/view/nwdview/LongClickButton;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/nwd/audioset/view/nwdview/LongClickButton$LongClickThread;-><init>(Lcom/nwd/audioset/view/nwdview/LongClickButton;Lcom/nwd/audioset/view/nwdview/LongClickButton$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    const/4 p1, 0x1

    return p1
.end method
