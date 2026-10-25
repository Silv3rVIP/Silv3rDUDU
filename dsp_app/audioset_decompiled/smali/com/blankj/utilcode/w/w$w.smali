.class public Lcom/blankj/utilcode/w/w$w;
.super Ljava/lang/Object;
.source "DxLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/w/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic w:Lcom/blankj/utilcode/w/w;


# direct methods
.method public constructor <init>(Lcom/blankj/utilcode/w/w;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/blankj/utilcode/w/w$w;->w:Lcom/blankj/utilcode/w/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/blankj/utilcode/w/w$w;->w:Lcom/blankj/utilcode/w/w;

    .line 5
    iget p1, p1, Lcom/blankj/utilcode/w/w;->r:I

    const/4 v1, 0x2

    if-ge p1, v1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/blankj/utilcode/w/w$w;->w:Lcom/blankj/utilcode/w/w;

    .line 7
    iget v1, p1, Lcom/blankj/utilcode/w/w;->r:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p1, Lcom/blankj/utilcode/w/w;->r:I

    .line 8
    iget-object p1, p0, Lcom/blankj/utilcode/w/w$w;->w:Lcom/blankj/utilcode/w/w;

    iget-object v1, p0, Lcom/blankj/utilcode/w/w$w;->w:Lcom/blankj/utilcode/w/w;

    .line 9
    iget-object v1, v1, Lcom/blankj/utilcode/w/w;->e:Landroid/content/Context;

    .line 10
    invoke-virtual {p1, v1}, Lcom/blankj/utilcode/w/w;->w(Landroid/content/Context;)Ljava/lang/String;

    .line 11
    iget-object p1, p0, Lcom/blankj/utilcode/w/w$w;->w:Lcom/blankj/utilcode/w/w;

    .line 12
    iget-object p1, p1, Lcom/blankj/utilcode/w/w;->t:Landroid/os/Handler;

    const-wide/16 v1, 0x61a8

    .line 13
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method
