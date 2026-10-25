.class public abstract Lcom/nwd/audioset/mvpbase/BaseFragment;
.super Landroidx/fragment/app/Fragment;
.source "BaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/nwd/audioset/mvpbase/BasePresenter;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mPrenseter:Lcom/nwd/audioset/mvpbase/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public findViewById(I)Landroid/view/View;
    .locals 1

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/nwd/audioset/mvpbase/BaseFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 100
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getFragmentBackground()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract getLayountView()Landroid/view/ViewGroup;
.end method

.method public abstract getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method protected abstract initData()V
.end method

.method public abstract initView()V
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/nwd/audioset/mvpbase/BaseFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/nwd/audioset/mvpbase/BaseFragment;->mRootView:Landroid/view/View;

    if-nez p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->getLayountView()Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/mvpbase/BaseFragment;->mRootView:Landroid/view/View;

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;

    move-result-object p1

    iput-object p1, p0, Lcom/nwd/audioset/mvpbase/BaseFragment;->mPrenseter:Lcom/nwd/audioset/mvpbase/BasePresenter;

    .line 37
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->setViewBinding()V

    .line 38
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->initView()V

    .line 39
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->setListener()V

    .line 40
    invoke-virtual {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;->initData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 44
    :goto_0
    iget-object p1, p0, Lcom/nwd/audioset/mvpbase/BaseFragment;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 0

    .line 94
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public abstract setListener()V
.end method

.method public abstract setViewBinding()V
.end method
