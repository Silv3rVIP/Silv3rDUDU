.class Lcom/nwd/audioset/view/nwdview/TableView2$2;
.super Ljava/lang/Object;
.source "TableView2.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/view/nwdview/TableView2;->showAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/view/nwdview/TableView2;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/view/nwdview/TableView2;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2$2;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/TableView2$2;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {v0, p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->access$502(Lcom/nwd/audioset/view/nwdview/TableView2;F)F

    .line 316
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/TableView2$2;->this$0:Lcom/nwd/audioset/view/nwdview/TableView2;

    invoke-virtual {p1}, Lcom/nwd/audioset/view/nwdview/TableView2;->invalidate()V

    return-void
.end method
