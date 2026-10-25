.class final Lcom/nwd/audioset/utils/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/utils/ViewUtils;->setViewTreeObserver(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/nwd/audioset/utils/ViewUtils$1;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcom/nwd/audioset/utils/ViewUtils$1;->val$callBack:Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/nwd/audioset/utils/ViewUtils$1;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 36
    iget-object v0, p0, Lcom/nwd/audioset/utils/ViewUtils$1;->val$callBack:Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;

    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0}, Lcom/nwd/audioset/utils/ViewUtils$ViewTreeCallBack;->onGlobalLayout()V

    :cond_0
    return-void
.end method
