.class public Lcom/nwd/audioset/utils/ViewAdapter;
.super Ljava/lang/Object;
.source "ViewAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewAdapter@TAG"


# instance fields
.field private context:Landroid/content/Context;

.field private def_height:F

.field private def_width:F

.field private scale:F

.field private scaleH:F

.field private scaleW:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x44a00000    # 1280.0f

    .line 22
    iput v0, p0, Lcom/nwd/audioset/utils/ViewAdapter;->def_width:F

    const/high16 v0, 0x443e0000    # 760.0f

    .line 23
    iput v0, p0, Lcom/nwd/audioset/utils/ViewAdapter;->def_height:F

    .line 28
    iput-object p1, p0, Lcom/nwd/audioset/utils/ViewAdapter;->context:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/nwd/audioset/utils/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    .line 30
    invoke-static {p1}, Lcom/nwd/audioset/utils/Utils;->getScreenHeight(Landroid/content/Context;)I

    move-result p1

    .line 31
    iget v1, p0, Lcom/nwd/audioset/utils/ViewAdapter;->def_width:F

    iget v2, p0, Lcom/nwd/audioset/utils/ViewAdapter;->def_height:F

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-virtual {p0, v1, v2, v0, p1}, Lcom/nwd/audioset/utils/ViewAdapter;->calculateScale(FFFF)V

    return-void
.end method


# virtual methods
.method public calculateScale(FFFF)V
    .locals 0

    div-float/2addr p4, p2

    .line 35
    iput p4, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scaleH:F

    div-float/2addr p3, p1

    .line 36
    iput p3, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scaleW:F

    .line 37
    invoke-static {p4, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scaleH = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scaleH:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " , scaleW = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scaleW:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " ,scale = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ViewAdapter@TAG"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public doAdapterView(Landroid/view/View;)V
    .locals 8

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 49
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 50
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 51
    iget v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v2, v2

    iget v3, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 52
    iget v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v3, v3

    iget v4, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    .line 53
    iget v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v4, v4

    iget v5, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    .line 54
    iget v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v5, v5

    iget v6, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 55
    iget v6, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v6, v6

    iget v7, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float v6, v6, v7

    float-to-int v6, v6

    .line 56
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    iget v7, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float v0, v0, v7

    float-to-int v0, v0

    .line 57
    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 58
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 59
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 60
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public getAdapterDimen(I)F
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/nwd/audioset/utils/ViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    .line 43
    iget v0, p0, Lcom/nwd/audioset/utils/ViewAdapter;->scale:F

    mul-float p1, p1, v0

    return p1
.end method

.method public setHeight(Landroid/view/View;I)V
    .locals 2

    .line 100
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 102
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 103
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p2, p2

    .line 104
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 105
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setMarginBottom(Landroid/view/View;I)V
    .locals 6

    .line 114
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    float-to-int v5, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 115
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public setMarginLeft(Landroid/view/View;I)V
    .locals 6

    .line 118
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    float-to-int v2, p2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public setMarginRight(Landroid/view/View;I)V
    .locals 6

    .line 123
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    float-to-int v4, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 124
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public setMarginTop(Landroid/view/View;I)V
    .locals 6

    .line 110
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    float-to-int v3, p2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 111
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/audioset/utils/ViewAdapter;->setMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public setMargins(Landroid/view/View;IIII)V
    .locals 2

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 128
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_4

    .line 129
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-nez p2, :cond_0

    .line 130
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_0
    if-nez p4, :cond_1

    .line 131
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_1
    if-nez p3, :cond_2

    .line 132
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    :cond_2
    if-nez p5, :cond_3

    .line 133
    iget p5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 135
    :cond_3
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_4
    return-void
.end method

.method public setMarginsEmpty(Landroid/view/View;IIII)V
    .locals 2

    .line 140
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 141
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 142
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 148
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSize(Landroid/view/View;II)V
    .locals 2

    .line 79
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    .line 80
    invoke-virtual {p0, p3}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p3

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 82
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 83
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p2, p2

    .line 84
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    float-to-int p2, p3

    .line 85
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setSizeWrap(Landroid/view/View;)V
    .locals 2

    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 71
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 72
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x2

    .line 73
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 74
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setTextSize(Landroid/widget/TextView;I)V
    .locals 0

    .line 65
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    return-void
.end method

.method public setWidth(Landroid/view/View;I)V
    .locals 2

    .line 91
    invoke-virtual {p0, p2}, Lcom/nwd/audioset/utils/ViewAdapter;->getAdapterDimen(I)F

    move-result p2

    .line 92
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 93
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    float-to-int p2, p2

    .line 95
    iput p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method
