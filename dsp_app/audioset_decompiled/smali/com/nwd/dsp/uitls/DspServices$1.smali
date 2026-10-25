.class Lcom/nwd/dsp/uitls/DspServices$1;
.super Ljava/lang/Object;
.source "DspServices.java"

# interfaces
.implements Lcom/android/utils/utils/AbsServiceControllerHelper$OnServiceConnectSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/dsp/uitls/DspServices;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/dsp/uitls/DspServices;


# direct methods
.method constructor <init>(Lcom/nwd/dsp/uitls/DspServices;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/nwd/dsp/uitls/DspServices$1;->this$0:Lcom/nwd/dsp/uitls/DspServices;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnectSuccess()V
    .locals 4

    const-string v0, "dsp3-DspServices-ych"

    const-string v1, "\u8fde\u63a5\u8bbe\u7f6e\u670d\u52a1AIDL\u6210\u529f,"

    .line 52
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspServices$1;->this$0:Lcom/nwd/dsp/uitls/DspServices;

    invoke-static {v0}, Lcom/nwd/dsp/uitls/DspServices;->access$000(Lcom/nwd/dsp/uitls/DspServices;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/nwd/dsp/uitls/DspServices$1$1;

    invoke-direct {v1, p0}, Lcom/nwd/dsp/uitls/DspServices$1$1;-><init>(Lcom/nwd/dsp/uitls/DspServices$1;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
