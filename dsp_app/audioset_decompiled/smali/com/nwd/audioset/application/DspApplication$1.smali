.class Lcom/nwd/audioset/application/DspApplication$1;
.super Ljava/lang/Object;
.source "DspApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/application/DspApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/application/DspApplication;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/application/DspApplication;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/nwd/audioset/application/DspApplication$1;->this$0:Lcom/nwd/audioset/application/DspApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/nwd/audioset/application/DspApplication$1;->this$0:Lcom/nwd/audioset/application/DspApplication;

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-gtz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/nwd/audioset/application/DspApplication$1;->this$0:Lcom/nwd/audioset/application/DspApplication;

    invoke-virtual {v0}, Lcom/nwd/audioset/application/DspApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/application/DspApplication;->setInstrumentHeight(Landroid/content/res/Resources;)V

    :cond_0
    return-void
.end method
