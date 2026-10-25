.class public Lcom/nwd/audioset/view/fragment/dts/DtsFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "DtsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/nwd/audioset/view/fragment/dts/SwitchListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/dts/DtsP;",
        ">;",
        "Landroid/view/View$OnClickListener;",
        "Lcom/nwd/audioset/view/fragment/dts/SwitchListener;"
    }
.end annotation


# static fields
.field public static final DEF_GIAN:I = 0x5

.field private static final TAG:Ljava/lang/String; = "dsp3-DtsFragment"


# instance fields
.field private bassFragment:Landroidx/fragment/app/Fragment;

.field private bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

.field private sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

.field private scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private soundGatheringFragment:Landroidx/fragment/app/Fragment;

.field private sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private surroundModeFragment:Landroidx/fragment/app/Fragment;

.field private surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

.field private virtualFragment:Landroidx/fragment/app/Fragment;

.field private virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    return-object p0
.end method

.method static synthetic access$002(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static synthetic access$200(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->updateButtonBgUi(Ljava/lang/String;)V

    return-void
.end method

.method private changeView()V
    .locals 5

    .line 89
    new-instance v0, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    .line 90
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->sceneModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v2, 0x7f0701d2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 91
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->sceneModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v2, 0x7f0701d1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    .line 92
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->sceneModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v2, 0x7f0701d0

    const v3, 0x7f0701d5

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 93
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->sceneModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const v4, 0x7f0701d4

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 95
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->virtualTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 96
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->virtualTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 98
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->soundGatheringTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 99
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->soundGatheringTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 101
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->surroundModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 102
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->surroundModeTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    .line 104
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->bassTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v3, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setSize(Landroid/view/View;II)V

    .line 105
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    iget-object v1, v1, Lcom/nwd/audioset/databinding/FrgDtsBinding;->bassTv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/audioset/utils/ViewAdapter;->setTextSize(Landroid/widget/TextView;I)V

    return-void
.end method

.method private setButtonBG()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 241
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_d:Ljava/lang/String;

    const v2, 0x7f0d0053

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 242
    iget-object v2, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->eq_btn_n:Ljava/lang/String;

    const v3, 0x7f0d0056

    invoke-virtual {v0, v2, v3}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 243
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 244
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 245
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 246
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 247
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-static {v2, v0, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setSwitchData(Z)V
    .locals 2

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dts Switch = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DtsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    if-nez v0, :cond_0

    return-void

    .line 134
    :cond_0
    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setEnabled(Z)V

    .line 135
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setEnabled(Z)V

    if-eqz p1, :cond_1

    .line 140
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    .line 141
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    .line 142
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    .line 143
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    goto :goto_0

    .line 145
    :cond_1
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    .line 146
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    .line 147
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    .line 148
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private showFragment(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showFragment : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DtsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 215
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 218
    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    invoke-virtual {v1, p1}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_1

    :cond_1
    const v0, 0x7f0900f6

    .line 224
    invoke-virtual {v1, v0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 226
    :goto_1
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private updateButtonBgUi(Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "scene_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 231
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "virtual"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 232
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "sound_gathering"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 233
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "surround_mode"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    .line 234
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    const-string v1, "bass"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setSelected(Z)V

    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 51
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FrgDtsBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgDtsBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgDtsBinding;

    .line 52
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FrgDtsBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/dts/DtsP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/dts/DtsP;
    .locals 1

    .line 155
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/DtsP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/DtsP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 120
    :try_start_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsFunctionSwitch()Z

    move-result v0

    .line 121
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->setSwitchData(Z)V

    .line 122
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    check-cast v0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;

    invoke-virtual {v0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->initData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public initView()V
    .locals 2

    const-string v0, "dsp3-DtsFragment"

    const-string v1, "DtsFragment init"

    .line 61
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090270

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 63
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f09034f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 64
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 65
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902f3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 66
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    .line 67
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->setButtonBG()V

    .line 68
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    new-instance v1, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;

    invoke-direct {v1, p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment$1;-><init>(Lcom/nwd/audioset/view/fragment/dts/DtsFragment;)V

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->post(Ljava/lang/Runnable;)Z

    .line 82
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->changeView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f090270

    if-ne p1, v0, :cond_1

    .line 176
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_0

    .line 177
    new-instance p1, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;

    invoke-direct {p1}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;-><init>()V

    .line 178
    invoke-virtual {p1, p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->setSwitchListener(Lcom/nwd/audioset/view/fragment/dts/SwitchListener;)V

    .line 179
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sceneModeDtsFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    const-string p1, "scene_mode"

    .line 182
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const v0, 0x7f09034f

    if-ne p1, v0, :cond_3

    .line 184
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtualFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_2

    .line 185
    new-instance p1, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;

    invoke-direct {p1}, Lcom/nwd/audioset/view/fragment/dts/virtual/VirtualFragment;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtualFragment:Landroidx/fragment/app/Fragment;

    .line 187
    :cond_2
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtualFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    const-string p1, "virtual"

    .line 188
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0902ab

    if-ne p1, v0, :cond_5

    .line 190
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->soundGatheringFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_4

    .line 191
    new-instance p1, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;

    invoke-direct {p1}, Lcom/nwd/audioset/view/fragment/dts/soundGathering/SoundGatheringFragment;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->soundGatheringFragment:Landroidx/fragment/app/Fragment;

    .line 193
    :cond_4
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->soundGatheringFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    const-string p1, "sound_gathering"

    .line 194
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const v0, 0x7f0902f3

    if-ne p1, v0, :cond_7

    .line 196
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surroundModeFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_6

    .line 197
    new-instance p1, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;

    invoke-direct {p1}, Lcom/nwd/audioset/view/fragment/dts/surroundMode/SurroundModeFragment;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surroundModeFragment:Landroidx/fragment/app/Fragment;

    .line 199
    :cond_6
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surroundModeFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    const-string p1, "surround_mode"

    .line 200
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->updateButtonBgUi(Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    const v0, 0x7f090089

    if-ne p1, v0, :cond_9

    .line 202
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bassFragment:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_8

    .line 203
    new-instance p1, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;

    invoke-direct {p1}, Lcom/nwd/audioset/view/fragment/dts/bass/BassFragment;-><init>()V

    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bassFragment:Landroidx/fragment/app/Fragment;

    .line 205
    :cond_8
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bassFragment:Landroidx/fragment/app/Fragment;

    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->showFragment(Landroidx/fragment/app/Fragment;)V

    const-string p1, "bass"

    .line 206
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->updateButtonBgUi(Ljava/lang/String;)V

    :cond_9
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 110
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 111
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0103

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0102

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSwitchData(Z)V
    .locals 0

    .line 256
    :try_start_0
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->setSwitchData(Z)V

    .line 257
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/nwd/audioset/home_horizontalActivity1;

    if-eqz p1, :cond_0

    .line 258
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-virtual {p1}, Lcom/nwd/audioset/home_horizontalActivity1;->setSwitchData()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 260
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setListener()V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->scene_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->virtual_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->sound_gathering_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->surround_mode_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/DtsFragment;->bass_tv:Lcom/nwd/audioset/view/nwdview/StrokeTextView;

    invoke-virtual {v0, p0}, Lcom/nwd/audioset/view/nwdview/StrokeTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
