.class public Lcom/nwd/audioset/application/DspApplication;
.super Landroid/app/Application;
.source "DspApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-DspApplication"

.field public static build_N65:Ljava/lang/String; = "N65_"

.field public static build_N70:Ljava/lang/String; = "N70_"

.field public static build_S217356:Ljava/lang/String; = "S217356"

.field public static build_T60:Ljava/lang/String; = "T60_"

.field private static instance:Lcom/nwd/audioset/application/DspApplication;


# instance fields
.field public appScreenHeightDp:I

.field private configuration:Landroid/content/res/Configuration;

.field public dsp_double_bass:Z

.field public heightPixels:I

.field public instrumentHeight:I

.field public isG5JTPortrait:Z

.field public isInSettingActivity:Z

.field public isLongScreen:Z

.field public isNightMode:Z

.field public isRestart:Z

.field public isSupportNightMode:Z

.field public widthPixels:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isRestart:Z

    .line 44
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isInSettingActivity:Z

    .line 52
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    .line 54
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    .line 56
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isSupportNightMode:Z

    .line 58
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    return-void
.end method

.method public static getInstance()Lcom/nwd/audioset/application/DspApplication;
    .locals 1

    .line 95
    sget-object v0, Lcom/nwd/audioset/application/DspApplication;->instance:Lcom/nwd/audioset/application/DspApplication;

    return-object v0
.end method

.method private testInitDspConstant()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public initDspConstant()V
    .locals 6

    .line 99
    invoke-static {}, Lcom/nwd/audioset/utils/Utils;->isN65OrN61()Z

    move-result v0

    const-string v1, "1"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const-string v0, "eq_ch4"

    const-string v4, "0"

    .line 100
    invoke-static {p0, v0, v4}, Lcom/nwd/audioset/utils/SharePreferenceUtils;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 101
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iput-boolean v3, p0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    goto :goto_0

    .line 104
    :cond_0
    iput-boolean v2, p0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    goto :goto_0

    .line 108
    :cond_1
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v4, "dsp_double_bass"

    invoke-static {v0, v4}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 110
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH2:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/nwd/audioset/constant/Constant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 113
    iput-boolean v3, p0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    .line 116
    :cond_3
    :goto_0
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    iput-boolean v1, v0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    new-array v0, v3, [Ljava/lang/Object;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u82af\u7247\u7c7b\u578b\u4e3a: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/nwd/dsp/uitls/DspConstant;->AUDIOTYPE:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", \u53cc\u4f4e\u97f3\u5f00\u5173\u4e3adsp_double_bass: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/audioset/application/DspApplication;->dsp_double_bass:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspApplication"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public isNightMode()Z
    .locals 4

    .line 168
    invoke-virtual {p0}, Lcom/nwd/audioset/application/DspApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 169
    :goto_0
    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    new-array v0, v1, [Ljava/lang/Object;

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u662f\u5426\u9ed1\u591c\u6a21\u5f0f isNightMode="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspApplication"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isNightMode:Z

    return v0
.end method

.method public onCreate()V
    .locals 5

    .line 62
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 64
    :try_start_0
    sput-object p0, Lcom/nwd/audioset/application/DspApplication;->instance:Lcom/nwd/audioset/application/DspApplication;

    .line 65
    invoke-static {}, Lcom/nwd/dsp/uitls/AppUtil;->getInstance()Lcom/nwd/dsp/uitls/AppUtil;

    move-result-object v0

    iput-object p0, v0, Lcom/nwd/dsp/uitls/AppUtil;->mContext:Landroid/content/Context;

    .line 66
    invoke-virtual {p0}, Lcom/nwd/audioset/application/DspApplication;->switchAliasBasedOnPersist()V

    .line 67
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    const-string v1, "sys.nwd.dsp.type"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-static {p0}, Lcom/nwd/audioset/utils/Utils;->isLongScreen(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isLongScreen:Z

    .line 69
    invoke-static {p0}, Lcom/nwd/audioset/utils/Utils;->isG5JTPortrait(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/audioset/application/DspApplication;->isG5JTPortrait:Z

    const-string v0, "window"

    .line 72
    invoke-virtual {p0, v0}, Lcom/nwd/audioset/application/DspApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 73
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 74
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 75
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v0, p0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    .line 76
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    const-string v0, "dsp3-DspApplication"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate() setSystemProp sys.nwd.dsp.type=3, width:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/application/DspApplication;->widthPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", height:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/audioset/application/DspApplication;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", Build.DISPLAY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 79
    invoke-virtual {p0}, Lcom/nwd/audioset/application/DspApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nwd/audioset/application/DspApplication;->setInstrumentHeight(Landroid/content/res/Resources;)V

    .line 80
    invoke-static {p0}, Lcom/nwd/dsp/uitls/DspServices;->start(Landroid/content/Context;)V

    .line 81
    new-instance v0, Lcom/nwd/audioset/application/DspApplication$1;

    invoke-direct {v0, p0}, Lcom/nwd/audioset/application/DspApplication$1;-><init>(Lcom/nwd/audioset/application/DspApplication;)V

    const-wide/16 v1, 0xbb8

    invoke-static {v0, v1, v2}, Lcom/nwd/audioset/utils/ThreadManager;->executeOnMainThreadDelay(Ljava/lang/Runnable;J)V

    .line 89
    invoke-virtual {p0}, Lcom/nwd/audioset/application/DspApplication;->initDspConstant()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setInstrumentHeight(Landroid/content/res/Resources;)V
    .locals 7

    const-string v0, "dsp3-DspApplication"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 126
    :try_start_0
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sget-object v4, Lcom/nwd/audioset/application/DspApplication;->build_N70:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sget-object v4, Lcom/nwd/audioset/application/DspApplication;->build_T60:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_1

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    if-nez v3, :cond_2

    const-string v3, "sys.nwd.instrument.panelheight"

    .line 132
    invoke-static {v3}, Lcom/nwd/audioset/utils/BaseUtils;->getpropValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v3, "key_instrument_height"

    .line 134
    invoke-static {v3}, Lcom/nwd/audioset/utils/BaseUtils;->getWindowFeatureValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 136
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_4

    .line 138
    :try_start_1
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    if-lez v4, :cond_4

    .line 140
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    .line 141
    iget v4, v4, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, p0, Lcom/nwd/audioset/application/DspApplication;->instrumentHeight:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    .line 142
    iget-object v5, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    iput v4, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 143
    iget-object v4, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-array v4, v2, [Ljava/lang/Object;

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInstrumentHeight() instrumentHeight="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenHeightDp="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v1

    invoke-static {v0, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 147
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-array v3, v2, [Ljava/lang/Object;

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==== setInstrumentHeight() configuration.screenHeightDp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    iget v5, v5, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", appScreenHeightDp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    iget-object v3, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    iget v3, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v4, p0, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    if-eq v3, v4, :cond_3

    .line 154
    iget-object v3, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    iget v4, p0, Lcom/nwd/audioset/application/DspApplication;->appScreenHeightDp:I

    iput v4, v3, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 155
    invoke-static {}, Lcom/nwd/audioset/application/DspApplication;->getInstance()Lcom/nwd/audioset/application/DspApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nwd/audioset/application/DspApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "==== setInstrumentHeight() app resetconfiguration"

    aput-object v4, v3, v1

    .line 156
    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_3
    iget-object v3, p0, Lcom/nwd/audioset/application/DspApplication;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_4
    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    .line 160
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInstrumentHeight() configuration="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v0, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_5
    :goto_1
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInstrumentHeight() N70\u3001T60 \u65cb\u94ae\u5c4f \u4e0d\u7528\u8bbe\u7f6eConfiguration return, DISPLAY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->d([Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    new-array v2, v2, [Ljava/lang/Object;

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setInstrumentHeight() error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method

.method public switchAliasBasedOnPersist()V
    .locals 9

    const-string v0, "0"

    :try_start_0
    const-string v1, "persist.sys.nwd.dsp.showeq"

    .line 181
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 185
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 186
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_FACTORYCONFIG_PATH:Ljava/lang/String;

    const-string v5, "eq_force_32_segment"

    invoke-static {v0, v5, v4}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadKeyValueFromSD(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 191
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "2"

    .line 193
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const-string v0, "3"

    .line 195
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    const/4 v0, 0x0

    :goto_2
    const-string v5, "dsp3-DspApplication"

    new-array v6, v4, [Ljava/lang/Object;

    .line 200
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "switchAliasBasedOnPersist() key="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showEQ="

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v3

    invoke-static {v5, v6}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    invoke-virtual {p0}, Lcom/nwd/audioset/application/DspApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.nwd.audioset.home_horizontalActivity"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 203
    new-instance v3, Landroid/content/ComponentName;

    const-string v5, "com.nwd.audioset.SecondActivityAlias"

    invoke-direct {v3, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x2

    if-eqz v0, :cond_4

    const/4 v6, 0x2

    goto :goto_3

    :cond_4
    const/4 v6, 0x1

    .line 205
    :goto_3
    invoke-virtual {v1, v2, v6, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    if-eqz v0, :cond_5

    const/4 v5, 0x1

    .line 209
    :cond_5
    invoke-virtual {v1, v3, v5, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 213
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void
.end method
