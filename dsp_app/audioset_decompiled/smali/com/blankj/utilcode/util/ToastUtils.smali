.class public final Lcom/blankj/utilcode/util/ToastUtils;
.super Ljava/lang/Object;
.source "ToastUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/utilcode/util/ToastUtils$IToast;,
        Lcom/blankj/utilcode/util/ToastUtils$AbsToast;,
        Lcom/blankj/utilcode/util/ToastUtils$ToastWithoutNotification;,
        Lcom/blankj/utilcode/util/ToastUtils$SystemToast;,
        Lcom/blankj/utilcode/util/ToastUtils$ToastFactory;
    }
.end annotation


# static fields
.field private static final COLOR_DEFAULT:I = -0x1000001

.field private static final NULL:Ljava/lang/String; = "null"

.field private static iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast; = null

.field private static sBgColor:I = -0x1000001

.field private static sBgResource:I = -0x1

.field private static sGravity:I = -0x1

.field private static sMsgColor:I = -0x1000001

.field private static sMsgTextSize:I = -0x1

.field private static sXOffset:I = -0x1

.field private static sYOffset:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .locals 1

    .line 38
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    return-object v0
.end method

.method static synthetic access$002(Lcom/blankj/utilcode/util/ToastUtils$IToast;)Lcom/blankj/utilcode/util/ToastUtils$IToast;
    .locals 0

    .line 38
    sput-object p0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    return-object p0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 38
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgColor:I

    return v0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 38
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgTextSize:I

    return v0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 38
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sGravity:I

    return v0
.end method

.method static synthetic access$400()I
    .locals 1

    .line 38
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sXOffset:I

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    .line 38
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sYOffset:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/TextView;)V
    .locals 0

    .line 38
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->setBg(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$700()V
    .locals 0

    .line 38
    invoke-static {}, Lcom/blankj/utilcode/util/ToastUtils;->setBg()V

    return-void
.end method

.method public static cancel()V
    .locals 1

    .line 223
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->cancel()V

    :cond_0
    return-void
.end method

.method private static getView(I)Landroid/view/View;
    .locals 2

    .line 347
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    .line 349
    invoke-virtual {v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private static setBg()V
    .locals 4

    .line 303
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 304
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 305
    sget v1, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 306
    :cond_0
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    const v1, -0x1000001

    if-eq v0, v1, :cond_3

    .line 307
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 308
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 310
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 314
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    .line 315
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 317
    :cond_2
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static setBg(Landroid/widget/TextView;)V
    .locals 5

    .line 324
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 325
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 326
    sget v2, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 327
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    .line 328
    :cond_0
    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    const v2, -0x1000001

    if-eq v0, v2, :cond_4

    .line 329
    sget-object v0, Lcom/blankj/utilcode/util/ToastUtils;->iToast:Lcom/blankj/utilcode/util/ToastUtils$IToast;

    invoke-interface {v0}, Lcom/blankj/utilcode/util/ToastUtils$IToast;->getView()Landroid/view/View;

    move-result-object v0

    .line 330
    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 331
    invoke-virtual {p0}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    .line 333
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget v3, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 334
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 336
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 338
    new-instance p0, Landroid/graphics/PorterDuffColorFilter;

    sget v0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, p0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 340
    :cond_3
    sget p0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public static setBgColor(I)V
    .locals 0

    .line 75
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sBgColor:I

    return-void
.end method

.method public static setBgResource(I)V
    .locals 0

    .line 84
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sBgResource:I

    return-void
.end method

.method public static setGravity(III)V
    .locals 0

    .line 64
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sGravity:I

    .line 65
    sput p1, Lcom/blankj/utilcode/util/ToastUtils;->sXOffset:I

    .line 66
    sput p2, Lcom/blankj/utilcode/util/ToastUtils;->sYOffset:I

    return-void
.end method

.method public static setMsgColor(I)V
    .locals 0

    .line 93
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgColor:I

    return-void
.end method

.method public static setMsgTextSize(I)V
    .locals 0

    .line 102
    sput p0, Lcom/blankj/utilcode/util/ToastUtils;->sMsgTextSize:I

    return-void
.end method

.method private static show(II)V
    .locals 1

    .line 230
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 231
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 233
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private static varargs show(II[Ljava/lang/Object;)V
    .locals 1

    .line 239
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 240
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 241
    invoke-static {p2, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 243
    :catch_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    :goto_0
    return-void
.end method

.method private static show(Landroid/view/View;I)V
    .locals 1

    .line 286
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$2;-><init>(Landroid/view/View;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static show(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 261
    new-instance v0, Lcom/blankj/utilcode/util/ToastUtils$1;

    invoke-direct {v0, p0, p1}, Lcom/blankj/utilcode/util/ToastUtils$1;-><init>(Ljava/lang/CharSequence;I)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/Utils;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static varargs show(Ljava/lang/String;I[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "null"

    if-nez p0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 257
    :goto_0
    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static showCustomLong(I)Landroid/view/View;
    .locals 0

    .line 206
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showCustomLong(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static showCustomLong(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x1

    .line 215
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showCustomShort(I)Landroid/view/View;
    .locals 0

    .line 187
    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->getView(I)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lcom/blankj/utilcode/util/ToastUtils;->showCustomShort(Landroid/view/View;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static showCustomShort(Landroid/view/View;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 196
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Landroid/view/View;I)V

    return-object p0
.end method

.method public static showLong(I)V
    .locals 1

    const/4 v0, 0x1

    .line 158
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(II)V

    return-void
.end method

.method public static varargs showLong(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 168
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static showLong(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x1

    .line 149
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs showLong(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method

.method public static showShort(I)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(II)V

    return-void
.end method

.method public static varargs showShort(I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(II[Ljava/lang/Object;)V

    return-void
.end method

.method public static showShort(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p0, :cond_0

    const-string p0, "null"

    :cond_0
    const/4 v0, 0x0

    .line 111
    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public static varargs showShort(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/ToastUtils;->show(Ljava/lang/String;I[Ljava/lang/Object;)V

    return-void
.end method
