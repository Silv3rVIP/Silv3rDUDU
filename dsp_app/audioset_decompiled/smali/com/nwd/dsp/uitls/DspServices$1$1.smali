.class Lcom/nwd/dsp/uitls/DspServices$1$1;
.super Ljava/lang/Object;
.source "DspServices.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/dsp/uitls/DspServices$1;->onServiceConnectSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nwd/dsp/uitls/DspServices$1;


# direct methods
.method constructor <init>(Lcom/nwd/dsp/uitls/DspServices$1;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/nwd/dsp/uitls/DspServices$1$1;->this$1:Lcom/nwd/dsp/uitls/DspServices$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->set10EQDate()V

    return-void
.end method
