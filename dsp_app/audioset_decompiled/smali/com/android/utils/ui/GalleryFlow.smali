.class public Lcom/android/utils/ui/GalleryFlow;
.super Landroid/widget/Gallery;


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    const/16 p1, -0x78

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxZoom:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    const/16 p1, -0x78

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxZoom:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/16 p1, 0x3c

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    const/16 p1, -0x78

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxZoom:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/android/utils/ui/GalleryFlow;->getPaddingLeft()I

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

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v3, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3, v3, v4}, Landroid/graphics/Camera;->translate(FFF)V

    iget v2, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxZoom:I

    int-to-double v4, v2

    int-to-double v1, v1

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v4, v1

    double-to-float v1, v4

    iget-object v2, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v2, v3, v3, v1}, Landroid/graphics/Camera;->translate(FFF)V

    :cond_0
    iget-object v1, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    int-to-float p3, p3

    invoke-virtual {v1, p3}, Landroid/graphics/Camera;->rotateY(F)V

    iget-object p3, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p3, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    div-int/lit8 p1, p1, 0x2

    neg-int p3, p1

    int-to-float p3, p3

    div-int/lit8 v0, v0, 0x2

    neg-int v1, v0

    int-to-float v1, v1

    invoke-virtual {p2, p3, v1}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    int-to-float p1, p1

    int-to-float p3, v0

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget-object p1, p0, Lcom/android/utils/ui/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p1}, Landroid/graphics/Camera;->restore()V

    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 3

    invoke-static {p1}, Lcom/android/utils/ui/GalleryFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    iget v2, p0, Lcom/android/utils/ui/GalleryFlow;->mCoveflowCenter:I

    if-ne v0, v2, :cond_0

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/ui/GalleryFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;I)V

    goto :goto_2

    :cond_0
    sub-int/2addr v2, v0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    if-le v1, v2, :cond_2

    if-gez v0, :cond_1

    neg-int v0, v2

    goto :goto_1

    :cond_1
    move v0, v2

    :cond_2
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    goto :goto_0

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public getMaxRotationAngle()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxZoom:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-direct {p0}, Lcom/android/utils/ui/GalleryFlow;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/GalleryFlow;->mCoveflowCenter:I

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxRotationAngle:I

    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/GalleryFlow;->mMaxZoom:I

    return-void
.end method
