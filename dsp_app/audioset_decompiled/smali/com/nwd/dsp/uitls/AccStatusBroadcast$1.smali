.class Lcom/nwd/dsp/uitls/AccStatusBroadcast$1;
.super Ljava/lang/Object;
.source "AccStatusBroadcast.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/dsp/uitls/AccStatusBroadcast;->dspInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/dsp/uitls/AccStatusBroadcast;


# direct methods
.method constructor <init>(Lcom/nwd/dsp/uitls/AccStatusBroadcast;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/nwd/dsp/uitls/AccStatusBroadcast$1;->this$0:Lcom/nwd/dsp/uitls/AccStatusBroadcast;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 62
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->set10EQDate()V

    return-void
.end method
