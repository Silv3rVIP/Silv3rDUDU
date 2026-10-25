.class Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/floating/controller/AbsFloatingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$200(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)Lcom/android/utils/media/IMediaController;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1, p2}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$302(Lcom/android/utils/ui/floating/controller/AbsFloatingController;I)I

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$200(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)Lcom/android/utils/media/IMediaController;

    move-result-object p1

    iget-object p2, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p2}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$300(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    invoke-interface {p1, p2}, Lcom/android/utils/media/IMediaController;->seekTo(I)V

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    invoke-static {p1}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$000(Lcom/android/utils/ui/floating/controller/AbsFloatingController;)J

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->access$302(Lcom/android/utils/ui/floating/controller/AbsFloatingController;I)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->autoHideControlPanel(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/android/utils/ui/floating/controller/AbsFloatingController$2;->this$0:Lcom/android/utils/ui/floating/controller/AbsFloatingController;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/android/utils/ui/floating/controller/AbsFloatingController;->autoHideControlPanel(I)V

    return-void
.end method
