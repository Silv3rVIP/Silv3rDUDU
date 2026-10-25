.class public Lcom/nwd/audioset/view/nwdview/FadeLineManager;
.super Ljava/lang/Object;
.source "FadeLineManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;
    }
.end annotation


# instance fields
.field private mAlphaFadeValue:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    .line 18
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLinePaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/4 v2, 0x0

    .line 19
    invoke-static {v1, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41000000    # 8.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 24
    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->LOW_MEMORY:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    .line 26
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mAlphaFadeValue:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 30
    iput v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mAlphaFadeValue:I

    :goto_0
    return-void
.end method


# virtual methods
.method public addLine(FFFF)V
    .locals 9

    .line 67
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    monitor-enter v0

    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    new-instance v8, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;

    move-object v2, v8

    move-object v3, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;-><init>(Lcom/nwd/audioset/view/nwdview/FadeLineManager;FFFF)V

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public clear()V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    const/4 v0, 0x0

    .line 51
    :goto_0
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;

    .line 54
    iget-object v2, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLinePaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$000(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 55
    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$100(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F

    move-result v5

    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$200(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F

    move-result v6

    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$300(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F

    move-result v7

    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$400(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)F

    move-result v8

    iget-object v9, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLinePaint:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 56
    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$000(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)I

    move-result v2

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mAlphaFadeValue:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$002(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;I)I

    .line 57
    invoke-static {v1}, Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;->access$000(Lcom/nwd/audioset/view/nwdview/FadeLineManager$FadeLine;)I

    move-result v1

    const/16 v2, 0x28

    if-gt v1, v2, :cond_0

    .line 59
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getSize()I
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/FadeLineManager;->mLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 81
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
