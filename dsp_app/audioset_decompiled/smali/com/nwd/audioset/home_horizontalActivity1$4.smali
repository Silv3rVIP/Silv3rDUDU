.class Lcom/nwd/audioset/home_horizontalActivity1$4;
.super Landroid/content/BroadcastReceiver;
.source "home_horizontalActivity1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/home_horizontalActivity1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/home_horizontalActivity1;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/home_horizontalActivity1;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1$4;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 508
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "dsp3-home_horizontalActivity"

    const-string p2, "\u6536\u5230\u8bed\u8a00\u6539\u53d8\u5e7f\u64ad"

    .line 509
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    iget-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1$4;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-virtual {p1}, Lcom/nwd/audioset/home_horizontalActivity1;->finish()V

    :cond_0
    return-void
.end method
