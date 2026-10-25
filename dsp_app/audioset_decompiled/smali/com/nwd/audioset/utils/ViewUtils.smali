.class public Lcom/nwd/audioset/utils/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs setMaxHeight([Landroid/view/View;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    .line 18
    aget-object v3, p0, v1

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-le v3, v2, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 24
    aget-object v1, p0, v0

    .line 25
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 26
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 27
    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static setViewTreeObserver(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/nwd/audioset/utils/ViewUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/nwd/audioset/utils/ViewUtils$1;-><init>(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
