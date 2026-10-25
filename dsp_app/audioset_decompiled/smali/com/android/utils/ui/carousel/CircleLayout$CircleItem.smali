.class Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/carousel/CircleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CircleItem"
.end annotation


# instance fields
.field height:I

.field private mChangeHeight:I

.field private mChangeWidth:I

.field private mIndex:I

.field private mMatrit:[F

.field final synthetic this$0:Lcom/android/utils/ui/carousel/CircleLayout;

.field width:I

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/android/utils/ui/carousel/CircleLayout;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->this$0:Lcom/android/utils/ui/carousel/CircleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mMatrit:[F

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mChangeWidth:I

    return p0
.end method

.method static synthetic access$100(Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mChangeHeight:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->adjustLayout(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private adjustLayout(Landroid/graphics/Matrix;)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mMatrit:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    iget-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mMatrit:[F

    const/4 v0, 0x2

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->x:I

    const/4 v0, 0x5

    aget v0, p1, v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->y:I

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->width:I

    int-to-float v0, v0

    const/4 v1, 0x0

    aget v1, p1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mChangeWidth:I

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->height:I

    int-to-float v0, v0

    const/4 v1, 0x4

    aget p1, p1, v1

    mul-float v0, v0, p1

    float-to-int p1, v0

    iput p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mChangeHeight:I

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->height:I

    return v0
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mIndex:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->width:I

    return v0
.end method

.method public isInItem(II)Z
    .locals 2

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->x:I

    if-le p1, v0, :cond_0

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mChangeWidth:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->y:I

    if-le p2, p1, :cond_0

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->mChangeHeight:I

    add-int/2addr p1, v0

    if-ge p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onMeasure(II)V
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->width:I

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->height:I

    return-void
.end method
