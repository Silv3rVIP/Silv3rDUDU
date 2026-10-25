.class public abstract Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;
.super Landroid/app/Service;


# static fields
.field private static final DEFAULT_FLOATING_ALPHA:F = 0.4f


# instance fields
.field private isMove:Z

.field private mAdjustAssist:[I

.field private mDialogApearAnimation:Landroid/view/animation/Animation;

.field private mDialogClickListener:Landroid/view/View$OnClickListener;

.field private mDialogLayout:Landroid/widget/FrameLayout;

.field private mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mFloatingClickListener:Landroid/view/View$OnClickListener;

.field private mFloatingLayout:Landroid/widget/FrameLayout;

.field private mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mFloatingTouchListener:Landroid/view/View$OnTouchListener;

.field private mLastX:F

.field private mLastY:F

.field private mScreenH:I

.field private mScreenW:I

.field private mStatusBarHeight:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$1;-><init>(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$2;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$2;-><init>(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$3;

    invoke-direct {v0, p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService$3;-><init>(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)F
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mLastX:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)F
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mLastX:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)F
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mLastY:F

    return p0
.end method

.method static synthetic access$102(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)F
    .locals 0

    iput p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mLastY:F

    return p1
.end method

.method static synthetic access$200(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->changeFloatingAlpha(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->isMove:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->isMove:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/view/WindowManager$LayoutParams;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)I
    .locals 0

    iget p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->adjustFloatingPosition()V

    return-void
.end method

.method private adjustFloatingPosition()V
    .locals 7

    iget v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mScreenW:I

    const/4 v1, 0x2

    div-int/2addr v0, v1

    iget v2, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mScreenH:I

    div-int/2addr v2, v1

    iget-object v3, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v4, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/2addr v4, v1

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->height:I

    div-int/2addr v5, v1

    add-int/2addr v4, v5

    invoke-direct {p0, v3, v4, v0, v2}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->calQuadrantResult(IIII)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mAdjustAssist:[I

    const/4 v2, 0x0

    aget v2, v0, v2

    iget v5, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mScreenW:I

    mul-int v2, v2, v5

    const/4 v6, 0x1

    aget v6, v0, v6

    mul-int v6, v6, v3

    add-int/2addr v2, v6

    aget v1, v0, v1

    iget v3, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mScreenH:I

    mul-int v1, v1, v3

    sub-int/2addr v2, v1

    const/4 v1, 0x3

    aget v1, v0, v1

    mul-int v1, v1, v4

    add-int/2addr v2, v1

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-lez v2, :cond_0

    const/4 v2, 0x5

    aget v0, v0, v2

    mul-int v0, v0, v3

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    aget v0, v0, v2

    mul-int v0, v0, v5

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private calQuadrantResult(IIII)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "x = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",y = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, -0x1

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mAdjustAssist:[I

    aput v5, p1, v5

    aput v6, p1, v6

    aput v5, p1, v4

    aput v2, p1, v3

    aput v5, p1, v1

    aput v5, p1, v0

    goto :goto_0

    :cond_0
    if-le p1, p3, :cond_1

    if-ge p2, p4, :cond_1

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mAdjustAssist:[I

    aput v6, p1, v5

    aput v2, p1, v6

    aput v5, p1, v4

    aput v2, p1, v3

    aput v6, p1, v1

    aput v5, p1, v0

    goto :goto_0

    :cond_1
    if-ge p1, p3, :cond_2

    if-le p2, p4, :cond_2

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mAdjustAssist:[I

    aput v5, p1, v5

    aput v6, p1, v6

    aput v6, p1, v4

    aput v6, p1, v3

    aput v5, p1, v1

    aput v6, p1, v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mAdjustAssist:[I

    aput v6, p1, v5

    aput v2, p1, v6

    aput v6, p1, v4

    aput v6, p1, v3

    aput v6, p1, v1

    aput v6, p1, v0

    :goto_0
    return-void
.end method

.method private changeFloatingAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object p1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {p1, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getQuadrant(IIII)I
    .locals 0

    if-ge p1, p3, :cond_0

    if-ge p2, p4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-le p1, p3, :cond_1

    if-ge p2, p4, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    if-ge p1, p3, :cond_2

    if-le p2, p4, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    const/4 p1, 0x4

    return p1
.end method

.method private getStatusBarHeight()I
    .locals 3

    :try_start_0
    const-string v0, "com.android.internal.R$dimen"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "status_bar_height"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 v0, 0x19

    return v0
.end method

.method private initDialogLayout()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->onCreateDialogLayoutParam(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->inflateDialogView(Landroid/view/ViewGroup;)V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getDialogAppearAnimationRef()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getDialogAppearAnimationRef()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogApearAnimation:Landroid/view/animation/Animation;

    :cond_0
    return-void
.end method

.method private initFloatingLayouts()V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3ecccccd    # 0.4f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->inflateFloatingView(Landroid/view/ViewGroup;)V

    return-void
.end method


# virtual methods
.method protected abstract getDialogAppearAnimationRef()I
.end method

.method protected hideDialog()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method protected abstract inflateDialogView(Landroid/view/ViewGroup;)V
.end method

.method protected abstract inflateFloatingView(Landroid/view/ViewGroup;)V
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->onCreateService()V

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mAdjustAssist:[I

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mScreenW:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mScreenH:I

    invoke-direct {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->getStatusBarHeight()I

    move-result v0

    iput v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mStatusBarHeight:I

    invoke-direct {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->initFloatingLayouts()V

    invoke-direct {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->initDialogLayout()V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onCreateDialogLayoutParam(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    return-void
.end method

.method protected abstract onCreateService()V
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    invoke-virtual {p0}, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->onRelease()V

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogApearAnimation:Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingClickListener:Landroid/view/View$OnClickListener;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method protected abstract onRelease()V
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected showDialog()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mFloatingLayout:Landroid/widget/FrameLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogApearAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/utils/ui/floating/menu/AbsFloatingMenuService;->mDialogApearAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
