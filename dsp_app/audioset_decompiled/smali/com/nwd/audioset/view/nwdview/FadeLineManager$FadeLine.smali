.class Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;
.super Ljava/lang/Object;
.source "FadeLineManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/audioset/view/nwdview/FadeLineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FadeLine"
.end annotation


# instance fields
.field private alpha:I

.field private fromX:F

.field private fromY:F

.field final synthetic this$0:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

.field private toX:F

.field private toY:F


# direct methods
.method public constructor <init>(Lcom/nwd/audioset/view/nwdview/FadeLineManager;FFFF)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->this$0:Lcom/nwd/audioset/view/nwdview/FadeLineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->fromX:F

    .line 41
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->fromY:F

    .line 42
    iput p4, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->toX:F

    .line 43
    iput p5, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->toY:F

    const/16 p1, 0x78

    .line 44
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->alpha:I

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->alpha:I

    return p0
.end method

.method static synthetic access$002(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->alpha:I

    return p1
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->fromX:F

    return p0
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->fromY:F

    return p0
.end method

.method static synthetic access$300(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->toX:F

    return p0
.end method

.method static synthetic access$400(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F
    .locals 0

    .line 34
    iget p0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->toY:F

    return p0
.end method
