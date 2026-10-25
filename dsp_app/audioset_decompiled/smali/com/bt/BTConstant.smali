.class public Lcom/bt/BTConstant;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bt/BTConstant$CallState;,
        Lcom/bt/BTConstant$AutoFeature;,
        Lcom/bt/BTConstant$CallLog;,
        Lcom/bt/BTConstant$DeviceFeature;,
        Lcom/bt/BTConstant$DeviceService;,
        Lcom/bt/BTConstant$DeviceClass;,
        Lcom/bt/BTConstant$MusicCommand;
    }
.end annotation


# static fields
.field public static final ACTION_A2DP_MUTE:Ljava/lang/String; = "com.bt.ACTION_A2DP_MUTE"

.field public static final ACTION_A2DP_ONLYMUTE:Ljava/lang/String; = "com.bt.ACTION_A2DP_ONLYMUTE"

.field public static final ACTION_A2DP_UNMUTE:Ljava/lang/String; = "com.bt.ACTION_A2DP_UNMUTE"

.field public static final ACTION_BT_NOT_ALIVE:Ljava/lang/String; = "com.bt.ACTION_BT_NOT_ALIVE"

.field public static final ACTION_CQ230_SERVICE:Ljava/lang/String; = "com.bt.ACTION_START_CQ230_SERVICE"

.field public static final ACTION_SERVICE:Ljava/lang/String; = "com.bt.ACTION_START_SERVICE"

.field public static final SOUND_CHANNEL_CAR:I = 0x0

.field public static final SOUND_CHANNEL_PHONE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
