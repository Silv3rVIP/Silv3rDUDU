.class public Lcom/android/utils/ui/GalleryCover;
.super Landroid/widget/Gallery;


# instance fields
.field private mAlphaMode:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCircleMode:Z

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x32

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxRotationAngle:I

    const/16 p1, -0xc8

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxZoom:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/GalleryCover;->mAlphaMode:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/GalleryCover;->mCircleMode:Z

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/GalleryCover;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x32

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxRotationAngle:I

    const/16 p1, -0xc8

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxZoom:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/GalleryCover;->mAlphaMode:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/utils/ui/GalleryCover;->mCircleMode:Z

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/GalleryCover;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x32

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxRotationAngle:I

    const/16 p1, -0xc8

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxZoom:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/GalleryCover;->mAlphaMode:Z

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/utils/ui/GalleryCover;->mCircleMode:Z

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/GalleryCover;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryCover;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryCover;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryCover;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryCover;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    add-int/2addr v0, p0

    return v0
.end method

.method private transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;II)V
    .locals 10

    iget-object p4, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p4}, Landroid/graphics/Camera;->save()V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    iget p4, p4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit16 v1, v1, -0x8c

    int-to-float v1, v1

    const/high16 v2, 0x40a00000    # 5.0f

    const-wide v3, 0x3fd3333333333333L    # 0.3

    iget-object v5, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    if-gez p3, :cond_0

    neg-int v6, v0

    int-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v8, v8, v6

    double-to-float v8, v8

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v3

    double-to-float v3, v6

    add-float/2addr v3, v2

    invoke-virtual {v5, v8, v3, v1}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0

    :cond_0
    int-to-float v6, v0

    neg-int v7, v0

    int-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v3

    double-to-float v3, v7

    add-float/2addr v3, v2

    invoke-virtual {v5, v6, v3, v1}, Landroid/graphics/Camera;->translate(FFF)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---------------------->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v1, "info"

    invoke-static {v1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p3, p0, Lcom/android/utils/ui/GalleryCover;->mCircleMode:Z

    if-eqz p3, :cond_2

    const/16 p3, 0x28

    const/4 v1, 0x0

    if-ge v0, p3, :cond_1

    iget-object p3, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    const/high16 v0, 0x431b0000    # 155.0f

    invoke-virtual {p3, v1, v0, v1}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    const/high16 v2, 0x437f0000    # 255.0f

    int-to-float v0, v0

    const/high16 v3, 0x40200000    # 2.5f

    mul-float v0, v0, v3

    sub-float/2addr v2, v0

    invoke-virtual {p3, v1, v2, v1}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    div-int/lit8 p1, p1, 0x2

    neg-int p3, p1

    int-to-float p3, p3

    div-int/lit8 p4, p4, 0x2

    neg-int v0, p4

    int-to-float v0, v0

    invoke-virtual {p2, p3, v0}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p1

    int-to-float p3, p4

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/utils/ui/GalleryCover;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method


# virtual methods
.method public getAlphaMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/utils/ui/GalleryCover;->mAlphaMode:Z

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryCover;->getSelectedItemId()J

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryCover;->getSelectedItemPosition()I

    div-int/lit8 v0, p1, 0x2

    if-ge p2, v0, :cond_0

    return p2

    :cond_0
    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    add-int/2addr p1, v0

    return p1
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 6

    invoke-static {p1}, Lcom/android/utils/ui/GalleryCover;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    iget v2, p0, Lcom/android/utils/ui/GalleryCover;->mCoveflowCenter:I

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/utils/ui/GalleryCover;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;II)V

    goto :goto_0

    :cond_0
    sub-int v4, v2, v0

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v5, p0, Lcom/android/utils/ui/GalleryCover;->mMaxRotationAngle:I

    int-to-float v5, v5

    mul-float v4, v4, v5

    float-to-int v4, v4

    sub-int/2addr v2, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    div-int/2addr v2, v1

    int-to-double v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-direct {p0, p1, p2, v4, v0}, Lcom/android/utils/ui/GalleryCover;->transformImageBitmap(Landroid/view/View;Landroid/view/animation/Transformation;II)V

    :goto_0
    return v3
.end method

.method public getCircleMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/utils/ui/GalleryCover;->mCircleMode:Z

    return v0
.end method

.method public getMaxRotationAngle()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/GalleryCover;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/GalleryCover;->mMaxZoom:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/utils/ui/GalleryCover;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/GalleryCover;->mCoveflowCenter:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method

.method public setAlphaMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/GalleryCover;->mAlphaMode:Z

    return-void
.end method

.method public setCircleMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/GalleryCover;->mCircleMode:Z

    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxRotationAngle:I

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/GalleryCover;->mMaxZoom:I

    return-void
.end method
