.class public Lcom/android/utils/ui/effect/GrayEffect;
.super Lcom/android/utils/ui/effect/IEffect;


# static fields
.field private static carray:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    sput-object v0, Lcom/android/utils/ui/effect/GrayEffect;->carray:[F

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/effect/IEffect;-><init>()V

    return-void
.end method

.method private static getValueBlackAndWhite()V
    .locals 6

    sget-object v0, Lcom/android/utils/ui/effect/GrayEffect;->carray:[F

    const v1, 0x3e9db22d    # 0.308f

    const/4 v2, 0x0

    aput v1, v0, v2

    const v2, 0x3f1be76d    # 0.609f

    const/4 v3, 0x1

    aput v2, v0, v3

    const v3, 0x3da7ef9e    # 0.082f

    const/4 v4, 0x2

    aput v3, v0, v4

    const/4 v4, 0x0

    const/4 v5, 0x3

    aput v4, v0, v5

    const/4 v5, 0x4

    aput v4, v0, v5

    const/4 v5, 0x5

    aput v1, v0, v5

    const/4 v5, 0x6

    aput v2, v0, v5

    const/4 v5, 0x7

    aput v3, v0, v5

    const/16 v5, 0x8

    aput v4, v0, v5

    const/16 v5, 0x9

    aput v4, v0, v5

    const/16 v5, 0xa

    aput v1, v0, v5

    const/16 v1, 0xb

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v3, v0, v1

    const/16 v1, 0xd

    aput v4, v0, v1

    const/16 v1, 0xe

    aput v4, v0, v1

    const/16 v1, 0xf

    aput v4, v0, v1

    const/16 v1, 0x10

    aput v4, v0, v1

    const/16 v1, 0x11

    aput v4, v0, v1

    const/16 v1, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/16 v1, 0x13

    aput v4, v0, v1

    return-void
.end method


# virtual methods
.method public changeEffect(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct {v4}, Landroid/graphics/ColorMatrix;-><init>()V

    invoke-static {}, Lcom/android/utils/ui/effect/GrayEffect;->getValueBlackAndWhite()V

    sget-object v5, Lcom/android/utils/ui/effect/GrayEffect;->carray:[F

    invoke-virtual {v4, v5}, Landroid/graphics/ColorMatrix;->set([F)V

    new-instance v5, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v5, v4}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    invoke-virtual {v1, p1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object v0
.end method
