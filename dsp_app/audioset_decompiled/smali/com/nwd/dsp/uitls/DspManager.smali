.class public Lcom/nwd/dsp/uitls/DspManager;
.super Ljava/lang/Object;
.source "DspManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "dsp3-DspManager-ych"

.field private static mDspManager:Lcom/nwd/dsp/uitls/DspManager;


# instance fields
.field public dsp_double_bass:Z

.field private hpf_area_four:I

.field private hpf_area_four_qvalue:I

.field private hpf_area_one:I

.field private hpf_area_one_qvalue:I

.field private hpf_area_three:I

.field private hpf_area_three_qvalue:I

.field private hpf_area_two:I

.field private hpf_area_two_qvalue:I

.field public isEq4CH:Z

.field private lpf_area_four:I

.field private lpf_area_four_qvalue:I

.field private lpf_area_one:I

.field private lpf_area_one_qvalue:I

.field private lpf_area_three:I

.field private lpf_area_three_qvalue:I

.field private lpf_area_two:I

.field private lpf_area_two_qvalue:I

.field private final mDspData:Lcom/nwd/dsp/uitls/DspData;

.field private mDspEQType:Ljava/lang/String;

.field private mEqDiff:F

.field private mEqFrequence:[I

.field private mEqGain:[I

.field private mEqGainMax:I

.field private mEqGainOriginal:[I

.field private mEqQValue:[I

.field private mRound_switch:Z

.field private marea_one_frequence:I

.field private marea_one_qValue:I

.field private marea_three_frequence:I

.field private marea_three_qValue:I

.field private marea_two_frequence:I

.field private marea_two_qValue:I

.field private mbalance:I

.field private mbass_bugle:I

.field private mbass_bugle_delay:I

.field private mbass_bugle_mute:Z

.field private mbass_bugle_opp:Z

.field private mcenter_bugle:I

.field private mcenter_bugle_delay:I

.field private mcenter_bugle_mute:Z

.field private mcenter_bugle_opp:Z

.field private mcenter_linkage:Z

.field private mdengxiang:Z

.field private mfader:I

.field private mfront_left:I

.field private mfront_left_delay:I

.field private mfront_left_mute:Z

.field private mfront_left_opp:Z

.field private mfront_linkage:Z

.field private mfront_right:I

.field private mfront_right_delay:I

.field private mfront_right_mute:Z

.field private mfront_right_opp:Z

.field private msuf_left:I

.field private msuf_left_delay:I

.field private msuf_left_mute:Z

.field private msuf_left_opp:Z

.field private msuf_linkage:Z

.field private msuf_right:I

.field private msuf_right_delay:I

.field private msuf_right_mute:Z

.field private msuf_right_opp:Z

.field private pf_area:I

.field private pf_dbb_area:I

.field private used_customize:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    .line 20
    iput-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    new-array v1, v0, [I

    .line 21
    iput-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    new-array v1, v0, [I

    .line 22
    iput-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    new-array v0, v0, [I

    .line 23
    iput-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    const/16 v0, 0x18

    .line 26
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainMax:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqDiff:F

    const-string v0, "standard"

    .line 30
    iput-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    const/4 v1, 0x7

    .line 39
    iput v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    .line 40
    iput v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    .line 43
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    .line 45
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    .line 47
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    .line 49
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    .line 51
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    .line 53
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    .line 57
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_opp:Z

    .line 59
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_opp:Z

    .line 61
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_opp:Z

    .line 63
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_opp:Z

    .line 65
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_opp:Z

    .line 67
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_opp:Z

    .line 71
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_linkage:Z

    .line 73
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_linkage:Z

    .line 75
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_linkage:Z

    .line 78
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_mute:Z

    .line 80
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_mute:Z

    .line 82
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_mute:Z

    .line 84
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_mute:Z

    .line 86
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_mute:Z

    .line 88
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_mute:Z

    .line 92
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_delay:I

    .line 94
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_delay:I

    .line 96
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_delay:I

    .line 98
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_delay:I

    .line 100
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_delay:I

    .line 102
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_delay:I

    .line 106
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_frequence:I

    .line 109
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_qValue:I

    .line 112
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_frequence:I

    .line 114
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_qValue:I

    .line 116
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_frequence:I

    .line 118
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_qValue:I

    .line 121
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    .line 124
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    .line 128
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one:I

    .line 129
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one_qvalue:I

    .line 131
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one:I

    .line 132
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one_qvalue:I

    .line 135
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two:I

    .line 136
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two_qvalue:I

    .line 137
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two:I

    .line 138
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two_qvalue:I

    .line 141
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three:I

    .line 142
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three_qvalue:I

    .line 143
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three:I

    .line 144
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three_qvalue:I

    .line 148
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four:I

    .line 149
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four_qvalue:I

    .line 150
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four:I

    .line 151
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four_qvalue:I

    .line 154
    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mRound_switch:Z

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DspManager\u521d\u59cb\u5316"

    aput-object v3, v2, v0

    const-string v3, "dsp3-DspManager-ych"

    .line 174
    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    .line 175
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u662f\u5426\u662f7604\u7684Dsp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->isArm7604Dsp()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DspManager, \u662f\u5426\u662farmDsp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->isArmDsp()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->initParam()V

    .line 182
    invoke-static {}, Lcom/nwd/dsp/uitls/DspData;->getInstance()Lcom/nwd/dsp/uitls/DspData;

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 186
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->loadSPData()V

    .line 187
    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/nwd/dsp/uitls/DspManager;->loadEqDataFromSD(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 189
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u521d\u59cb\u5316\u8017\u65f6: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/nwd/dsp/uitls/DspManager;
    .locals 2

    .line 163
    sget-object v0, Lcom/nwd/dsp/uitls/DspManager;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    if-nez v0, :cond_1

    .line 164
    const-class v0, Lcom/nwd/dsp/uitls/DspManager;

    monitor-enter v0

    .line 165
    :try_start_0
    sget-object v1, Lcom/nwd/dsp/uitls/DspManager;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    if-nez v1, :cond_0

    .line 166
    new-instance v1, Lcom/nwd/dsp/uitls/DspManager;

    invoke-direct {v1}, Lcom/nwd/dsp/uitls/DspManager;-><init>()V

    sput-object v1, Lcom/nwd/dsp/uitls/DspManager;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    .line 168
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 170
    :cond_1
    :goto_0
    sget-object v0, Lcom/nwd/dsp/uitls/DspManager;->mDspManager:Lcom/nwd/dsp/uitls/DspManager;

    return-object v0
.end method

.method public static getSystemProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "dsp3-DspManager-ych"

    .line 1292
    :try_start_0
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1293
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemProp key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", value="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const/4 v1, 0x0

    .line 1296
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSystemProp error="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private initBugleData()V
    .locals 8

    .line 1712
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    const-string v2, "front_left"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 1713
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    const-string v3, "front_right"

    invoke-virtual {v0, v3, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 1714
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    const-string v4, "suf_left"

    invoke-virtual {v0, v4, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 1715
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    const-string v5, "suf_right"

    invoke-virtual {v0, v5, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 1716
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    const-string v6, "center_bugle"

    invoke-virtual {v0, v6, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 1717
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    const-string v7, "bass_bugle"

    invoke-virtual {v0, v7, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleData(Ljava/lang/String;I)V

    .line 1719
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_mute:Z

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 1720
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_mute:Z

    invoke-virtual {v0, v3, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 1721
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_mute:Z

    invoke-virtual {v0, v4, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 1722
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_mute:Z

    invoke-virtual {v0, v5, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 1723
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_mute:Z

    invoke-virtual {v0, v6, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 1724
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_mute:Z

    invoke-virtual {v0, v7, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDataMute(Ljava/lang/String;Z)V

    .line 1726
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_opp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1727
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_opp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1728
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_opp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1729
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_opp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1730
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_opp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1731
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_opp:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method private initDspConstant()V
    .locals 4

    .line 1937
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH:Ljava/lang/String;

    const-string v1, "dsp_double_bass"

    invoke-static {v0, v1}, Lcom/nwd/dsp/uitls/DspConstant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1938
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1939
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULT_DSPCONFIG_PATH2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nwd/dsp/uitls/DspConstant;->getConfigValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1941
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1942
    iput-boolean v2, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    :cond_1
    new-array v0, v2, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1944
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", \u53cc\u4f4e\u97f3\u5f00\u5173\u4e3adsp_double_bass: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private saveEqDataToSD()V
    .locals 4

    .line 1162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "eq\u6a21\u5f0f\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x3cf62b29

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const v2, 0x600e8c43

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "customize"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v1, "customizetwo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_3

    goto :goto_2

    .line 1166
    :cond_3
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    invoke-static {v1}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    invoke-static {v3}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/nwd/dsp/uitls/LoadDataUtils;->saveEqDataToSD(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public deleteCustomizeEqDataFile(Ljava/lang/String;)Z
    .locals 4

    .line 1680
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1681
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1682
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1683
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1685
    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "customize"

    .line 1686
    invoke-virtual {p0, v2}, Lcom/nwd/dsp/uitls/DspManager;->setmDspEQType(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1691
    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteCustomizeEqDataFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return v0
.end method

.method public getCustomizeConfigList()[Ljava/lang/String;
    .locals 1

    .line 1627
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/nwd/dsp/uitls/DspManager;->getCustomizeConfigListByPath(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomizeConfigListByPath(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    .line 1611
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1612
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1613
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1615
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1616
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    .line 1617
    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 1618
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCustomizeConfigList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "dsp3-DspManager-ych"

    invoke-static {v4, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method public getDtsBassGain(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "dts_bass_gain_front"

    .line 1812
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "dts_bass_gain_after"

    .line 1815
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "dts_bass_gain_middle"

    .line 1817
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getDtsBassOption(II)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "dts_bass_option_front"

    .line 1823
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "dts_bass_option_after"

    .line 1826
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "dts_bass_option_middle"

    .line 1829
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    return p1
.end method

.method public getDtsFunctionSwitch()Z
    .locals 3

    .line 1843
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/4 v1, 0x0

    const-string v2, "dts_fun_switch"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getDtsSceneData()I
    .locals 3

    .line 1745
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "dts_scene_mode"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getDtsSpData(Ljava/lang/String;I)I
    .locals 1

    .line 1848
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, p2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getDtsVirtualMiddle()Z
    .locals 3

    .line 1757
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/4 v1, 0x0

    const-string v2, "dts_virtual_middle"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getFrequence()[I
    .locals 1

    .line 1307
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    return-object v0
.end method

.method public getHpf_area_four()I
    .locals 1

    .line 1411
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four:I

    return v0
.end method

.method public getHpf_area_four_qvalue()I
    .locals 1

    .line 1415
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four_qvalue:I

    return v0
.end method

.method public getHpf_area_one()I
    .locals 1

    .line 1363
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one:I

    return v0
.end method

.method public getHpf_area_one_qvalue()I
    .locals 1

    .line 1367
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one_qvalue:I

    return v0
.end method

.method public getHpf_area_three()I
    .locals 1

    .line 1395
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three:I

    return v0
.end method

.method public getHpf_area_three_qvalue()I
    .locals 1

    .line 1399
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three_qvalue:I

    return v0
.end method

.method public getHpf_area_two()I
    .locals 1

    .line 1379
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two:I

    return v0
.end method

.method public getHpf_area_two_qvalue()I
    .locals 1

    .line 1383
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two_qvalue:I

    return v0
.end method

.method public getLpf_area_four()I
    .locals 1

    .line 1419
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four:I

    return v0
.end method

.method public getLpf_area_four_qvalue()I
    .locals 1

    .line 1423
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four_qvalue:I

    return v0
.end method

.method public getLpf_area_one()I
    .locals 1

    .line 1371
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one:I

    return v0
.end method

.method public getLpf_area_one_qvalue()I
    .locals 1

    .line 1375
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one_qvalue:I

    return v0
.end method

.method public getLpf_area_three()I
    .locals 1

    .line 1403
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three:I

    return v0
.end method

.method public getLpf_area_three_qvalue()I
    .locals 1

    .line 1407
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three_qvalue:I

    return v0
.end method

.method public getLpf_area_two()I
    .locals 1

    .line 1387
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two:I

    return v0
.end method

.method public getLpf_area_two_qvalue()I
    .locals 1

    .line 1391
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two_qvalue:I

    return v0
.end method

.method public getMarea_one_frequence()I
    .locals 1

    .line 1500
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_frequence:I

    return v0
.end method

.method public getMarea_one_qValue()I
    .locals 1

    .line 1504
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_qValue:I

    return v0
.end method

.method public getMarea_three_frequence()I
    .locals 1

    .line 1516
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_frequence:I

    return v0
.end method

.method public getMarea_three_qValue()I
    .locals 1

    .line 1520
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_qValue:I

    return v0
.end method

.method public getMarea_two_frequence()I
    .locals 1

    .line 1508
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_frequence:I

    return v0
.end method

.method public getMarea_two_qValue()I
    .locals 1

    .line 1512
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_qValue:I

    return v0
.end method

.method public getMbalance()I
    .locals 3

    .line 1337
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_balance"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    return v0
.end method

.method public getMbass_bugle()I
    .locals 1

    .line 1447
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    return v0
.end method

.method public getMbass_bugle_delay()I
    .locals 1

    .line 1496
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_delay:I

    return v0
.end method

.method public getMcenter_bugle()I
    .locals 1

    .line 1443
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    return v0
.end method

.method public getMcenter_bugle_delay()I
    .locals 1

    .line 1492
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_delay:I

    return v0
.end method

.method public getMfader()I
    .locals 3

    .line 1331
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_fader"

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    return v0
.end method

.method public getMfront_left()I
    .locals 1

    .line 1427
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    return v0
.end method

.method public getMfront_left_delay()I
    .locals 1

    .line 1475
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_delay:I

    return v0
.end method

.method public getMfront_right()I
    .locals 1

    .line 1431
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    return v0
.end method

.method public getMfront_right_delay()I
    .locals 1

    .line 1480
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_delay:I

    return v0
.end method

.method public getMsuf_left()I
    .locals 1

    .line 1435
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    return v0
.end method

.method public getMsuf_left_delay()I
    .locals 1

    .line 1484
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_delay:I

    return v0
.end method

.method public getMsuf_right()I
    .locals 1

    .line 1439
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    return v0
.end method

.method public getMsuf_right_delay()I
    .locals 1

    .line 1488
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_delay:I

    return v0
.end method

.method public getOneGain(I)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1185
    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u6807: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  \u83b7\u53d6\u5b9e\u9645\u7684Gain\u503c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "dsp3-DspManager-ych"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    aget p1, v0, p1

    return p1

    :cond_0
    return v0
.end method

.method public getOneValue(I)I
    .locals 4

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    array-length v1, v1

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0b\u6807: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  \u83b7\u53d6\u5b9e\u9645\u7684Q\u503c: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "dsp3-DspManager-ych"

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1177
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    aget p1, v0, p1

    return p1

    :cond_0
    return v0
.end method

.method public getPf_area()I
    .locals 1

    .line 1359
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    return v0
.end method

.method public getPf_dbb_area()I
    .locals 1

    .line 1355
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    return v0
.end method

.method public getmDspEQType()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1325
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDspEQType\u7c7b\u578b\u4e3a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1326
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    return-object v0
.end method

.method public getmEqDiff()F
    .locals 1

    .line 1588
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqDiff:F

    return v0
.end method

.method public getmEqGain()[I
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    return-object v0
.end method

.method public getmEqGainMax()I
    .locals 1

    .line 1316
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainMax:I

    return v0
.end method

.method public getmEqQValue()[I
    .locals 1

    .line 1320
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    return-object v0
.end method

.method public initDtsData()V
    .locals 10

    .line 1879
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->isSupportDts()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x0

    const-string v2, "dts_fun_switch"

    .line 1883
    invoke-virtual {p0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 1884
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initDtsData... dts_fun_switch="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "dsp3-DspManager-ych"

    invoke-static {v5, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_1

    return-void

    .line 1889
    :cond_1
    invoke-static {v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsFunctionSwitch(I)V

    .line 1892
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSceneData()I

    move-result v2

    .line 1893
    invoke-static {v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSceneModeData(I)V

    const-string v2, "dts_virtual_middle"

    .line 1895
    invoke-virtual {p0, v2, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v2

    .line 1896
    invoke-static {v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsVirtualMiddle(I)V

    const-string v2, "dts_sound_gathering_front"

    .line 1898
    invoke-virtual {p0, v2, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "dts_sound_gathering_after"

    .line 1899
    invoke-virtual {p0, v4, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "dts_sound_gathering_middle"

    .line 1900
    invoke-virtual {p0, v5, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v5

    .line 1901
    invoke-static {v3, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSoundFocus(II)V

    const/4 v2, 0x2

    .line 1902
    invoke-static {v2, v4}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSoundFocus(II)V

    const/4 v4, 0x3

    .line 1903
    invoke-static {v4, v5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSoundFocus(II)V

    const-string v5, "dts_surround_mode_front"

    .line 1905
    invoke-virtual {p0, v5, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "dts_surround_mode_middle"

    .line 1906
    invoke-virtual {p0, v6, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v6

    .line 1907
    invoke-static {v3, v5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSurroundMode(II)V

    .line 1908
    invoke-static {v2, v6}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSurroundMode(II)V

    const-string v5, "dts_bass_gain_front"

    .line 1910
    invoke-virtual {p0, v5, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v5

    const-string v6, "dts_bass_gain_after"

    .line 1911
    invoke-virtual {p0, v6, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v6

    const-string v7, "dts_bass_gain_middle"

    .line 1912
    invoke-virtual {p0, v7, v0}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v0

    const-string v7, "dts_bass_option_front"

    .line 1913
    invoke-virtual {p0, v7, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v7

    const-string v8, "dts_bass_option_after"

    .line 1914
    invoke-virtual {p0, v8, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v8

    const-string v9, "dts_bass_option_middle"

    .line 1915
    invoke-virtual {p0, v9, v1}, Lcom/nwd/dsp/uitls/DspManager;->getDtsSpData(Ljava/lang/String;I)I

    move-result v1

    .line 1916
    invoke-static {v3, v5, v7}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsBassGrow(III)V

    .line 1917
    invoke-static {v2, v6, v8}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsBassGrow(III)V

    .line 1918
    invoke-static {v4, v0, v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsBassGrow(III)V

    return-void
.end method

.method public initParam()V
    .locals 0

    return-void
.end method

.method public intArrayToString([I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1697
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    if-eqz v1, :cond_0

    .line 1699
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1701
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v0, p1, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public isCustomizeEQExists(Ljava/lang/String;)Z
    .locals 6

    .line 1594
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getCustomizeConfigList()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DspManager-ych"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    .line 1596
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_2

    .line 1597
    aget-object v5, v0, v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    const-string v0, "getCustomizeConfigList null"

    aput-object v0, p1, v3

    .line 1603
    invoke-static {v1, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    const/4 p1, 0x0

    :goto_1
    new-array v0, v2, [Ljava/lang/Object;

    .line 1605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCustomizeEQExists "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method

.method public isMbass_bugle_mute()Z
    .locals 1

    .line 1545
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_mute:Z

    return v0
.end method

.method public isMbass_bugle_opp()Z
    .locals 1

    .line 1471
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_opp:Z

    return v0
.end method

.method public isMcenter_bugle_mute()Z
    .locals 1

    .line 1541
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_mute:Z

    return v0
.end method

.method public isMcenter_bugle_opp()Z
    .locals 1

    .line 1467
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_opp:Z

    return v0
.end method

.method public isMcenter_linkage()Z
    .locals 1

    .line 1579
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_linkage:Z

    return v0
.end method

.method public isMfront_left_mute()Z
    .locals 1

    .line 1525
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_mute:Z

    return v0
.end method

.method public isMfront_left_opp()Z
    .locals 1

    .line 1451
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_opp:Z

    return v0
.end method

.method public isMfront_linkage()Z
    .locals 1

    .line 1561
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_linkage:Z

    return v0
.end method

.method public isMfront_right_mute()Z
    .locals 1

    .line 1529
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_mute:Z

    return v0
.end method

.method public isMfront_right_opp()Z
    .locals 1

    .line 1455
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_opp:Z

    return v0
.end method

.method public isMsuf_left_mute()Z
    .locals 1

    .line 1533
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_mute:Z

    return v0
.end method

.method public isMsuf_left_opp()Z
    .locals 1

    .line 1459
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_opp:Z

    return v0
.end method

.method public isMsuf_linkage()Z
    .locals 1

    .line 1570
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_linkage:Z

    return v0
.end method

.method public isMsuf_right_mute()Z
    .locals 1

    .line 1537
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_mute:Z

    return v0
.end method

.method public isMsuf_right_opp()Z
    .locals 1

    .line 1463
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_opp:Z

    return v0
.end method

.method public isOnlyFourBugle()Z
    .locals 5

    const/4 v0, 0x0

    .line 1925
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "sys/devices/virtual/misc/ak7604-dsp/user_dsp_4ch"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1929
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 1931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOnlyFourBugle="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "dsp3-DspManager-ych"

    invoke-static {v0, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method

.method public isOpenDengxiang()Z
    .locals 1

    .line 1302
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    return v0
.end method

.method public isShowStart()Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "persist.nwd.dsp.start.show"

    .line 1953
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1954
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "1"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 1958
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 v3, 0x0

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    .line 1960
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isShowStart isShow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", strShow="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3
.end method

.method public isSupportDts()Z
    .locals 2

    const-string v0, "persist.nwd.dsp.force.no.dts"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isUsed_customize()Z
    .locals 1

    .line 1553
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->used_customize:Z

    return v0
.end method

.method public ismRound_switch()Z
    .locals 1

    .line 1549
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mRound_switch:Z

    return v0
.end method

.method public loadEqDataFromSD(Ljava/lang/String;)V
    .locals 10

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/dsp/uitls/DspConstant;->PRESET_EQ_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 208
    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->PRESET_EQ3_PATH:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->PRESET_EQ_PATH:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    sget-object v3, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 214
    new-instance v6, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v2, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 216
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x0

    const/16 v2, 0xf

    .line 224
    sget-object v3, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v6, "K2401"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v6, "dsp3-DspManager-ych"

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v3

    const/16 v7, 0x15

    if-ne v3, v7, :cond_3

    .line 225
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_24"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v7, v5, [Ljava/lang/Object;

    .line 227
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadEqDataFromSD is K2401\u3001T7Max eqType="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " path24.exists="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", path24="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 228
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    const/16 v2, 0xc

    move-object v0, v1

    :cond_3
    new-array v3, v5, [Ljava/lang/Object;

    .line 233
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadEqDataFromSD eqType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " presetPath="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ", Build.DISPLAY="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    sget-object v3, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_FREQUENCE:Ljava/lang/String;

    iget-object v7, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    array-length v7, v7

    sget-object v8, Lcom/nwd/dsp/uitls/DspConstant;->DEFAULTFREQUENCE:[I

    invoke-static {v0, v3, v7, v8}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadEqDataFromSDFrequence(Ljava/lang/String;Ljava/lang/String;I[I)[I

    move-result-object v3

    iput-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    .line 236
    sget-object v3, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_GAIN:Ljava/lang/String;

    iget-object v7, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    array-length v7, v7

    invoke-static {v0, v3, v7, v2}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadEqDataFromSD(Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    .line 237
    sget-object v2, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_QVALUE:Ljava/lang/String;

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    array-length v3, v3

    const/16 v7, 0x14

    invoke-static {v0, v2, v3, v7}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadEqDataFromSD(Ljava/lang/String;Ljava/lang/String;II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    .line 240
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x18

    if-nez v0, :cond_4

    .line 241
    iput v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainMax:I

    goto :goto_2

    .line 243
    :cond_4
    sget-object v0, Lcom/nwd/dsp/uitls/DspConstant;->DSP_EQ_GAIN_MAX_PATH:Ljava/lang/String;

    sget-object v2, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_GAIN_MAX:Ljava/lang/String;

    const/16 v3, 0x1e

    invoke-static {v0, v2, v3}, Lcom/nwd/dsp/uitls/LoadDataUtils;->loadKeyValueFromSD(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainMax:I

    :goto_2
    new-array v0, v5, [Ljava/lang/Object;

    .line 246
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadEqDataFromSD mEqGainMax:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainMax:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", eqType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mdengxiang:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v6, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v2, "T60_XC"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "standard"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    if-nez p1, :cond_5

    const/4 p1, 0x1

    goto :goto_3

    :cond_5
    const/4 p1, 0x0

    .line 255
    :goto_3
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainMax:I

    if-eq v0, v1, :cond_9

    int-to-float v0, v0

    const/high16 v1, 0x41c00000    # 24.0f

    div-float/2addr v0, v1

    .line 257
    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqDiff:F

    .line 258
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 259
    :goto_4
    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    array-length v3, v2

    if-ge v1, v3, :cond_8

    .line 260
    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    aget v2, v2, v1

    int-to-float v2, v2

    iget v7, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqDiff:F

    div-float/2addr v2, v7

    float-to-double v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    aput v2, v3, v1

    const/4 v2, 0x7

    if-eq v1, v2, :cond_6

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_7

    :cond_6
    if-eqz p1, :cond_7

    const-string v2, "16, "

    .line 262
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 265
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    new-array p1, v5, [Ljava/lang/Object;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEqDataFromSD mEqGain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {v6, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 271
    :cond_9
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    iput-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    new-array p1, v5, [Ljava/lang/Object;

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---loadEqDataFromSD mEqGain:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v4

    invoke-static {v6, p1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    return-void
.end method

.method public loadOtherSPDate()V
    .locals 6

    .line 292
    invoke-direct {p0}, Lcom/nwd/dsp/uitls/DspManager;->initDspConstant()V

    .line 294
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_eq_type"

    const-string v2, "standard"

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 295
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sp\u4e2deqType\u4e3a: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "dsp3-DspManager-ych"

    invoke-static {v3, v2}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 296
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    iput-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    .line 298
    invoke-virtual {p0, v0}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_left"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    .line 303
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_right"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    .line 304
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_left"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    .line 305
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_right"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    .line 306
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "center_bugle"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    .line 307
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "bass_bugle"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    .line 311
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_left_opp"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_opp:Z

    .line 312
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_right_opp"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_opp:Z

    .line 313
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_left_opp"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_opp:Z

    .line 314
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_right_opp"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_opp:Z

    .line 315
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "center_bugle_opp"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_opp:Z

    .line 316
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "bass_bugle_opp"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_opp:Z

    .line 319
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_left_mute"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_mute:Z

    .line 320
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_right_mute"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_mute:Z

    .line 321
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_left_mute"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_mute:Z

    .line 322
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_right_mute"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_mute:Z

    .line 323
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "center_bugle_mute"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_mute:Z

    .line 324
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "bass_bugle_mute"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_mute:Z

    .line 327
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_linkage"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_linkage:Z

    .line 328
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_linkage"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_linkage:Z

    .line 329
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "center_linkage"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_linkage:Z

    .line 333
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_left_delay"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_delay:I

    .line 334
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "front_right_delay"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_delay:I

    .line 335
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_left_delay"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_delay:I

    .line 336
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "suf_right_delay"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_delay:I

    .line 337
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "center_bugle_delay"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_delay:I

    .line 338
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "bass_bugle_delay"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_delay:I

    .line 340
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/4 v2, 0x7

    const-string v5, "key_fader"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    .line 341
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v5, "key_balance"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    .line 342
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "key_bass_loud"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    .line 347
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_one_frequence"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_frequence:I

    .line 348
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_one_qvalue"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_qValue:I

    .line 351
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_two_frequence"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_frequence:I

    .line 352
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_two_qValue"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_qValue:I

    .line 355
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_three_frequence"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_frequence:I

    .line 356
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_three_qvalue"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_qValue:I

    .line 360
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "pf_area"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    .line 361
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "pf_dbb_area"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    .line 363
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "hpf_area_one"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one:I

    .line 364
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v2, 0xa

    const-string v5, "hpf_area_one_qvalue"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one_qvalue:I

    .line 365
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v2, 0x1f

    const-string v5, "lpf_area_one"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one:I

    .line 366
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v2, 0xa

    const-string v5, "lpf_area_one_qvalue"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one_qvalue:I

    .line 368
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "hpf_area_two"

    invoke-virtual {v0, v2, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two:I

    .line 369
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v2, 0xa

    const-string v5, "hpf_area_two_qvalue"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two_qvalue:I

    .line 370
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v2, 0x1f

    const-string v5, "lpf_area_two"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two:I

    .line 371
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v2, 0xa

    const-string v5, "lpf_area_two_qvalue"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two_qvalue:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 380
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsp_double_bass: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", hpf_area_three_default:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", lpf_area_three_default:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    invoke-static {v3, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 381
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "hpf_area_three"

    invoke-virtual {v0, v1, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three:I

    .line 382
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v1, 0xa

    const-string v2, "hpf_area_three_qvalue"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three_qvalue:I

    .line 383
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v1, 0x9

    const-string v2, "lpf_area_three"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three:I

    .line 384
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v1, 0xa

    const-string v2, "lpf_area_three_qvalue"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three_qvalue:I

    .line 386
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "hpf_area_four"

    invoke-virtual {v0, v1, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four:I

    .line 387
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v1, 0xa

    const-string v2, "hpf_area_four_qvalue"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four_qvalue:I

    .line 388
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v1, 0x9

    const-string v2, "lpf_area_four"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four:I

    .line 389
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/16 v1, 0xa

    const-string v2, "lpf_area_four_qvalue"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four_qvalue:I

    .line 391
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "round_switch"

    invoke-virtual {v0, v1, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mRound_switch:Z

    return-void
.end method

.method public loadSPData()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "loadData\u52a0\u8f7dSp\u4e2d\u6570\u636e"

    aput-object v2, v0, v1

    const-string v1, "dsp3-DspManager-ych"

    .line 278
    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->loadOtherSPDate()V

    return-void
.end method

.method public resetSystem()V
    .locals 5

    const-string v0, "standard"

    .line 1262
    invoke-virtual {p0, v0}, Lcom/nwd/dsp/uitls/DspManager;->loadEqDataFromSD(Ljava/lang/String;)V

    .line 1264
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nwd/dsp/uitls/DspData;->saveEqAll(Ljava/lang/String;[I[I[I)V

    .line 1266
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    invoke-static {v0}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    invoke-static {v2}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "customize"

    invoke-static {v3, v0, v1, v2}, Lcom/nwd/dsp/uitls/LoadDataUtils;->saveEqDataToSD(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)V

    .line 1267
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    invoke-static {v0}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    invoke-static {v2}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "customizetwo"

    invoke-static {v3, v0, v1, v2}, Lcom/nwd/dsp/uitls/LoadDataUtils;->saveEqDataToSD(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)V

    return-void
.end method

.method public saveCustomizeEqDataFile(Ljava/lang/String;)Z
    .locals 9

    const-string v0, "dsp3-DspManager-ych"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    .line 1634
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1635
    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1638
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v5, "chmod 777 "

    if-nez v4, :cond_0

    .line 1639
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 1640
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/nwd/dsp/uitls/DspConstant;->CUSTOMIZE_EQ_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1642
    :cond_0
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-array v6, v1, [Ljava/lang/Object;

    .line 1643
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveCustomizeEqDataFile fileDir.exists()="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", file.exists()="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", path="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    invoke-static {v0, v6}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1645
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v3, :cond_1

    .line 1647
    :try_start_2
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 1648
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    :try_start_3
    new-array v4, v1, [Ljava/lang/Object;

    .line 1650
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCustomizeEqDataFile error0="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1651
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1654
    :cond_1
    :goto_0
    new-instance v3, Ljava/util/Properties;

    invoke-direct {v3}, Ljava/util/Properties;-><init>()V

    new-array v4, v1, [Ljava/lang/Object;

    .line 1655
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCustomizeEqDataFile.mEqGain="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {p0, v7}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/Object;

    .line 1656
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveCustomizeEqDataFile.mEqGainOriginal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-virtual {p0, v7}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static {v0, v4}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1657
    sget-object v4, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_FREQUENCE:Ljava/lang/String;

    iget-object v6, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    invoke-virtual {p0, v6}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1658
    sget-object v4, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_GAIN:Ljava/lang/String;

    iget-object v6, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-virtual {p0, v6}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1659
    sget-object v4, Lcom/nwd/dsp/uitls/DspData;->KEY_PART_QVALUE:Ljava/lang/String;

    iget-object v6, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    invoke-virtual {p0, v6}, Lcom/nwd/dsp/uitls/DspManager;->intArrayToString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 1661
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 1662
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1663
    invoke-virtual {v3, v4, p1}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 1664
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 1670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveCustomizeEqDataFile error="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1671
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public send10EQGain([I)V
    .locals 1

    .line 644
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    if-eqz v0, :cond_0

    .line 646
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU10eq([I)V

    :cond_0
    return-void
.end method

.method public send32EQGain([ILjava/lang/String;)V
    .locals 7

    .line 620
    iput-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    .line 623
    iput-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    .line 624
    invoke-virtual {p0, p2}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array v0, p2, [Ljava/lang/Object;

    const-string v1, "dsp3-DspManager-ych"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 625
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u7f6egain\u503c"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    invoke-static {v0}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 626
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    .line 627
    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    aget v5, p1, v0

    int-to-float v5, v5

    iget v6, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqDiff:F

    mul-float v5, v5, v6

    float-to-int v5, v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array p1, p2, [Ljava/lang/Object;

    aput-object v1, p1, v2

    .line 629
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u8bbe\u7f6egain\u503c \u8f6c\u6362\u540e\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p1}, Lcom/blankj/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 631
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {p1, p2, v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->send32EQData([I[I[I)V

    .line 634
    invoke-static {}, Lcom/nwd/dsp/uitls/DspData;->getInstance()Lcom/nwd/dsp/uitls/DspData;

    move-result-object p1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->saveEqAll(Ljava/lang/String;[I[I[I)V

    .line 635
    invoke-direct {p0}, Lcom/nwd/dsp/uitls/DspManager;->saveEqDataToSD()V

    .line 636
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 637
    sget-boolean p1, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    if-eqz p1, :cond_1

    .line 638
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU([I)V

    :cond_1
    return-void
.end method

.method public send32EQModeData(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-virtual {p0, p1, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;Z)V

    return-void
.end method

.method public send32EQModeData(Ljava/lang/String;Z)V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 655
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u8bbe\u7f6e\u6a21\u5f0f: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v0, v0, [Ljava/lang/Object;

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4e00\u4e2a\u6a21\u5f0f\u4e3a: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 657
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 659
    :cond_0
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "key_eq_type"

    invoke-virtual {p2, v0, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    invoke-static {}, Lcom/nwd/dsp/uitls/DspData;->getInstance()Lcom/nwd/dsp/uitls/DspData;

    move-result-object p2

    const-string v1, "customize"

    invoke-virtual {p2, v0, v1}, Lcom/nwd/dsp/uitls/DspData;->getSpStr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    .line 663
    invoke-virtual {p0, p1}, Lcom/nwd/dsp/uitls/DspManager;->loadEqDataFromSD(Ljava/lang/String;)V

    .line 666
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {p2, v0, v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->send32EQData([I[I[I)V

    .line 669
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/nwd/dsp/uitls/DspData;->saveEqAll(Ljava/lang/String;[I[I[I)V

    .line 671
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 673
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-static {p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU(Ljava/lang/String;)V

    .line 676
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v0, "standard"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v0, "pop"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v0, "rock"

    .line 677
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v0, "jazz"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v0, "classic"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 680
    sget-boolean p2, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    if-eqz p2, :cond_1

    .line 681
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU([I)V

    .line 686
    :cond_1
    invoke-virtual {p0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public sendAreaData(Ljava/lang/String;)V
    .locals 5

    .line 1114
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "area_three"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "area_four"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "area_two"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "area_one"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "pf_area"

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto :goto_2

    .line 1131
    :cond_1
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1132
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    goto :goto_2

    .line 1126
    :cond_2
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1127
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    goto :goto_2

    .line 1121
    :cond_3
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1122
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    goto :goto_2

    .line 1116
    :cond_4
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1117
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x634a604c -> :sswitch_3
        -0x634a4c66 -> :sswitch_2
        -0x605ba68 -> :sswitch_1
        0x46107b6c -> :sswitch_0
    .end sparse-switch
.end method

.method public sendAreayData(Ljava/lang/String;II)V
    .locals 6

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4f4e\u97f3\u589e\u5f3a\u6570\u636e\u533a\u57df\u4e3a: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p3, :cond_9

    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ltz p2, :cond_9

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    goto/16 :goto_1

    :cond_1
    const/4 v0, -0x1

    .line 981
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x634a604c

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_4

    const v2, -0x634a4c66

    if-eq v1, v2, :cond_3

    const v2, 0x46107b6c

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const-string v1, "area_three"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_3
    const-string v1, "area_two"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "area_one"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v0, 0x0

    :cond_5
    :goto_0
    const-string p1, "pf_dbb_area"

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    goto/16 :goto_1

    .line 1002
    :cond_6
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "marea_three_frequence"

    invoke-virtual {v0, v1, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1003
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_three_qvalue"

    invoke-virtual {v0, v2, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1005
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, v3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1006
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    .line 1007
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_frequence:I

    .line 1008
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v2, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_qValue:I

    .line 1010
    invoke-static {v3, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendAreayData(III)V

    goto :goto_1

    .line 993
    :cond_7
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "marea_two_frequence"

    invoke-virtual {v0, v1, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 994
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_two_qValue"

    invoke-virtual {v0, v2, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 995
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, v4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 996
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    .line 997
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_frequence:I

    .line 998
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v2, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_qValue:I

    .line 999
    invoke-static {v4, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendAreayData(III)V

    goto :goto_1

    .line 983
    :cond_8
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "marea_one_frequence"

    invoke-virtual {v0, v1, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 984
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "marea_one_qvalue"

    invoke-virtual {v0, v2, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 985
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, v5}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 986
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    .line 987
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_frequence:I

    .line 988
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v2, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_qValue:I

    .line 990
    invoke-static {v5, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendAreayData(III)V

    :cond_9
    :goto_1
    return-void
.end method

.method public sendBugleData(Ljava/lang/String;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    if-ltz v2, :cond_8

    const/16 v3, 0xf

    if-le v2, v3, :cond_0

    goto/16 :goto_2

    .line 709
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "center_bugle"

    const-string v6, "front_left"

    const-string v7, "suf_right"

    const-string v8, "bass_bugle"

    const-string v9, "front_right"

    const-string v10, "suf_left"

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x2

    const/4 v15, 0x1

    const/4 v3, 0x0

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_4
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_5
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_7

    if-eq v1, v15, :cond_6

    if-eq v1, v14, :cond_5

    if-eq v1, v13, :cond_4

    if-eq v1, v12, :cond_3

    if-eq v1, v11, :cond_2

    goto :goto_2

    .line 736
    :cond_2
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v8, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 737
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v8, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    .line 738
    invoke-static {v11, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 731
    :cond_3
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v5, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 732
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v5, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    .line 733
    invoke-static {v12, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 726
    :cond_4
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v7, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 727
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v7, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    .line 728
    invoke-static {v13, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 721
    :cond_5
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v10, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 722
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v10, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    .line 723
    invoke-static {v14, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 716
    :cond_6
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v9, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 717
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v9, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    .line 718
    invoke-static {v15, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 711
    :cond_7
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v6, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 712
    iget-object v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v1, v6, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    .line 713
    invoke-static {v3, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    :cond_8
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75241ade -> :sswitch_5
        -0x56d7ff7a -> :sswitch_4
        -0x38a8ba73 -> :sswitch_3
        -0x2f08df9f -> :sswitch_2
        -0x135413a3 -> :sswitch_1
        0x10939a83 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendBugleDataMute(Ljava/lang/String;Z)V
    .locals 7

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "center_bugle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "front_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "suf_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "bass_bugle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "front_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "suf_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_b

    if-eq p1, v5, :cond_9

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 799
    :cond_1
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "bass_bugle_mute"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 800
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_mute:Z

    if-eqz p2, :cond_2

    .line 803
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleDataMute(I)V

    goto/16 :goto_2

    .line 805
    :cond_2
    iget p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    invoke-static {v1, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto/16 :goto_2

    .line 789
    :cond_3
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "center_bugle_mute"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 790
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_mute:Z

    if-eqz p2, :cond_4

    .line 793
    invoke-static {v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleDataMute(I)V

    goto/16 :goto_2

    .line 795
    :cond_4
    iget p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    invoke-static {v2, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto/16 :goto_2

    .line 779
    :cond_5
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "suf_right_mute"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 780
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_mute:Z

    if-eqz p2, :cond_6

    .line 783
    invoke-static {v3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleDataMute(I)V

    goto :goto_2

    .line 785
    :cond_6
    iget p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    invoke-static {v3, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 769
    :cond_7
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "suf_left_mute"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 770
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_mute:Z

    if-eqz p2, :cond_8

    .line 773
    invoke-static {v4}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleDataMute(I)V

    goto :goto_2

    .line 775
    :cond_8
    iget p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    invoke-static {v4, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 759
    :cond_9
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "front_right_mute"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 760
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_mute:Z

    if-eqz p2, :cond_a

    .line 763
    invoke-static {v5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleDataMute(I)V

    goto :goto_2

    .line 765
    :cond_a
    iget p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    invoke-static {v5, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    goto :goto_2

    .line 747
    :cond_b
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "front_left_mute"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 748
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_mute:Z

    if-eqz p2, :cond_c

    .line 751
    invoke-static {v6}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleDataMute(I)V

    goto :goto_2

    .line 753
    :cond_c
    iget p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    invoke-static {v6, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleData(II)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75241ade -> :sswitch_5
        -0x56d7ff7a -> :sswitch_4
        -0x38a8ba73 -> :sswitch_3
        -0x2f08df9f -> :sswitch_2
        -0x135413a3 -> :sswitch_1
        0x10939a83 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendBugleDelayData(Ljava/lang/String;I)V
    .locals 8

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 849
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u53d1\u9001\u5587\u53ed\u5ef6\u8fdf\u6570\u636e sendBugleDelayData type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dsp_double_bass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isEq4CH="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->isEq4CH:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p2, :cond_e

    const/16 v1, 0xc8

    if-le p2, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v1, -0x1

    .line 851
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "center_bugle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_1
    const-string v2, "front_left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_2
    const-string v2, "suf_right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "bass_bugle"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "front_right"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_5
    const-string v2, "suf_left"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :cond_1
    :goto_0
    if-eqz v1, :cond_b

    if-eq v1, v0, :cond_a

    if-eq v1, v7, :cond_7

    if-eq v1, v5, :cond_6

    if-eq v1, v6, :cond_3

    if-eq v1, v4, :cond_2

    goto/16 :goto_1

    .line 894
    :cond_2
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "bass_bugle_delay"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 895
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_delay:I

    .line 896
    invoke-static {v4, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto/16 :goto_1

    .line 884
    :cond_3
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "center_bugle_delay"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 885
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_delay:I

    .line 887
    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->isEq4CH:Z

    if-eqz p1, :cond_4

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/nwd/dsp/uitls/AppUtil;->isN65OrN61()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 888
    :cond_4
    invoke-static {v3, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto/16 :goto_1

    .line 890
    :cond_5
    invoke-static {v6, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto/16 :goto_1

    .line 879
    :cond_6
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "suf_right_delay"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 880
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_delay:I

    .line 881
    invoke-static {v5, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto :goto_1

    .line 869
    :cond_7
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "suf_left_delay"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 870
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_delay:I

    .line 872
    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->isEq4CH:Z

    if-eqz p1, :cond_8

    if-eqz p1, :cond_9

    invoke-static {}, Lcom/nwd/dsp/uitls/AppUtil;->isN65OrN61()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 873
    :cond_8
    invoke-static {v6, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto :goto_1

    .line 875
    :cond_9
    invoke-static {v7, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto :goto_1

    .line 864
    :cond_a
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "front_right_delay"

    invoke-virtual {p1, v1, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 865
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_delay:I

    .line 866
    invoke-static {v0, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto :goto_1

    .line 853
    :cond_b
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v0, "front_left_delay"

    invoke-virtual {p1, v0, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 854
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_delay:I

    .line 856
    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->dsp_double_bass:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->isEq4CH:Z

    if-eqz p1, :cond_c

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/nwd/dsp/uitls/AppUtil;->isN65OrN61()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 858
    :cond_c
    invoke-static {v7, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    goto :goto_1

    .line 860
    :cond_d
    invoke-static {v3, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDelayData(II)V

    :cond_e
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75241ade -> :sswitch_5
        -0x56d7ff7a -> :sswitch_4
        -0x38a8ba73 -> :sswitch_3
        -0x2f08df9f -> :sswitch_2
        -0x135413a3 -> :sswitch_1
        0x10939a83 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendBugleOppData(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 7

    .line 813
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "center_bugle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "front_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "suf_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "bass_bugle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "front_right"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "suf_left"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v5, :cond_5

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    goto/16 :goto_2

    .line 840
    :cond_1
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "bass_bugle_opp"

    invoke-virtual {p1, v2, v0}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 841
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v2, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_opp:Z

    .line 842
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v1, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleOppData(IZ)V

    goto/16 :goto_2

    .line 835
    :cond_2
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "center_bugle_opp"

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 836
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_opp:Z

    .line 837
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v2, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleOppData(IZ)V

    goto :goto_2

    .line 830
    :cond_3
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "suf_right_opp"

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 831
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_opp:Z

    .line 832
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v3, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleOppData(IZ)V

    goto :goto_2

    .line 825
    :cond_4
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "suf_left_opp"

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 826
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_opp:Z

    .line 827
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v4, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleOppData(IZ)V

    goto :goto_2

    .line 820
    :cond_5
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "front_right_opp"

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 821
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_opp:Z

    .line 822
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v5, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleOppData(IZ)V

    goto :goto_2

    .line 815
    :cond_6
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "front_left_opp"

    invoke-virtual {p1, v1, v0}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 816
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v1, v6}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_opp:Z

    .line 817
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v6, p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendBugleOppData(IZ)V

    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x75241ade -> :sswitch_5
        -0x56d7ff7a -> :sswitch_4
        -0x38a8ba73 -> :sswitch_3
        -0x2f08df9f -> :sswitch_2
        -0x135413a3 -> :sswitch_1
        0x10939a83 -> :sswitch_0
    .end sparse-switch
.end method

.method public sendDBBAreaData(Ljava/lang/String;)V
    .locals 5

    .line 1140
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x634a604c

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x634a4c66

    if-eq v0, v1, :cond_1

    const v1, 0x46107b6c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "area_three"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "area_two"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "area_one"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, "pf_dbb_area"

    if-eqz p1, :cond_6

    if-eq p1, v3, :cond_5

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 1152
    :cond_4
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1153
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    goto :goto_2

    .line 1147
    :cond_5
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1148
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    goto :goto_2

    .line 1142
    :cond_6
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1143
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {p1, v0, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_dbb_area:I

    :goto_2
    return-void
.end method

.method public sendDBBReset(Ljava/lang/String;)V
    .locals 8

    .line 961
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x634a604c

    const-string v2, "area_three"

    const-string v3, "area_two"

    const-string v4, "area_one"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x634a4c66

    if-eq v0, v1, :cond_1

    const v1, 0x46107b6c

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_4

    goto :goto_2

    .line 969
    :cond_4
    invoke-virtual {p0, v2, v7, v7}, Lcom/nwd/dsp/uitls/DspManager;->sendAreayData(Ljava/lang/String;II)V

    goto :goto_2

    .line 966
    :cond_5
    invoke-virtual {p0, v3, v7, v7}, Lcom/nwd/dsp/uitls/DspManager;->sendAreayData(Ljava/lang/String;II)V

    goto :goto_2

    .line 963
    :cond_6
    invoke-virtual {p0, v4, v7, v7}, Lcom/nwd/dsp/uitls/DspManager;->sendAreayData(Ljava/lang/String;II)V

    :goto_2
    return-void
.end method

.method public sendDengxiangData(Z)V
    .locals 3

    .line 905
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_bass_loud"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 906
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    .line 907
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDengxiangData(Z)V

    .line 909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u662f\u4e0d\u662f10\u6bb5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 911
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU(Z)V

    :cond_0
    return-void
.end method

.method public sendDtsBassGrow(III)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1797
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtsBassGrow direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", option="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1798
    invoke-static {p1, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsBassGrow(III)V

    if-ne p1, v0, :cond_0

    const-string p1, "dts_bass_gain_front"

    .line 1800
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    const-string p1, "dts_bass_option_front"

    .line 1801
    invoke-virtual {p0, p1, p3}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "dts_bass_gain_after"

    .line 1803
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    const-string p1, "dts_bass_option_after"

    .line 1804
    invoke-virtual {p0, p1, p3}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "dts_bass_gain_middle"

    .line 1806
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    const-string p1, "dts_bass_option_middle"

    .line 1807
    invoke-virtual {p0, p1, p3}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendDtsFunctionSwitch(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1838
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtsFunctionSwitch onOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1839
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsFunctionSwitch(I)V

    const-string v0, "dts_fun_switch"

    .line 1840
    invoke-virtual {p0, v0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    return-void
.end method

.method public sendDtsSceneMode(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1740
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtsSceneMode mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1741
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSceneModeData(I)V

    const-string v0, "dts_scene_mode"

    .line 1742
    invoke-virtual {p0, v0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    return-void
.end method

.method public sendDtsSoundFocus(II)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1765
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtsSoundFocus direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1766
    invoke-static {p1, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSoundFocus(II)V

    if-ne p1, v0, :cond_0

    const-string p1, "dts_sound_gathering_front"

    .line 1768
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "dts_sound_gathering_after"

    .line 1770
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "dts_sound_gathering_middle"

    .line 1772
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public sendDtsSurroundMode(II)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 1782
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDtsSurroundMode direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", gain="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1783
    invoke-static {p1, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsSurroundMode(II)V

    if-ne p1, v0, :cond_0

    const-string p1, "dts_surround_mode_front"

    .line 1785
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "dts_surround_mode_middle"

    .line 1787
    invoke-virtual {p0, p1, p2}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public sendDtsVirtualMiddle(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtsVirtualMiddle onOff="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1753
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendDtsVirtualMiddle(I)V

    const-string v0, "dts_virtual_middle"

    .line 1754
    invoke-virtual {p0, v0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setDtsSpData(Ljava/lang/String;I)V

    return-void
.end method

.method public sendF2Data()V
    .locals 15

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/16 v2, 0x8

    new-array v3, v2, [Ljava/lang/Object;

    .line 419
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v3, v6

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x3

    aput-object v4, v3, v7

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v8, 0x4

    aput-object v4, v3, v8

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x5

    aput-object v4, v3, v9

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v10, 0x6

    aput-object v4, v3, v10

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v11, 0x7

    aput-object v4, v3, v11

    const-string v4, "sendF2Data \u524d\u5de6\u97f3\u91cf=%s, \u524d\u53f3=%s, \u540e\u5de6=%s, \u540e\u53f3=%s, \u4e2d\u7f6e=%s, \u91cd\u4f4e\u97f3=%s, \u58f0\u573amfader=%s, \u58f0\u573ambalance=%s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const-string v3, "dsp3-DspManager-ych"

    invoke-static {v3, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x69

    new-array v1, v1, [B

    aput-byte v9, v1, v5

    .line 424
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left:I

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    .line 425
    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_opp:Z

    int-to-byte v3, v3

    aput-byte v3, v1, v6

    .line 426
    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_mute:Z

    int-to-byte v3, v3

    aput-byte v3, v1, v7

    .line 427
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_left_delay:I

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v8

    shr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v9

    aput-byte v9, v1, v10

    .line 431
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right:I

    int-to-byte v3, v3

    aput-byte v3, v1, v11

    .line 432
    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_opp:Z

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v3, 0x9

    .line 433
    iget-boolean v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_mute:Z

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 434
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_right_delay:I

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    const/16 v10, 0xa

    aput-byte v4, v1, v10

    const/16 v4, 0xb

    shr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    const/16 v3, 0xc

    aput-byte v9, v1, v3

    const/16 v3, 0xd

    .line 438
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    .line 439
    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_opp:Z

    int-to-byte v3, v3

    const/16 v4, 0xe

    aput-byte v3, v1, v4

    const/16 v3, 0xf

    .line 440
    iget-boolean v11, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_mute:Z

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    const/16 v3, 0x10

    .line 441
    iget v11, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_left_delay:I

    and-int/lit16 v12, v11, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x11

    shr-int/2addr v11, v2

    and-int/lit16 v11, v11, 0xff

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    const/16 v3, 0x12

    aput-byte v9, v1, v3

    const/16 v3, 0x13

    .line 446
    iget v11, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right:I

    int-to-byte v11, v11

    aput-byte v11, v1, v3

    .line 447
    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_opp:Z

    int-to-byte v3, v3

    const/16 v11, 0x14

    aput-byte v3, v1, v11

    const/16 v3, 0x15

    .line 448
    iget-boolean v12, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_mute:Z

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x16

    .line 449
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_right_delay:I

    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v3

    const/16 v3, 0x17

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x18

    aput-byte v9, v1, v3

    const/16 v3, 0x19

    .line 453
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle:I

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x1a

    .line 454
    iget-boolean v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_opp:Z

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x1b

    .line 455
    iget-boolean v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_mute:Z

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x1c

    .line 456
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_bugle_delay:I

    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v3

    const/16 v3, 0x1d

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x1e

    aput-byte v9, v1, v3

    const/16 v3, 0x1f

    .line 461
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle:I

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x20

    .line 462
    iget-boolean v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_opp:Z

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x21

    .line 463
    iget-boolean v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_mute:Z

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x22

    .line 464
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->mbass_bugle_delay:I

    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v3

    const/16 v3, 0x23

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x24

    aput-byte v8, v1, v3

    const/16 v3, 0x25

    .line 470
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x26

    .line 471
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x27

    .line 472
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one_qvalue:I

    and-int/lit16 v13, v12, 0xff

    int-to-byte v13, v13

    aput-byte v13, v1, v3

    const/16 v3, 0x28

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x29

    aput-byte v8, v1, v3

    const/16 v3, 0x2a

    .line 477
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x2b

    .line 478
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    .line 479
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one_qvalue:I

    and-int/lit16 v12, v3, 0xff

    int-to-byte v12, v12

    const/16 v13, 0x2c

    aput-byte v12, v1, v13

    const/16 v12, 0x2d

    shr-int/2addr v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v12

    const/16 v3, 0x2e

    aput-byte v8, v1, v3

    const/16 v3, 0x2f

    .line 485
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x30

    .line 486
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x31

    .line 487
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two_qvalue:I

    and-int/lit16 v14, v12, 0xff

    int-to-byte v14, v14

    aput-byte v14, v1, v3

    const/16 v3, 0x32

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x33

    aput-byte v8, v1, v3

    const/16 v3, 0x34

    .line 491
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x35

    .line 492
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x36

    .line 493
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two_qvalue:I

    and-int/lit16 v14, v12, 0xff

    int-to-byte v14, v14

    aput-byte v14, v1, v3

    const/16 v3, 0x37

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x38

    aput-byte v8, v1, v3

    const/16 v3, 0x39

    .line 498
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x3a

    .line 499
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x3b

    .line 500
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three_qvalue:I

    and-int/lit16 v14, v12, 0xff

    int-to-byte v14, v14

    aput-byte v14, v1, v3

    const/16 v3, 0x3c

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x3d

    aput-byte v8, v1, v3

    const/16 v3, 0x3e

    .line 504
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x3f

    .line 505
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x40

    .line 506
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three_qvalue:I

    and-int/lit16 v14, v12, 0xff

    int-to-byte v14, v14

    aput-byte v14, v1, v3

    const/16 v3, 0x41

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x42

    aput-byte v8, v1, v3

    const/16 v3, 0x43

    .line 511
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x44

    .line 512
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x45

    .line 513
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four_qvalue:I

    and-int/lit16 v14, v12, 0xff

    int-to-byte v14, v14

    aput-byte v14, v1, v3

    const/16 v3, 0x46

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x47

    aput-byte v8, v1, v3

    const/16 v3, 0x48

    .line 517
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x49

    .line 518
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four:I

    invoke-static {v12}, Lcom/nwd/dsp/uitls/AppUtil;->frequenceToReal(I)I

    move-result v12

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x4a

    .line 519
    iget v12, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four_qvalue:I

    and-int/lit16 v14, v12, 0xff

    int-to-byte v14, v14

    aput-byte v14, v1, v3

    const/16 v3, 0x4b

    shr-int/2addr v12, v2

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v1, v3

    const/16 v3, 0x4c

    aput-byte v6, v1, v3

    .line 525
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    if-gtz v3, :cond_0

    .line 526
    iput v5, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    .line 528
    :cond_0
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    if-le v3, v4, :cond_1

    .line 529
    iput v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    .line 532
    :cond_1
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    if-gtz v3, :cond_2

    .line 533
    iput v5, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    .line 535
    :cond_2
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    if-le v3, v4, :cond_3

    .line 536
    iput v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    :cond_3
    const/16 v3, 0x4d

    .line 538
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x4e

    .line 539
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x4f

    aput-byte v6, v1, v3

    const/16 v3, 0x50

    aput-byte v10, v1, v3

    const/16 v3, 0x51

    aput-byte v5, v1, v3

    const/16 v3, 0x52

    aput-byte v9, v1, v3

    const/16 v3, 0x53

    .line 548
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_frequence:I

    invoke-static {v4}, Lcom/nwd/dsp/uitls/AppUtil;->bassFrequency(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x54

    .line 549
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_frequence:I

    invoke-static {v4}, Lcom/nwd/dsp/uitls/AppUtil;->bassFrequency(I)I

    move-result v4

    shr-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x55

    aput-byte v11, v1, v3

    const/16 v3, 0x56

    aput-byte v5, v1, v3

    const/16 v3, 0x57

    .line 552
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_one_qValue:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x58

    aput-byte v9, v1, v3

    const/16 v3, 0x59

    .line 557
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_frequence:I

    invoke-static {v4}, Lcom/nwd/dsp/uitls/AppUtil;->bassFrequency(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x5a

    .line 558
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_frequence:I

    invoke-static {v4}, Lcom/nwd/dsp/uitls/AppUtil;->bassFrequency(I)I

    move-result v4

    shr-int/2addr v4, v2

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x5b

    aput-byte v11, v1, v3

    const/16 v3, 0x5c

    aput-byte v5, v1, v3

    const/16 v3, 0x5d

    .line 561
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_two_qValue:I

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x5e

    aput-byte v9, v1, v3

    const/16 v3, 0x5f

    .line 566
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_frequence:I

    invoke-static {v4}, Lcom/nwd/dsp/uitls/AppUtil;->bassFrequency(I)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/16 v3, 0x60

    .line 567
    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_frequence:I

    invoke-static {v4}, Lcom/nwd/dsp/uitls/AppUtil;->bassFrequency(I)I

    move-result v4

    shr-int/lit8 v2, v4, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    const/16 v2, 0x61

    aput-byte v11, v1, v2

    const/16 v2, 0x62

    aput-byte v5, v1, v2

    const/16 v2, 0x63

    .line 570
    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->marea_three_qValue:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x64

    aput-byte v8, v1, v2

    const/16 v2, 0x65

    aput-byte v7, v1, v2

    const/16 v2, 0x66

    .line 577
    iget-boolean v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mRound_switch:Z

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    const/16 v2, 0x67

    aput-byte v13, v1, v2

    const/16 v2, 0x68

    aput-byte v0, v1, v2

    .line 581
    invoke-static {v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendOtherAll([B)V

    return-void
.end method

.method public sendHLData(Ljava/lang/String;IIII)V
    .locals 8

    if-ltz p2, :cond_9

    const/16 v0, 0x23

    if-le p2, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-ltz p3, :cond_9

    const/16 v1, 0x1e

    if-le p3, v1, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ltz p4, :cond_9

    if-le p4, v0, :cond_2

    goto/16 :goto_1

    :cond_2
    if-ltz p5, :cond_9

    if-le p5, v1, :cond_3

    goto/16 :goto_1

    .line 1038
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendHLData type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hQvale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lQvalue:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 1039
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "area_three"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string v1, "area_four"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_2
    const-string v1, "area_two"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "area_one"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x0

    :cond_4
    :goto_0
    const/4 p1, 0x5

    const-string v1, "pf_area"

    if-eqz v0, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_5

    goto/16 :goto_1

    .line 1092
    :cond_5
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1093
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v3, "hpf_area_four"

    invoke-virtual {v0, v3, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1094
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v4, "hpf_area_four_qvalue"

    invoke-virtual {v0, v4, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1095
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v6, "lpf_area_four"

    invoke-virtual {v0, v6, p4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1096
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v6, "lpf_area_four_qvalue"

    invoke-virtual {v0, v6, p5}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1097
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    .line 1098
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v3, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four:I

    .line 1099
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v4, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_four_qvalue:I

    .line 1101
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "lpf_area_four"

    invoke-virtual {v0, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four:I

    .line 1102
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "lpf_area_four_qvalue"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_four_qvalue:I

    .line 1104
    invoke-static {v2, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendHpfData(III)V

    .line 1105
    invoke-static {v2, p4, p5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendLpfData(III)V

    goto/16 :goto_1

    .line 1075
    :cond_6
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1076
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "hpf_area_three"

    invoke-virtual {v0, v2, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1077
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v4, "hpf_area_three_qvalue"

    invoke-virtual {v0, v4, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1078
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v6, "lpf_area_three"

    invoke-virtual {v0, v6, p4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1079
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v7, "lpf_area_three_qvalue"

    invoke-virtual {v0, v7, p5}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1081
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    .line 1082
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v2, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three:I

    .line 1083
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v4, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_three_qvalue:I

    .line 1084
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v6, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three:I

    .line 1085
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v7, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_three_qvalue:I

    .line 1087
    invoke-static {v3, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendHpfData(III)V

    .line 1088
    invoke-static {v3, p4, p5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendLpfData(III)V

    goto/16 :goto_1

    .line 1057
    :cond_7
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1058
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "hpf_area_two"

    invoke-virtual {v0, v2, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1059
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v3, "hpf_area_two_qvalue"

    invoke-virtual {v0, v3, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1060
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v6, "lpf_area_two"

    invoke-virtual {v0, v6, p4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1061
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v7, "lpf_area_two_qvalue"

    invoke-virtual {v0, v7, p5}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1063
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    .line 1064
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v2, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two:I

    .line 1065
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v3, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_two_qvalue:I

    .line 1066
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v6, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two:I

    .line 1067
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v7, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_two_qvalue:I

    .line 1069
    invoke-static {v4, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendHpfData(III)V

    .line 1070
    invoke-static {v4, p4, p5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendLpfData(III)V

    goto :goto_1

    .line 1041
    :cond_8
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1042
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "hpf_area_one"

    invoke-virtual {v0, v2, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1043
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v3, "hpf_area_one_qvalue"

    invoke-virtual {v0, v3, p3}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1044
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v4, "lpf_area_one"

    invoke-virtual {v0, v4, p4}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1045
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v6, "lpf_area_one_qvalue"

    invoke-virtual {v0, v6, p5}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 1046
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    .line 1047
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v2, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one:I

    .line 1048
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v3, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->hpf_area_one_qvalue:I

    .line 1049
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v4, v5}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one:I

    .line 1050
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v6, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/nwd/dsp/uitls/DspManager;->lpf_area_one_qvalue:I

    .line 1052
    invoke-static {v5, p2, p3}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendHpfData(III)V

    .line 1053
    invoke-static {v5, p4, p5}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendLpfData(III)V

    :cond_9
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x634a604c -> :sswitch_3
        -0x634a4c66 -> :sswitch_2
        -0x605ba68 -> :sswitch_1
        0x46107b6c -> :sswitch_0
    .end sparse-switch
.end method

.method public sendHLPFReset(Ljava/lang/String;)V
    .locals 12

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 938
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e0a\u4e00\u4e2a\u533a\u57df\u4e3a: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->pf_area:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 939
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x2

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "area_three"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "area_four"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "area_two"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "area_one"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v3, -0x1

    :goto_1
    if-eqz v3, :cond_4

    if-eq v3, v0, :cond_3

    if-eq v3, v4, :cond_2

    if-eq v3, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    const/16 v8, 0xa

    const/16 v9, 0x9

    const/16 v10, 0xa

    const-string v6, "area_four"

    move-object v5, p0

    .line 954
    invoke-virtual/range {v5 .. v10}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0x9

    const/16 v5, 0xa

    const-string v1, "area_three"

    move-object v0, p0

    .line 948
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    const/16 v9, 0xa

    const/16 v10, 0x1f

    const/16 v11, 0xa

    const-string v7, "area_two"

    move-object v6, p0

    .line 944
    invoke-virtual/range {v6 .. v11}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const/16 v3, 0xa

    const/16 v4, 0x1f

    const/16 v5, 0xa

    const-string v1, "area_one"

    move-object v0, p0

    .line 941
    invoke-virtual/range {v0 .. v5}, Lcom/nwd/dsp/uitls/DspManager;->sendHLData(Ljava/lang/String;IIII)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x634a604c -> :sswitch_3
        -0x634a4c66 -> :sswitch_2
        -0x605ba68 -> :sswitch_1
        0x46107b6c -> :sswitch_0
    .end sparse-switch
.end method

.method public sendInitData()V
    .locals 4

    .line 399
    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    move-result-object v0

    const-string v1, "sys.nwd.dsp.type"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dsp sendInitData setSystemProp sys.nwd.dsp.type=3, value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspManager;->getInstance()Lcom/nwd/dsp/uitls/DspManager;

    invoke-static {v1}, Lcom/nwd/dsp/uitls/DspManager;->getSystemProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", is10EQ:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {v0, v1, v2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->send32EQData([I[I[I)V

    .line 405
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->sendF2Data()V

    .line 408
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    invoke-virtual {p0, v0}, Lcom/nwd/dsp/uitls/DspManager;->sendDengxiangData(Z)V

    .line 414
    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->initDtsData()V

    return-void
.end method

.method public sendKingReset()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 926
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4e00\u4e2a\u6a21\u5f0f\u4e3a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "front_left"

    .line 928
    invoke-virtual {p0, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    const-string v0, "front_right"

    .line 929
    invoke-virtual {p0, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    const-string v0, "suf_left"

    .line 930
    invoke-virtual {p0, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    const-string v0, "suf_right"

    .line 931
    invoke-virtual {p0, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    const-string v0, "center_bugle"

    .line 932
    invoke-virtual {p0, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    const-string v0, "bass_bugle"

    .line 933
    invoke-virtual {p0, v0, v2}, Lcom/nwd/dsp/uitls/DspManager;->sendBugleDelayData(Ljava/lang/String;I)V

    return-void
.end method

.method public sendReset()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4e00\u4e2a\u6a21\u5f0f\u4e3a: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "standard"

    .line 920
    invoke-virtual {p0, v0}, Lcom/nwd/dsp/uitls/DspManager;->send32EQModeData(Ljava/lang/String;)V

    return-void
.end method

.method public sendRound3DDate(Z)V
    .locals 2

    .line 1019
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "round_switch"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 1020
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mRound_switch:Z

    .line 1021
    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendRound3DDate(Z)V

    return-void
.end method

.method public sendSiteData(II)V
    .locals 4

    const/16 v0, 0xf

    if-gt p1, v0, :cond_1

    if-le p2, v0, :cond_0

    goto :goto_0

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_fader"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 695
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v2, "key_balance"

    invoke-virtual {v0, v2, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    .line 696
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    .line 697
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, v2, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    .line 699
    invoke-static {p1, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendSiteData(II)V

    .line 700
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 701
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendSiteData mfader:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "dsp3-DspManager-ych"

    invoke-static {v1, v0}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    invoke-static {p1, p2}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public set10EQDate()V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "set10EQDate() \u51c6\u5907\u53bb\u6062\u590d\u8bb0\u5fc6\u6570\u636e"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "dsp3-DspManager-ych"

    .line 1198
    invoke-static {v2, v1}, Lcom/blankj/utilcode/util/LogUtils;->dTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1218
    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nwd/dsp/uitls/DspManager;->loadEqDataFromSD(Ljava/lang/String;)V

    .line 1220
    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v4, "key_bass_loud"

    invoke-virtual {v1, v4, v3}, Lcom/nwd/dsp/uitls/DspData;->getSpBoolen(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    .line 1222
    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const/4 v4, 0x7

    const-string v5, "key_fader"

    invoke-virtual {v1, v5, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    .line 1223
    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v5, "key_balance"

    invoke-virtual {v1, v5, v4}, Lcom/nwd/dsp/uitls/DspData;->getSpInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    .line 1231
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/nwd/dsp/uitls/SettingController;->getInstance(Landroid/content/Context;)Lcom/nwd/dsp/uitls/SettingController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nwd/dsp/uitls/SettingController;->getFeature()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set10EQDate() \u53bb\u6062\u590d\u8bb0\u5fc6\u6570\u636e mfader="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/nwd/dsp/uitls/DspManager;->getMfader()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->dTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1234
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU(Ljava/lang/String;)V

    .line 1237
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v1, "standard"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v1, "pop"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v1, "rock"

    .line 1238
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v1, "jazz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    const-string v1, "classic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1241
    sget-boolean v0, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    if-eqz v0, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU([I)V

    .line 1248
    :cond_0
    iget-boolean v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mdengxiang:Z

    invoke-static {v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU(Z)V

    .line 1251
    iget v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mfader:I

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mbalance:I

    invoke-static {v0, v1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU(II)V

    goto :goto_0

    :cond_1
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "set10EQDate() \u672a\u6062\u590d\u6570\u636e, \u670d\u52a1\u672a\u94fe\u63a5\u4e0a getFeature()==null"

    aput-object v1, v0, v3

    .line 1253
    invoke-static {v2, v0}, Lcom/blankj/utilcode/util/LogUtils;->dTag(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public setDtsSpData(Ljava/lang/String;I)V
    .locals 1

    .line 1852
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    invoke-virtual {v0, p1, p2}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;I)V

    return-void
.end method

.method public setMcenter_linkage(Z)V
    .locals 2

    .line 1583
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "center_linkage"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 1584
    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mcenter_linkage:Z

    return-void
.end method

.method public setMfront_linkage(Z)V
    .locals 2

    .line 1565
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "front_linkage"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 1566
    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mfront_linkage:Z

    return-void
.end method

.method public setMsuf_linkage(Z)V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "suf_linkage"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Z)V

    .line 1575
    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->msuf_linkage:Z

    return-void
.end method

.method public setOneGain(IILjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_1

    .line 601
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    array-length v1, v0

    if-ge p1, v1, :cond_1

    .line 602
    iput-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    .line 603
    aput p2, v0, p1

    .line 604
    iget-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    int-to-float v0, p2

    iget v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqDiff:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    aput v0, p3, p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u6807: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u539fG\u503c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", \u8f6c\u6362\u540e \u8bbe\u7f6eG\u503c: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    aget p2, p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "dsp3-DspManager-ych"

    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    aget p2, p2, p1

    iget-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    aget p3, p3, p1

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    aget v0, v0, p1

    invoke-static {p1, p2, p3, v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendOneEQData(IIII)V

    .line 607
    invoke-static {}, Lcom/nwd/dsp/uitls/DspData;->getInstance()Lcom/nwd/dsp/uitls/DspData;

    move-result-object p1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    iget-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/nwd/dsp/uitls/DspData;->saveEqAll(Ljava/lang/String;[I[I[I)V

    .line 608
    invoke-direct {p0}, Lcom/nwd/dsp/uitls/DspManager;->saveEqDataToSD()V

    .line 609
    invoke-static {}, Lcom/nwd/dsp/uitls/DspUtils;->is10EQ()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 610
    sget-boolean p1, Lcom/nwd/dsp/uitls/DspConstant;->IS_SEND_END:Z

    if-eqz p1, :cond_0

    .line 611
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGainOriginal:[I

    invoke-static {p1}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->writeDataToMCU([I)V

    .line 614
    :cond_0
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public setOneQValue(IILjava/lang/String;)V
    .locals 3

    if-ltz p1, :cond_0

    .line 588
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 589
    iput-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    .line 590
    aput p2, v0, p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0b\u6807: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  \u8bbe\u7f6eQ\u503c: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p3, v0

    const-string p2, "dsp3-DspManager-ych"

    invoke-static {p2, p3}, Lcom/blankj/utilcode/util/LogUtils;->eTag(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 592
    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    aget p2, p2, p1

    iget-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    aget p3, p3, p1

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    aget v0, v0, p1

    invoke-static {p1, p2, p3, v0}, Lcom/nwd/dsp/uitls/AudioProtocalUtil;->sendOneEQData(IIII)V

    .line 593
    invoke-static {}, Lcom/nwd/dsp/uitls/DspData;->getInstance()Lcom/nwd/dsp/uitls/DspData;

    move-result-object p1

    iget-object p2, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    iget-object p3, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/nwd/dsp/uitls/DspData;->saveEqAll(Ljava/lang/String;[I[I[I)V

    .line 594
    invoke-direct {p0}, Lcom/nwd/dsp/uitls/DspManager;->saveEqDataToSD()V

    .line 595
    iget-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSystemProp(Ljava/lang/String;)V
    .locals 2

    .line 1272
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    const-string v1, "persist.sys.dsp.eq"

    invoke-static {v0, v1, p1}, Lcom/nwd/kernel/utils/KernelUtils;->setSystemProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSystemProp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1278
    :try_start_0
    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/nwd/kernel/utils/KernelUtils;->setSystemProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1279
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1281
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setSystemProp error="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "dsp3-DspManager-ych"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setUsed_customize(Z)V
    .locals 0

    .line 1557
    iput-boolean p1, p0, Lcom/nwd/dsp/uitls/DspManager;->used_customize:Z

    return-void
.end method

.method public setmDsp10EQType(Ljava/lang/String;)V
    .locals 2

    .line 1349
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_eq_type"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    iput-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    return-void
.end method

.method public setmDspEQType(Ljava/lang/String;)V
    .locals 4

    .line 1342
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspData:Lcom/nwd/dsp/uitls/DspData;

    const-string v1, "key_eq_type"

    invoke-virtual {v0, v1, p1}, Lcom/nwd/dsp/uitls/DspData;->save(Ljava/lang/String;Ljava/lang/String;)V

    .line 1344
    iget-object v0, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqFrequence:[I

    invoke-static {v0}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqGain:[I

    iget-object v2, p0, Lcom/nwd/dsp/uitls/DspManager;->mEqQValue:[I

    invoke-static {v2}, Lcom/nwd/dsp/uitls/DspUtils;->intArrayToStr([I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "customize"

    invoke-static {v3, v0, v1, v2}, Lcom/nwd/dsp/uitls/LoadDataUtils;->saveEqDataToSD(Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)V

    .line 1345
    iput-object p1, p0, Lcom/nwd/dsp/uitls/DspManager;->mDspEQType:Ljava/lang/String;

    .line 1346
    invoke-virtual {p0, p1}, Lcom/nwd/dsp/uitls/DspManager;->setSystemProp(Ljava/lang/String;)V

    return-void
.end method
