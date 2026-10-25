.class public Lcom/android/utils/ui/picker/CycleListView;
.super Landroid/view/View;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/utils/ui/picker/CycleListView$Item;,
        Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;
    }
.end annotation


# instance fields
.field private endTime:J

.field private handler:Landroid/os/Handler;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBitmaps:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCanvas:Landroid/graphics/Canvas;

.field private mCurrIndex:I

.field private mCurrentVolume:I

.field private mDataChangeLister:Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;

.field private mFirstIndex:I

.field private mFirstY:I

.field private mIsCanRun:Z

.field private mIsFirstLoad:Z

.field private mItemHeight:I

.field private mLastIndex:I

.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/utils/ui/picker/CycleListView$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mMoveY:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPicPaint:Landroid/graphics/Paint;

.field private mShowCount:I

.field private mSoundId:I

.field private mSoundPool:Landroid/media/SoundPool;

.field private mStartY:I

.field private mTempY:I

.field private mTextColor:I

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mVelocity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/utils/ui/picker/CycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/utils/ui/picker/CycleListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p3, 0x41800000    # 16.0f

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextSize:F

    const/high16 p3, -0x1000000

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextColor:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsFirstLoad:Z

    new-instance v3, Lcom/android/utils/ui/picker/CycleListView$1;

    invoke-direct {v3, p0}, Lcom/android/utils/ui/picker/CycleListView$1;-><init>(Lcom/android/utils/ui/picker/CycleListView;)V

    iput-object v3, p0, Lcom/android/utils/ui/picker/CycleListView;->handler:Landroid/os/Handler;

    if-eqz p2, :cond_0

    sget-object v3, Lcom/android/utils/R$styleable;->CycleListView:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextColor:I

    const/16 p3, 0x10

    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextSize:F

    const/4 p3, 0x2

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    new-instance p2, Landroid/media/SoundPool;

    invoke-direct {p2, v2, v2, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mSoundPool:Landroid/media/SoundPool;

    const p3, 0x7f040001

    const/16 v0, 0xa

    invoke-virtual {p2, p1, p3, v0}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result p2

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mSoundId:I

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/utils/ui/picker/CycleListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/picker/CycleListView;)Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/picker/CycleListView;->mDataChangeLister:Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;

    return-object p0
.end method

.method private checkBitmap(II)V
    .locals 4

    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    mul-int/lit8 v1, v0, -0x3

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-gt p2, v1, :cond_3

    :goto_0
    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    mul-int/lit8 v0, v0, -0x3

    div-int/lit8 v0, v0, 0x2

    if-gt p2, v0, :cond_2

    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    iput v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    :cond_0
    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mLastIndex:I

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mLastIndex:I

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mLastIndex:I

    :cond_1
    iget-object p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    iget v3, p0, Lcom/android/utils/ui/picker/CycleListView;->mLastIndex:I

    invoke-direct {p0, p1, v1, v3, p2}, Lcom/android/utils/ui/picker/CycleListView;->getBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/utils/ui/picker/CycleListView;->playSound()V

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_3
    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-lt p2, v0, :cond_6

    :goto_1
    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    if-lt p2, v0, :cond_2

    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    if-gez p2, :cond_4

    iget-object p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    :cond_4
    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstIndex:I

    if-gez p2, :cond_5

    iget-object p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstIndex:I

    add-int/2addr p2, v0

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstIndex:I

    :cond_5
    iget-object p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    iget v3, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstIndex:I

    invoke-direct {p0, p1, v1, v3, p2}, Lcom/android/utils/ui/picker/CycleListView;->getBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    goto :goto_1

    :cond_6
    :goto_2
    return-void
.end method

.method private drawItem(Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/Integer;)V
    .locals 5

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    iget-object v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p5, :cond_0

    iget-object v3, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    iget-object v4, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p5}, Ljava/lang/Integer;->intValue()I

    move-result p5

    invoke-virtual {v4, p5}, Landroid/graphics/Paint;->setColor(I)V

    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    iget-object p5, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_0
    div-int/lit8 p2, p2, 0x2

    int-to-float p2, p2

    div-float/2addr v0, v2

    sub-float/2addr p2, v0

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    div-float/2addr v1, v2

    add-float/2addr p3, v1

    iget-object p5, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private drawItems(Landroid/graphics/Canvas;II)V
    .locals 4

    iget-boolean p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsFirstLoad:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    if-lt p3, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "list is size can\'t less than (showCount + 2)/2 !"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    iget p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v1, v1, 0x2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr p3, v1

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstIndex:I

    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_6

    iget-object v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gez p3, :cond_3

    add-int/2addr p3, v2

    goto :goto_2

    :cond_3
    if-lt p3, v2, :cond_4

    const/4 p3, 0x0

    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    invoke-direct {p0, p2, v3, p3, v2}, Lcom/android/utils/ui/picker/CycleListView;->getBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    iget p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    neg-int p3, p3

    iput p3, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iput-boolean v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsFirstLoad:Z

    :cond_7
    invoke-direct {p0, p2, p2}, Lcom/android/utils/ui/picker/CycleListView;->checkBitmap(II)V

    :goto_3
    iget p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 p2, p2, 0x2

    if-ge v0, p2, :cond_8

    iget-object p2, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    const/4 p3, 0x0

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    iget v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    mul-int v2, v2, v0

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mPicPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_8
    return-void
.end method

.method private getBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    if-nez p4, :cond_0

    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p4

    :cond_0
    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mCanvas:Landroid/graphics/Canvas;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-virtual {v0}, Lcom/android/utils/ui/picker/CycleListView$Item;->getText()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/utils/ui/picker/CycleListView$Item;

    invoke-virtual {p3}, Lcom/android/utils/ui/picker/CycleListView$Item;->getColor()Ljava/lang/Integer;

    move-result-object p3

    move-object v6, p3

    move-object v5, v0

    goto :goto_1

    :cond_2
    const-string p3, "0"

    move-object v5, p3

    move-object v6, v0

    :goto_1
    iget-object v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mCanvas:Landroid/graphics/Canvas;

    move-object v1, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/utils/ui/picker/CycleListView;->drawItem(Landroid/graphics/Canvas;IILjava/lang/String;Ljava/lang/Integer;)V

    return-object p4
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-static {v2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mPicPaint:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    :goto_0
    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v0, v0, 0x2

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private playSound()V
    .locals 8

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrentVolume:I

    iget-object v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mSoundId:I

    int-to-float v3, v0

    int-to-float v4, v0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    return-void
.end method


# virtual methods
.method public getCurrIndex()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    return v0
.end method

.method public getList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/utils/ui/picker/CycleListView$Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShowCount()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    return v0
.end method

.method public getShowCurrent()Lcom/android/utils/ui/picker/CycleListView$Item;
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/utils/ui/picker/CycleListView$Item;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextSize:F

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    div-int v1, v0, v1

    iput v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->getWidth()I

    move-result v1

    invoke-direct {p0, p1, v1, v0}, Lcom/android/utils/ui/picker/CycleListView;->drawItems(Landroid/graphics/Canvas;II)V

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->getHeight()I

    move-result v0

    if-ge v0, v1, :cond_0

    const/16 v0, 0x32

    invoke-static {v0, p1}, Lcom/android/utils/ui/picker/CycleListView;->resolveSize(II)I

    move-result p1

    const/16 v0, 0x96

    invoke-static {v0, p2}, Lcom/android/utils/ui/picker/CycleListView;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/utils/ui/picker/CycleListView;->setMeasuredDimension(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iget v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mTempY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mMoveY:I

    if-eqz v0, :cond_1

    iget v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->invalidate()V

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTempY:I

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    float-to-int p1, p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/utils/ui/picker/CycleListView;->endTime:J

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/utils/ui/picker/CycleListView;->endTime:J

    mul-int/lit8 p1, p1, 0x19

    int-to-long v4, p1

    div-long/2addr v4, v2

    long-to-int p1, v4

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mVelocity:I

    iput-boolean v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsCanRun:Z

    const/16 v0, 0x64

    if-le p1, v0, :cond_3

    :goto_0
    iput v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mVelocity:I

    goto :goto_1

    :cond_3
    const/16 v0, -0x64

    if-ge p1, v0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTempY:I

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mFirstY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/utils/ui/picker/CycleListView;->endTime:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsCanRun:Z

    :goto_2
    return v1
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public run()V
    .locals 2

    :goto_0
    iget-boolean v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsCanRun:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mVelocity:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->postInvalidate()V

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mVelocity:I

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mVelocity:I

    goto :goto_2

    :cond_0
    if-gez v0, :cond_1

    iget v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->postInvalidate()V

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mVelocity:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mItemHeight:I

    neg-int v0, v0

    iput v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mStartY:I

    invoke-virtual {p0}, Lcom/android/utils/ui/picker/CycleListView;->postInvalidate()V

    goto :goto_3

    :cond_2
    :goto_2
    const-wide/16 v0, 0x50

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_3
    :goto_3
    return-void
.end method

.method public setCurrIndex(I)V
    .locals 2

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    if-eq p1, v0, :cond_2

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mCurrIndex:I

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsFirstLoad:Z

    :cond_2
    return-void
.end method

.method public setList(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/utils/ui/picker/CycleListView$Item;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mList:Ljava/util/ArrayList;

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsFirstLoad:Z

    return-void
.end method

.method public setOnChangeListener(Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mDataChangeLister:Lcom/android/utils/ui/picker/CycleListView$OnChangedListener;

    return-void
.end method

.method public setShowCount(I)V
    .locals 3

    iget v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    if-eq p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-gez p1, :cond_2

    const/4 p1, 0x1

    :cond_2
    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_3

    add-int/lit8 p1, p1, 0x1

    :cond_3
    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    :goto_1
    iget p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mShowCount:I

    add-int/lit8 p1, p1, 0x2

    if-ge v1, p1, :cond_4

    iget-object p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mBitmaps:Ljava/util/LinkedList;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iput-boolean v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mIsFirstLoad:Z

    :cond_5
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextColor:I

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    iput p1, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextSize:F

    iget-object v0, p0, Lcom/android/utils/ui/picker/CycleListView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
