.class public Lcom/android/utils/ui/carousel/CircleLayout;
.super Landroid/view/ViewGroup;

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;,
        Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;,
        Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;,
        Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;
    }
.end annotation


# static fields
.field private static final LOG:Lcom/android/utils/log/JLog;


# instance fields
.field private isTrackBackground:Z

.field private isTrackScroll:Z

.field private mAngle:I

.field private mAngleSkip:I

.field private mBackground:Landroid/graphics/Bitmap;

.field private mCamera:Landroid/graphics/Camera;

.field private mCanSeeAngleMax:I

.field private mCanSeeAngleMin:I

.field public mChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mDefaultAngle:I

.field private mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHeight:I

.field private mItemClickListener:Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;

.field private mLongRadius:I

.field private mMoveAngle:I

.field private mPage:I

.field private mPageChangeListener:Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mScrollX:I

.field private mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

.field private mSelectorDrawable:Landroid/graphics/drawable/Drawable;

.field private mShortRadius:I

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "CircleLayout"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/ui/carousel/CircleLayout;->LOG:Lcom/android/utils/log/JLog;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mMoveAngle:I

    const/16 v0, 0x1fe

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mLongRadius:I

    const/16 v0, 0x82

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mShortRadius:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mHeight:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngleSkip:I

    new-instance v0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;)V

    iput-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    new-instance v0, Lcom/android/utils/ui/carousel/CircleLayout$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout$1;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;)V

    iput-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/utils/ui/carousel/CircleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mMoveAngle:I

    const/16 v0, 0x1fe

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mLongRadius:I

    const/16 v0, 0x82

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mShortRadius:I

    const/16 v0, 0x4b0

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mHeight:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngleSkip:I

    new-instance v0, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;)V

    iput-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    new-instance v0, Lcom/android/utils/ui/carousel/CircleLayout$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/carousel/CircleLayout$1;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;)V

    iput-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-direct {p0, p1, p2}, Lcom/android/utils/ui/carousel/CircleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x3

    iput p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mMoveAngle:I

    const/16 p3, 0x1fe

    iput p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mLongRadius:I

    const/16 p3, 0x82

    iput p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mShortRadius:I

    const/16 p3, 0x4b0

    iput p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    const/16 p3, 0x1c2

    iput p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mHeight:I

    const/16 p3, 0x5a

    iput p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngleSkip:I

    new-instance p3, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    invoke-direct {p3, p0}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;)V

    iput-object p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    new-instance p3, Lcom/android/utils/ui/carousel/CircleLayout$1;

    invoke-direct {p3, p0}, Lcom/android/utils/ui/carousel/CircleLayout$1;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;)V

    iput-object p3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-direct {p0, p1, p2}, Lcom/android/utils/ui/carousel/CircleLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/utils/ui/carousel/CircleLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->calSkipAngle()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/utils/ui/carousel/CircleLayout;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->resetPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/utils/ui/carousel/CircleLayout;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mMoveAngle:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/utils/ui/carousel/CircleLayout;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/ui/carousel/CircleLayout;->trackScroll(I)V

    return-void
.end method

.method private adjustView(Landroid/graphics/Matrix;IIIII)Landroid/graphics/Matrix;
    .locals 3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    const/16 v0, 0x168

    rem-int/2addr p2, v0

    add-int/lit8 v1, p2, -0x5a

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/16 v2, 0x10e

    if-le p2, v2, :cond_0

    if-ge p2, v0, :cond_0

    rsub-int v1, p2, 0x1c2

    :cond_0
    mul-int/lit8 v1, v1, 0x4

    iget-object p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/graphics/Camera;->save()V

    iget-object p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCamera:Landroid/graphics/Camera;

    int-to-float v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v1, v0}, Landroid/graphics/Camera;->translate(FFF)V

    iget-object p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2, p1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    iget-object p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {p2}, Landroid/graphics/Camera;->restore()V

    div-int/lit8 p5, p5, 0x2

    sub-int/2addr p3, p5

    int-to-float p2, p3

    div-int/lit8 p6, p6, 0x2

    sub-int/2addr p4, p6

    int-to-float p3, p4

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p1
.end method

.method private calSkipAngle()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/16 v0, 0x168

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildCount()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    :cond_0
    const/16 v0, 0x5a

    :goto_0
    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngleSkip:I

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    sget-object v0, Lcom/android/utils/R$styleable;->CircleLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/16 v0, 0x1fe

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mLongRadius:I

    const/4 p2, 0x3

    const/16 v0, 0x82

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mShortRadius:I

    const/4 v0, 0x0

    const/16 v1, 0x4b0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    const/4 v1, 0x1

    const/16 v2, 0x1c2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mHeight:I

    const/4 v2, 0x5

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    const/4 v2, 0x4

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mMoveAngle:I

    const/4 p2, 0x7

    const/16 v2, 0xf0

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCanSeeAngleMin:I

    const/16 p2, 0x8

    const/16 v2, 0x12c

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCanSeeAngleMax:I

    const/4 p2, 0x6

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mDefaultAngle:I

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/16 v2, 0x9

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {p2, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mBackground:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/16 v2, 0xa

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/android/utils/ui/carousel/CircleLayout;->setStaticTransformationsEnabled(Z)V

    iget-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/utils/ui/carousel/CircleLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScreenWidth:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScreenHeight:I

    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCamera:Landroid/graphics/Camera;

    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method private resetBackground()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->isTrackBackground:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->isTrackBackground:Z

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    iget v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    iget v3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScreenWidth:I

    sub-int v4, v2, v3

    const/4 v5, 0x2

    div-int/2addr v4, v5

    if-le v1, v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    :goto_0
    iget-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPageChangeListener:Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    invoke-interface {v1, v2, v5}, Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;->onScrollChange(II)V

    :cond_1
    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPage:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPage:I

    iget-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPageChangeListener:Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;

    if-eqz v1, :cond_2

    invoke-interface {v1, v0}, Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;->onPageChange(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->invalidate()V

    :cond_3
    return-void
.end method

.method private resetPosition()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->isTrackScroll:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->isTrackScroll:Z

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngleSkip:I

    rem-int v2, v0, v1

    div-int/lit8 v3, v1, 0x2

    if-ge v2, v3, :cond_0

    sub-int/2addr v0, v2

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    :goto_0
    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->invalidate()V

    :cond_1
    return-void
.end method

.method private trackBackground(I)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->isTrackBackground:Z

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    if-gez v1, :cond_0

    const/4 p1, 0x0

    :goto_0
    iput p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    iget v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScreenWidth:I

    sub-int v3, p1, v2

    if-lt v1, v3, :cond_1

    sub-int/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPageChangeListener:Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;

    if-eqz p1, :cond_2

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    invoke-interface {p1, v1, v0}, Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;->onScrollChange(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->invalidate()V

    return-void
.end method

.method private trackScroll(I)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->isTrackScroll:Z

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    if-gez v0, :cond_0

    add-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    :cond_0
    iget p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    rem-int/lit16 p1, p1, 0x168

    iput p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->invalidate()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_0
    sget-object p3, Lcom/android/utils/ui/carousel/CircleLayout;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addview index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance p3, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    invoke-direct {p3, p0, p2}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;-><init>(Lcom/android/utils/ui/carousel/CircleLayout;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public checkSelectItem(II)Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    invoke-virtual {v1, p1, p2}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->isInItem(II)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mBackground:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    neg-int v1, v1

    int-to-float v1, v1

    const/high16 v2, 0x42200000    # 40.0f

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    if-eqz v1, :cond_1

    iget v1, v1, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->x:I

    iget-object v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    iget v2, v2, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->y:I

    iget-object v3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    iget v3, v3, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->x:I

    iget-object v4, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    invoke-static {v4}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->access$000(Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    iget v4, v4, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->y:I

    iget-object v5, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    invoke-static {v5}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->access$100(Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 11

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScrollX:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1e

    iget v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    iget v2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngle:I

    invoke-virtual {p1}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->getIndex()I

    move-result v3

    iget v4, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mAngleSkip:I

    mul-int v3, v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mDefaultAngle:I

    add-int v6, v2, v3

    rem-int/lit16 v2, v6, 0x168

    iget v3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCanSeeAngleMin:I

    if-lt v2, v3, :cond_1

    iget v3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCanSeeAngleMax:I

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    const/high16 p2, 0x4f000000

    invoke-virtual {p1, p2, p2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    goto :goto_1

    :cond_1
    :goto_0
    int-to-double v2, v0

    iget v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mLongRadius:I

    int-to-double v4, v0

    int-to-double v7, v6

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v7, v7, v9

    const-wide v9, 0x4066800000000000L    # 180.0

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v4, v4, v9

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v2, v4

    double-to-int v0, v2

    int-to-double v1, v1

    iget v3, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mShortRadius:I

    int-to-double v3, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v7

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v1, v3

    double-to-int v8, v1

    invoke-virtual {p1}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->getWidth()I

    move-result v9

    invoke-virtual {p1}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->getHeight()I

    move-result v10

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    move-object v4, p0

    move v7, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/utils/ui/carousel/CircleLayout;->adjustView(Landroid/graphics/Matrix;IIIII)Landroid/graphics/Matrix;

    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->access$200(Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;Landroid/graphics/Matrix;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    iget-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    invoke-virtual {p1}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->stop()V

    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScreenHeight:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    neg-float p2, p3

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;->startUsingVelocity(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    move-result p5

    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p4, p2, p2, p5, v0}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/utils/ui/carousel/CircleLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, p1, p2}, Lcom/android/utils/ui/carousel/CircleLayout;->measureChild(Landroid/view/View;II)V

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->onMeasure(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mScreenHeight:I

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    const/4 p4, 0x1

    cmpl-float p1, p1, p2

    if-lez p1, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget p2, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mMoveAngle:I

    mul-int p1, p1, p2

    invoke-direct {p0, p1}, Lcom/android/utils/ui/carousel/CircleLayout;->trackScroll(I)V

    goto :goto_0

    :cond_1
    float-to-int p1, p3

    invoke-direct {p0, p1}, Lcom/android/utils/ui/carousel/CircleLayout;->trackBackground(I)V

    :goto_0
    return p4
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/utils/ui/carousel/CircleLayout;->checkSelectItem(II)Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mItemClickListener:Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;->getIndex()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;->onClick(I)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->resetPosition()V

    invoke-direct {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->resetBackground()V

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, v0, p1}, Lcom/android/utils/ui/carousel/CircleLayout;->checkSelectItem(II)Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectItem:Lcom/android/utils/ui/carousel/CircleLayout$CircleItem;

    invoke-virtual {p0}, Lcom/android/utils/ui/carousel/CircleLayout;->invalidate()V

    :goto_1
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mBackground:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mBackground:Landroid/graphics/Bitmap;

    :cond_0
    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mFlingRunnable:Lcom/android/utils/ui/carousel/CircleLayout$FlingRunnable;

    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mCamera:Landroid/graphics/Camera;

    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mGestureDetector:Landroid/view/GestureDetector;

    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mItemClickListener:Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;

    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPageChangeListener:Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;

    iput-object v1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mSelectorDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setOnItemClickListener(Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mItemClickListener:Lcom/android/utils/ui/carousel/CircleLayout$OnItemClickListener;

    return-void
.end method

.method public setOnPageChangeListener(Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/carousel/CircleLayout;->mPageChangeListener:Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;

    return-void
.end method
