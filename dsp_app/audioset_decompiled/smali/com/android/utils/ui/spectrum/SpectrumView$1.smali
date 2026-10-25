.class Lcom/android/utils/ui/spectrum/SpectrumView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/audiofx/Visualizer$OnDataCaptureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/ui/spectrum/SpectrumView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/spectrum/SpectrumView;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/spectrum/SpectrumView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView$1;->this$0:Lcom/android/utils/ui/spectrum/SpectrumView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFftDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    iget-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView$1;->this$0:Lcom/android/utils/ui/spectrum/SpectrumView;

    invoke-static {p1, p2}, Lcom/android/utils/ui/spectrum/SpectrumView;->access$002(Lcom/android/utils/ui/spectrum/SpectrumView;[B)[B

    iget-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView$1;->this$0:Lcom/android/utils/ui/spectrum/SpectrumView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/utils/ui/spectrum/SpectrumView;->access$102(Lcom/android/utils/ui/spectrum/SpectrumView;Z)Z

    iget-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView$1;->this$0:Lcom/android/utils/ui/spectrum/SpectrumView;

    invoke-static {p1}, Lcom/android/utils/ui/spectrum/SpectrumView;->access$200(Lcom/android/utils/ui/spectrum/SpectrumView;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/spectrum/SpectrumView$1;->this$0:Lcom/android/utils/ui/spectrum/SpectrumView;

    invoke-virtual {p1}, Lcom/android/utils/ui/spectrum/SpectrumView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public onWaveFormDataCapture(Landroid/media/audiofx/Visualizer;[BI)V
    .locals 0

    return-void
.end method
