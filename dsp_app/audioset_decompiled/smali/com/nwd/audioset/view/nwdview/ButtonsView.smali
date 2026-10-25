.class public Lcom/nwd/audioset/view/nwdview/ButtonsView;
.super Landroid/view/View;
.source "ButtonsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "dsp3-ButtonsView"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field mBitmapPaint:Landroid/graphics/Paint;

.field private mBitmapPress:Landroid/graphics/Bitmap;

.field private mText:[Ljava/lang/String;

.field mTextpaint:Landroid/graphics/Paint;

.field mWidth:I

.field private needBg:Ljava/lang/Boolean;

.field private onItemClickListener:Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;

.field private oneWidth:F

.field private selectID:I

.field private textColor:I

.field private textLenght:I

.field private textSize:F

.field private xexcursion:F

.field private xmoveFive:F

.field private xmoveFour:F

.field private xmoveOne:F

.field private xmoveThree:F

.field private xmoveTwo:F

.field private xmovesubtract:F

.field private ymoveFive:F

.field private ymoveFour:F

.field private ymoveOne:F

.field private ymoveThree:F

.field private ymoveTwo:F

.field private ystart:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, v0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, p1, p2, v0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 42
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    const/4 p3, 0x0

    .line 60
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    iput-object p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->needBg:Ljava/lang/Boolean;

    const/high16 p3, 0x40c00000    # 6.0f

    .line 61
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xexcursion:F

    const/high16 p3, 0x41f00000    # 30.0f

    .line 62
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    const/4 p3, 0x0

    .line 134
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveOne:F

    .line 135
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveOne:F

    .line 136
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveTwo:F

    .line 137
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveTwo:F

    .line 138
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveThree:F

    .line 139
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveThree:F

    .line 140
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveFour:F

    .line 141
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveFour:F

    .line 142
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveFive:F

    .line 143
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveFive:F

    .line 144
    iput p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmovesubtract:F

    .line 55
    invoke-direct {p0, p2, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->initData(Landroid/util/AttributeSet;Landroid/content/Context;)V

    .line 56
    invoke-direct {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->init()V

    return-void
.end method

.method private getType(F)I
    .locals 1

    .line 259
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private init()V
    .locals 3

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    .line 112
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 113
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textSize:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmapPaint:Landroid/graphics/Paint;

    .line 117
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 119
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070148

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmovesubtract:F

    return-void
.end method

.method private initData(Landroid/graphics/Canvas;)V
    .locals 8

    .line 147
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mWidth:I

    .line 148
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mWidth:I

    .line 151
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textLenght:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "\u9700\u8981\u753b\u7684\u503c\u4e3a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-ButtonsView"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->needBg:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 156
    iget v1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 157
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmapPress:Landroid/graphics/Bitmap;

    int-to-float v1, v1

    iget v5, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v1, v1, v5

    iget-object v5, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v1, 0x0

    .line 160
    :goto_0
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_8

    .line 161
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->needBg:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 162
    iget v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    if-eq v4, v1, :cond_1

    .line 164
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmap:Landroid/graphics/Bitmap;

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget-object v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 168
    :cond_1
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    .line 169
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveFive:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveFive:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 170
    :cond_2
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 171
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveFour:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveFour:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 172
    :cond_3
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 174
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xexcursion:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveThree:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveThree:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 175
    :cond_4
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_6

    .line 176
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 178
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xexcursion:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveTwo:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmovesubtract:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveTwo:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 180
    :cond_5
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xexcursion:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveTwo:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveTwo:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 182
    :cond_6
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v0, :cond_7

    .line 183
    iget-object v4, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v4, v4, v1

    int-to-float v5, v1

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->oneWidth:F

    mul-float v5, v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xexcursion:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveOne:F

    add-float/2addr v5, v6

    iget v6, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    iget v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveOne:F

    add-float/2addr v6, v7

    iget-object v7, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mTextpaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_7
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private initData(Landroid/util/AttributeSet;Landroid/content/Context;)V
    .locals 3

    .line 72
    sget-object v0, Lcom/nwd/audioset/R$styleable;->ButtonsView:[I

    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v0, 0x2

    .line 73
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->needBg:Ljava/lang/Boolean;

    const/4 v0, 0x6

    const/high16 v1, 0x40c00000    # 6.0f

    .line 75
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xexcursion:F

    const/4 v0, 0x7

    const/high16 v1, 0x41f00000    # 30.0f

    .line 76
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ystart:F

    const/4 v0, 0x3

    const/high16 v1, 0x41500000    # 13.0f

    .line 77
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textSize:F

    const/4 v0, 0x5

    const/16 v1, 0x20

    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textLenght:I

    .line 79
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 82
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_shuzhi_bg_n:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 87
    :cond_0
    invoke-static {v1}, Lcom/blankj/utilcode/util/ConvertUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmap:Landroid/graphics/Bitmap;

    .line 89
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_shuzhi_bg_d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/blankj/utilcode/util/ConvertUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mBitmapPress:Landroid/graphics/Bitmap;

    const/4 p2, 0x4

    const-string v0, "#A6A7A9"

    .line 98
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textColor:I

    .line 99
    iget-object p2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->needBg:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p2

    iget-boolean p2, p2, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p2

    iget-boolean p2, p2, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    if-nez p2, :cond_2

    .line 100
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f06007b

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textColor:I

    .line 102
    :cond_2
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object p2

    iget-boolean p2, p2, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    if-eqz p2, :cond_3

    .line 103
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070268

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->textSize:F

    .line 107
    :cond_3
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public getSelectID()I
    .locals 1

    .line 289
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    return v0
.end method

.method public getmText()[Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    return-object v0
.end method

.method public getmTextOnly()F
    .locals 3

    .line 282
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    array-length v2, v1

    if-gt v0, v2, :cond_0

    .line 283
    aget-object v0, v1, v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->initData(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 233
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 236
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->getType(F)I

    move-result p1

    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    .line 237
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u70b9\u51fb\u4e86"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YCH"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->invalidate()V

    .line 239
    iget-object p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->onItemClickListener:Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;

    if-eqz p1, :cond_1

    .line 240
    iget v0, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    iget-object v1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-interface {p1, p0, v0, v1}, Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;->onItemClicked(Landroid/view/View;ILjava/lang/String;)V

    .line 246
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->performClick()Z

    const/4 p1, 0x1

    return p1
.end method

.method public performClick()Z
    .locals 1

    .line 264
    invoke-super {p0}, Landroid/view/View;->performClick()Z

    move-result v0

    return v0
.end method

.method public setOnItemClickListener(Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->onItemClickListener:Lcom/nwd/audioset/view/nwdview/ButtonsView$OnItemClickListener;

    return-void
.end method

.method public setSelectID(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->selectID:I

    .line 294
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->invalidate()V

    return-void
.end method

.method public setXmoveFive(F)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveFive:F

    return-void
.end method

.method public setXmoveFour(F)V
    .locals 0

    .line 215
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveFour:F

    return-void
.end method

.method public setXmoveOne(F)V
    .locals 0

    .line 191
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveOne:F

    return-void
.end method

.method public setXmoveThree(F)V
    .locals 0

    .line 207
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveThree:F

    return-void
.end method

.method public setXmoveTwo(F)V
    .locals 0

    .line 199
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->xmoveTwo:F

    return-void
.end method

.method public setYmoveFive(F)V
    .locals 0

    .line 228
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveFive:F

    return-void
.end method

.method public setYmoveFour(F)V
    .locals 0

    .line 219
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveFour:F

    .line 220
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->invalidate()V

    return-void
.end method

.method public setYmoveOne(F)V
    .locals 0

    .line 195
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveOne:F

    return-void
.end method

.method public setYmoveThree(F)V
    .locals 0

    .line 211
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveThree:F

    return-void
.end method

.method public setYmoveTwo(F)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->ymoveTwo:F

    return-void
.end method

.method public setmText([Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    .line 301
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->invalidate()V

    return-void
.end method

.method public setmTextOnly(ILjava/lang/String;ZI)V
    .locals 3

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selectID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u8bbe\u7f6e\u7684\u503c\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-ButtonsView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "add"

    .line 308
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    int-to-float p2, p4

    add-float/2addr p2, v2

    :goto_0
    float-to-int p4, p2

    goto :goto_1

    :cond_0
    const-string v0, "low"

    .line 310
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    int-to-float p2, p4

    sub-float/2addr p2, v2

    goto :goto_0

    .line 313
    :cond_1
    :goto_1
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p3, :cond_2

    .line 315
    new-instance p2, Ljava/text/DecimalFormat;

    new-instance p3, Ljava/text/DecimalFormatSymbols;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, v0}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    const-string v0, "#0.0#"

    invoke-direct {p2, v0, p3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    int-to-float p3, p4

    const/high16 p4, 0x41200000    # 10.0f

    div-float/2addr p3, p4

    float-to-double p3, p3

    .line 316
    invoke-virtual {p2, p3, p4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p2

    .line 318
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u6700\u540e\u753b\u7684\u503cstr\u4e3a: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object p3, p0, Lcom/nwd/audioset/view/nwdview/ButtonsView;->mText:[Ljava/lang/String;

    aput-object p2, p3, p1

    .line 320
    invoke-virtual {p0}, Lcom/nwd/audioset/view/nwdview/ButtonsView;->invalidate()V

    return-void
.end method
