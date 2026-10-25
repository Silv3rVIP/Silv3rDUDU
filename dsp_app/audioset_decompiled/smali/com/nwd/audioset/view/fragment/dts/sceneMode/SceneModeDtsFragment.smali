.class public Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;
.super Lcom/nwd/audioset/mvpbase/BaseFragment;
.source "SceneModeDtsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/nwd/audioset/mvpbase/BaseFragment<",
        "Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeP;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private binding:Lcom/nwd/audioset/databinding/FrgSceneModeBinding;

.field private cinema_mode:Landroid/view/View;

.field private cinema_mode_cover_iv:Landroid/widget/ImageView;

.field private cinema_mode_tv:Landroid/widget/TextView;

.field private dts_cinema_mode:Landroid/graphics/drawable/Drawable;

.field private dts_logo:Landroid/graphics/drawable/Drawable;

.field private dts_logo_iv:Landroid/widget/ImageView;

.field private dts_mode_cover:Landroid/graphics/drawable/Drawable;

.field private dts_music_mode:Landroid/graphics/drawable/Drawable;

.field private dts_speciality_mode:Landroid/graphics/drawable/Drawable;

.field private dts_switch_close:Landroid/graphics/drawable/Drawable;

.field private dts_switch_iv:Landroid/widget/ImageView;

.field private dts_switch_open:Landroid/graphics/drawable/Drawable;

.field private listener:Lcom/nwd/audioset/view/fragment/dts/SwitchListener;

.field private music_mode:Landroid/view/View;

.field private music_mode_cover_iv:Landroid/widget/ImageView;

.field private music_mode_tv:Landroid/widget/TextView;

.field private speciality_mode:Landroid/view/View;

.field private speciality_mode_cover_iv:Landroid/widget/ImageView;

.field private speciality_mode_tv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/nwd/audioset/mvpbase/BaseFragment;-><init>()V

    return-void
.end method

.method private changeView()V
    .locals 3

    .line 70
    new-instance v0, Lcom/nwd/audioset/utils/ViewAdapter;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nwd/audioset/utils/ViewAdapter;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701d2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginTop(Landroid/view/View;I)V

    .line 72
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo_iv:Landroid/widget/ImageView;

    const v2, 0x7f0701df

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/ViewAdapter;->setMarginLeft(Landroid/view/View;I)V

    return-void
.end method

.method private setSwitchData(Z)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 93
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 95
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->updateModeBgUi()V

    .line 98
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/nwd/dsp/uitls/DspManager;->initDtsData()V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_cover_iv:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateDspUi()V
    .locals 6

    .line 165
    :try_start_0
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getInstance(Landroid/content/Context;)Lcom/nwd/audioset/utils/InternationalPictureUtils;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 167
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_logo:Ljava/lang/String;

    const v2, 0x7f0d003b

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo:Landroid/graphics/drawable/Drawable;

    .line 169
    :cond_0
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 170
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_open:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1

    .line 171
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_open:Ljava/lang/String;

    const v2, 0x7f0d004e

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_open:Landroid/graphics/drawable/Drawable;

    .line 173
    :cond_1
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_close:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 174
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_switch_close:Ljava/lang/String;

    const v2, 0x7f0d004d

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_close:Landroid/graphics/drawable/Drawable;

    .line 176
    :cond_2
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_iv:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_close:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_open:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 177
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    .line 178
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_mode_cover:Ljava/lang/String;

    const v2, 0x7f0d003c

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_3
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_cinema_mode1:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 184
    iget-object v3, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_music_mode1:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 185
    iget-object v4, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_speciality_mode1:Ljava/lang/String;

    invoke-virtual {v0, v4, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 189
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_cover_iv:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    move-object v5, v1

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    :goto_0
    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-static {v4, v5, v1}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_cover_iv:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    move-object v4, v3

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    :goto_2
    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-static {v1, v4, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 191
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_cover_iv:Landroid/widget/ImageView;

    if-eqz v2, :cond_8

    move-object v3, v2

    goto :goto_4

    :cond_8
    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    :goto_4
    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_mode_cover:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-static {v1, v3, v2}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_cinema_mode:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_a

    .line 194
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_cinema_mode:Ljava/lang/String;

    const v2, 0x7f0d0036

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_cinema_mode:Landroid/graphics/drawable/Drawable;

    .line 196
    :cond_a
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_cinema_mode:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_cinema_mode:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_music_mode:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_b

    .line 198
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_music_mode:Ljava/lang/String;

    const v2, 0x7f0d003d

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_music_mode:Landroid/graphics/drawable/Drawable;

    .line 200
    :cond_b
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode:Landroid/view/View;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_music_mode:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_music_mode:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v3}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_speciality_mode:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_c

    .line 202
    iget-object v1, v0, Lcom/nwd/audioset/utils/InternationalPictureUtils;->dts_speciality_mode:Ljava/lang/String;

    const v2, 0x7f0d0046

    invoke-virtual {v0, v1, v2}, Lcom/nwd/audioset/utils/InternationalPictureUtils;->getDrawable(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_speciality_mode:Landroid/graphics/drawable/Drawable;

    .line 204
    :cond_c
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode:Landroid/view/View;

    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_speciality_mode:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_speciality_mode:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1, v2}, Lcom/nwd/dsp/uitls/AppUtil;->viewSetBG(Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    const/16 v1, 0x960

    if-ne v0, v1, :cond_e

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x380

    if-eq v0, v1, :cond_d

    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v0

    iget v0, v0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const/16 v1, 0x384

    if-ne v0, v1, :cond_e

    .line 207
    :cond_d
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_e
    :goto_6
    return-void
.end method

.method private updateModeBgUi()V
    .locals 3

    .line 127
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSceneData()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_cover_iv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_cover_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getLayountView()Landroid/view/ViewGroup;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->inflate(Landroid/view/LayoutInflater;)Lcom/nwd/audioset/databinding/FrgSceneModeBinding;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->binding:Lcom/nwd/audioset/databinding/FrgSceneModeBinding;

    .line 40
    invoke-virtual {v0}, Lcom/nwd/audioset/databinding/FrgSceneModeBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public bridge synthetic getPrenseter()Lcom/nwd/audioset/mvpbase/BasePresenter;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->getPrenseter()Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeP;

    move-result-object v0

    return-object v0
.end method

.method public getPrenseter()Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeP;
    .locals 1

    .line 146
    new-instance v0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeP;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeP;-><init>(Landroidx/fragment/app/Fragment;)V

    return-object v0
.end method

.method public initData()V
    .locals 1

    .line 88
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsFunctionSwitch()Z

    move-result v0

    .line 89
    invoke-direct {p0, v0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->setSwitchData(Z)V

    return-void
.end method

.method public initView()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_logo_iv:Landroid/widget/ImageView;

    .line 49
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090102

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_iv:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_cover_iv:Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090214

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_cover_iv:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_cover_iv:Landroid/widget/ImageView;

    .line 53
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode:Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090213

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode:Landroid/view/View;

    .line 57
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0900c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_tv:Landroid/widget/TextView;

    .line 58
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f090215

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_tv:Landroid/widget/TextView;

    .line 59
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->mRootView:Landroid/view/View;

    const v1, 0x7f0902b5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_tv:Landroid/widget/TextView;

    .line 61
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->updateDspUi()V

    .line 62
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->updateModeBgUi()V

    .line 63
    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/nwd/audioset/utils/Utils;->isLand(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->changeView()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_iv:Landroid/widget/ImageView;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    xor-int/2addr p1, v1

    .line 109
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsFunctionSwitch(I)V

    .line 110
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->listener:Lcom/nwd/audioset/view/fragment/dts/SwitchListener;

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0, p1}, Lcom/nwd/audioset/view/fragment/dts/SwitchListener;->onSwitchData(Z)V

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->setSwitchData(Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode:Landroid/view/View;

    if-ne p1, v0, :cond_2

    .line 115
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSceneMode(I)V

    .line 116
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->updateModeBgUi()V

    goto :goto_0

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode:Landroid/view/View;

    if-ne p1, v0, :cond_3

    .line 118
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSceneMode(I)V

    .line 119
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->updateModeBgUi()V

    goto :goto_0

    .line 120
    :cond_3
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 121
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDtsSceneMode(I)V

    .line 122
    invoke-direct {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->updateModeBgUi()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 77
    invoke-super {p0, p1}, Lcom/nwd/audioset/mvpbase/BaseFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 78
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode_tv:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e00f9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setListener()V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->dts_switch_iv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->cinema_mode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->music_mode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    iget-object v0, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->speciality_mode:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSwitchListener(Lcom/nwd/audioset/view/fragment/dts/SwitchListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/nwd/audioset/view/fragment/dts/sceneMode/SceneModeDtsFragment;->listener:Lcom/nwd/audioset/view/fragment/dts/SwitchListener;

    return-void
.end method

.method public setViewBinding()V
    .locals 0

    return-void
.end method
