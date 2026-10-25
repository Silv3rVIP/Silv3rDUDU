.class public Lcom/nwd/factory/service/FactorySettingManager;
.super Lcom/nwd/factory/service/FactoryFeature$Stub;

# interfaces
.implements Lcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;
.implements Lcom/nwd/factory/IExAndImport;
.implements Lcom/nwd/factory/IFactorySetting;
.implements Lcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;


# static fields
.field public static final ACTION_BACKCAR_CONFIG_UPDATE:Ljava/lang/String; = "com.nwd.action.ACTION_BACKCAR_CONFIG_UPDATE"

.field private static ACTION_UPDATE:Ljava/lang/String; = null

.field private static final ATTR_ATV_TYPE:Ljava/lang/String; = "atv_type"

.field private static ATTR_AUDIO_GAIN:[Ljava/lang/String; = null

.field private static final ATTR_AVDD:Ljava/lang/String; = "avdd"

.field private static final ATTR_BRIGHTNESS:Ljava/lang/String; = "brightness"

.field private static final ATTR_CARAUDIO_CHANNEL:Ljava/lang/String; = "caraudio_channel"

.field private static final ATTR_CARAUX_SWITCH:Ljava/lang/String; = "caraux_switch"

.field private static final ATTR_COLOR:Ljava/lang/String; = "color"

.field private static final ATTR_CONTRAST:Ljava/lang/String; = "contrast"

.field private static final ATTR_DTV_TYPE:Ljava/lang/String; = "dtv_type"

.field private static final ATTR_DVR_TYPE:Ljava/lang/String; = "dvr_type"

.field private static final ATTR_FXP_TYPE:Ljava/lang/String; = "fxp_type"

.field private static final ATTR_MIN_BACKLIGHT:Ljava/lang/String; = "min_backlight"

.field private static final ATTR_PANEL_TYPE:Ljava/lang/String; = "panel_type"

.field private static final ATTR_RADIO_AM_SENSITIVITY:Ljava/lang/String; = "radio_am_sensitivity"

.field private static final ATTR_RADIO_LIGHT_SENSITIVITY:Ljava/lang/String; = "radio_light_sensitivity"

.field private static final ATTR_RADIO_SENSITIVITY:Ljava/lang/String; = "radio_sensitivity"

.field private static final ATTR_RADIO_TYPE:Ljava/lang/String; = "radio_type"

.field private static final ATTR_SATURATION:Ljava/lang/String; = "saturation"

.field private static final ATTR_SPEAKER_SWITCH:Ljava/lang/String; = "speaker_switch"

.field private static final ATTR_THREE_LAMP_SETTING:Ljava/lang/String; = "three_lamp_setting_state"

.field private static final ATTR_TURBINE_VALUE:Ljava/lang/String; = "turbine_state"

.field private static final ATTR_UI_STYLE:Ljava/lang/String; = "ui_style"

.field private static final ATTR_USB1_MODE:Ljava/lang/String; = "usb_one_mode"

.field private static final ATTR_USB2_MODE:Ljava/lang/String; = "usb_two_mode"

.field private static final ATTR_USB3_MODE:Ljava/lang/String; = "usb_three_mode"

.field private static final ATTR_VCOM:Ljava/lang/String; = "vcom"

.field private static final ATTR_VOICE_ANALYZE:Ljava/lang/String; = "voice_analyze_state"

.field public static final KEY_ACCELERATE_BACKCAR:Ljava/lang/String; = "accelerate_backcar"

.field public static final KEY_AGC_ENABLE:Ljava/lang/String; = "key_agc_enable"

.field public static final KEY_AUDIO_GAIN_KEY:Ljava/lang/String; = "key_audio_gain"

.field public static final KEY_AUDIO_PHASE:Ljava/lang/String; = "persist.nwd.audiophase"

.field public static final KEY_AVM_ENABLE:Ljava/lang/String; = "key_avm_enable"

.field public static final KEY_BACKCAR_FULLSCREEN:Ljava/lang/String; = "key_backcar_fullscreen"

.field public static final KEY_BACKCAR_SHOW_BLACK_TIME:Ljava/lang/String; = "backcar_show_black_time"

.field public static final KEY_BACKCAR_VIDEO_MODE:Ljava/lang/String; = "key_backcar_video_mode"

.field public static final KEY_BOOT_MENU:Ljava/lang/String; = "key_boot_menu"

.field public static final KEY_BT_MIC_GAIN:Ljava/lang/String; = "key_bt_mic_gain"

.field public static final KEY_CAN_AUDIO_CHANNEL:Ljava/lang/String; = "key_can_audio_channel"

.field public static final KEY_CARPLAY_INSTALL_ENABLE:Ljava/lang/String; = "carplay_install_enable"

.field public static final KEY_CAR_ASS:Ljava/lang/String; = "key_car_ass"

.field public static final KEY_CAR_DOOR_LOCK_DISTURB:Ljava/lang/String; = "car_door_lock_disturb"

.field public static final KEY_CAR_VIDEO_MODE:Ljava/lang/String; = "key_car_video_mode"

.field public static final KEY_DEFAULT_BT_NAME:Ljava/lang/String; = "default_bt_name"

.field public static final KEY_DELAY_INIT_LCD:Ljava/lang/String; = "key_delay_init_lcd"

.field public static final KEY_DVR_TYPE:Ljava/lang/String; = "key_dvr_type"

.field public static final KEY_FXP_TOLERANCE:Ljava/lang/String; = "key_fxp_tolerance"

.field public static final KEY_HD_BACKCAR_STANDARD:Ljava/lang/String; = "key_hd_backcar_standard"

.field public static final KEY_I2S_CONFIG:Ljava/lang/String; = "persist.sys.i2s"

.field public static final KEY_IPS_DELAY_TIME:Ljava/lang/String; = "ips_delay_time"

.field public static final KEY_LCD_BIT:Ljava/lang/String; = "key_lcd_bit"

.field public static final KEY_LOW_POWER_AMPLIFIER:Ljava/lang/String; = "key_low_power_amplifier"

.field public static final KEY_LOW_VOLTAGE_TIME:Ljava/lang/String; = "low_voltage_time"

.field public static final KEY_PROPERTIES_BACKCAR_DI_ENABLE:Ljava/lang/String; = "persist.sys.backcar.di.enable"

.field public static final KEY_PROPERTIES_HD_BACKCAR:Ljava/lang/String; = "persist.sys.nwd.hacamera.ctrl"

.field public static final KEY_PROPERTIES_INSTALL_LIMITED:Ljava/lang/String; = "persist.sys.install.enable"

.field public static final KEY_PROPERTIES_MW:Ljava/lang/String; = "persist.sys.nwd.mw.ctrl"

.field public static final KEY_PROPERTIES_MW_R2:Ljava/lang/String; = "persist.sys.nwd.mw.module"

.field public static final KEY_PROPERTIES_SCREEN_ORIENTATION:Ljava/lang/String; = "persist.panel.orientation"

.field public static final KEY_PROPERTIES_SDCARD:Ljava/lang/String; = "persist.sys.tfpath.flag"

.field public static final KEY_PROPERTIES_SIMNAME:Ljava/lang/String; = "persist.sys.activated.simname"

.field public static final KEY_PROPERTIES_TVOUT_STD:Ljava/lang/String; = "persist.sys.nwd.tve.std"

.field public static final KEY_RADIO_AM_SENSITIVITY:Ljava/lang/String; = "key_radio_am_sensitivity"

.field public static final KEY_RADIO_ANTENNA:Ljava/lang/String; = "key_radio_antenna"

.field public static final KEY_RADIO_AREA:Ljava/lang/String; = "key_radio_area"

.field public static final KEY_RADIO_LIGHT_SENSITIVITY:Ljava/lang/String; = "key_radio_light_sensitivity"

.field public static final KEY_RADIO_SENSITIVITY:Ljava/lang/String; = "key_radio_sensitivity"

.field public static final KEY_RADIO_TYPE:Ljava/lang/String; = "key_radio_type"

.field public static final KEY_SLEEP_POWER_OFF:Ljava/lang/String; = "sleep_power_off"

.field public static final KEY_SMOOTH_LEVEL:Ljava/lang/String; = "smooth_level"

.field public static final KEY_TP_ESD:Ljava/lang/String; = "key_tp_esd"

.field public static final KEY_TVOUT_ENABLE:Ljava/lang/String; = "cvbs_out_enble"

.field public static final KEY_TVOUT_STANDARD:Ljava/lang/String; = "key_tvout_standard"

.field public static final KEY_TV_AUDIO_CHANNEL:Ljava/lang/String; = "key_tv_audio_channel"

.field public static final KEY_TV_MODULE:Ljava/lang/String; = "tv_module"

.field public static final KEY_UDISK3_MODE:Ljava/lang/String; = "key_udisk3_mode"

.field public static final KEY_UDISKH_MODE:Ljava/lang/String; = "key_udiskh_mode"

.field public static final KEY_UDISK_MODE:Ljava/lang/String; = "key_udisk_mode"

.field private static final LOG:Lcom/android/utils/log/JLog;

.field private static MSG_FACTORY_REBOOT:I = 0x0

.field private static MSG_IMPORT_CONFIG:I = 0x0

.field private static final TAG__SETTING:Ljava/lang/String; = "other_factory_setting"

.field private static UI_STYLE_PATH:Ljava/lang/String;

.field public static UNINSTALL_CONFIG_PATH:Ljava/lang/String;

.field private static instance:Lcom/nwd/factory/service/FactorySettingManager;

.field private static mAccelerateBackcar:I

.field public static mAmpState:I

.field private static mAssistAdjust:I

.field private static mAudioPhase:I

.field private static mAvmEnable:I

.field private static mBackcarAgcEnable:Ljava/lang/String;

.field private static mBackcarDiEnable:Z

.field private static mBackcarFullScreen:I

.field private static mBackcarVideoMode:Ljava/lang/String;

.field private static mBootMenu:Ljava/lang/String;

.field private static mBtDefaultName:Ljava/lang/String;

.field private static mBtMicGain:I

.field private static mCameraConfig:I

.field private static mCarAss:I

.field public static mCarAudioChannel:I

.field private static mCarAuxSwitch:I

.field private static mCarDoorDisturb:I

.field private static mCarVideoMode:Ljava/lang/String;

.field private static mChangeSDCard:Ljava/lang/String;

.field private static mCommModule:Ljava/lang/String;

.field private static mConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/nwd/factory/IExAndImport;",
            ">;"
        }
    .end annotation
.end field

.field private static mDTvModuleStyle:B

.field public static mDVRModuleStyle:B

.field public static mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

.field private static mDelayInitLcd:I

.field private static mDoubleMic:Ljava/lang/String;

.field private static mDvrSavePath:Ljava/lang/String;

.field private static mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

.field private static mFilterPath:I

.field public static mGainValue:[I

.field private static mGsensorEnable:Z

.field private static mHDBackCarTpye:I

.field private static mHDBackcarStandard:I

.field private static mI2s:Ljava/lang/String;

.field private static mIpsDelayTime:I

.field private static mLcdBitMode:I

.field private static mLightSensitiveSwitch:I

.field private static mLimitInstall:I

.field private static mLogoSetupSwitch:Ljava/lang/String;

.field private static mLongScreenRotateEnable:Z

.field private static mLowVoltageTime:I

.field private static mMcuFxpTolerance:I

.field private static mMicGain:I

.field private static mMinBackLight:I

.field private static mQRCodeActivate:Ljava/lang/String;

.field public static mRadioAMSensitivity:B

.field public static mRadioAntennaState:I

.field private static mRadioArea:B

.field public static mRadioLightSensitivity:B

.field public static mRadioModuleStyle:B

.field public static mRadioSensitivity:B

.field private static mRightViewCameraId:I

.field private static mShowBackCarBlackTime:I

.field private static mSimSwitch:Ljava/lang/String;

.field private static mSleepPowerOff:I

.field private static mSmoothLevel:I

.field private static mSpeakerSwitch:I

.field private static mThreeLampSettingOpen:I

.field private static mTpEsd:I

.field private static mTvAudioChannel:I

.field private static mTvModuleStyle:B

.field private static mTvOutEnable:I

.field private static mTvOutStandard:Ljava/lang/String;

.field private static mTvVideoChannel:I

.field private static mUartFunMode:I

.field private static mUpdatePath:Ljava/lang/String;

.field private static mUsbMode:[I

.field private static mVoiceActivateOpen:I

.field private static mVoiceAnalyzeOpen:I

.field private static mWLDvrPackName:Ljava/lang/String;

.field private static mXXRadar:I

.field private static mbForeverImport:Z

.field private static mbImport:Z

.field public static mbImported:Z

.field public static mbPhoneConnectNewMode:Z

.field private static mbTurbineOpen:[Z

.field private static mstrFxpPath:Ljava/lang/String;

.field private static mstrPanelPath:Ljava/lang/String;

.field private static mstrRemoteControlPath:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

.field private mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

.field private mPlatform:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveThread:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/android/utils/log/JLog;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const-string v3, "FactorySettingManager"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "none"

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    const/16 v3, 0xe

    new-array v4, v3, [I

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    new-array v4, v1, [Z

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mbTurbineOpen:[Z

    const-string v4, "/mnt/udiskh"

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    const-string v4, "0"

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    new-array v0, v1, [I

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    const/16 v0, 0x32

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mMinBackLight:I

    sput v2, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    const/4 v5, 0x4

    sput v5, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    const-string v6, "SIM1"

    sput-object v6, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    const-string v0, "PAL"

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mbPhoneConnectNewMode:Z

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "navi_gain"

    aput-object v4, v3, v0

    const-string v4, "bt_gain"

    aput-object v4, v3, v2

    const-string v4, "dvd_gain"

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "tv_gain"

    aput-object v4, v3, v1

    const-string v1, "ipod_gain"

    aput-object v1, v3, v5

    const/4 v1, 0x5

    const-string v4, "aux_gain"

    aput-object v4, v3, v1

    const/4 v1, 0x6

    const-string v4, "radio_gain"

    aput-object v4, v3, v1

    const/4 v1, 0x7

    const-string v4, "cdc_gain"

    aput-object v4, v3, v1

    const/16 v1, 0x8

    const-string v4, "mp5_gain"

    aput-object v4, v3, v1

    const/16 v1, 0x9

    const-string v4, "aux2_gain"

    aput-object v4, v3, v1

    const/16 v1, 0xa

    const-string v4, "mhl_gain"

    aput-object v4, v3, v1

    const/16 v1, 0xb

    const-string v4, "g3_gain"

    aput-object v4, v3, v1

    const/16 v1, 0xc

    const-string v4, "canusb_gain"

    aput-object v4, v3, v1

    const/16 v1, 0xd

    const-string v4, "onstar_gain"

    aput-object v4, v3, v1

    sput-object v3, Lcom/nwd/factory/service/FactorySettingManager;->ATTR_AUDIO_GAIN:[Ljava/lang/String;

    const-string v1, "com.nwd.factory.update"

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->ACTION_UPDATE:Ljava/lang/String;

    sput v2, Lcom/nwd/factory/service/FactorySettingManager;->MSG_IMPORT_CONFIG:I

    sput v6, Lcom/nwd/factory/service/FactorySettingManager;->MSG_FACTORY_REBOOT:I

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mbImport:Z

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mbForeverImport:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/launcher_style"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->UI_STYLE_PATH:Ljava/lang/String;

    const-string v0, "/cache/Carkit_Uninstall.ini"

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->UNINSTALL_CONFIG_PATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/nwd/factory/service/FactoryFeature$Stub;-><init>()V

    new-instance v0, Lcom/nwd/factory/service/FactorySettingManager$2;

    invoke-direct {v0, p0}, Lcom/nwd/factory/service/FactorySettingManager$2;-><init>(Lcom/nwd/factory/service/FactorySettingManager;)V

    iput-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/nwd/factory/service/FactorySettingManager$3;

    invoke-direct {v0, p0}, Lcom/nwd/factory/service/FactorySettingManager$3;-><init>(Lcom/nwd/factory/service/FactorySettingManager;)V

    iput-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/FeatureSettingUtil;->getInstance()Lcom/nwd/factory/FeatureSettingUtil;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/BackcarSettingUtil;->getInstance()Lcom/nwd/factory/BackcarSettingUtil;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    invoke-static {}, Lcom/nwd/factory/RadioSettingUtil;->getInstance()Lcom/nwd/factory/RadioSettingUtil;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.nwd.action.ACTION_BACKCAR_CONFIG_UPDATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->loadUartConfig()V

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result p1

    iput p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPlatform:I

    new-instance p1, Lcom/nwd/factory/service/PanelStudyManager;

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/nwd/factory/service/PanelStudyManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

    return-void
.end method

.method public static IsFileExist(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/app"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method static synthetic access$000()Lcom/android/utils/log/JLog;
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/nwd/factory/service/FactorySettingManager;)Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 0

    iget-object p0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object p0
.end method

.method static synthetic access$1000()I
    .locals 1

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mSpeakerSwitch:I

    return v0
.end method

.method static synthetic access$1100()B
    .locals 1

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioArea:B

    return v0
.end method

.method static synthetic access$1202(Lcom/nwd/factory/service/FactorySettingManager;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mSaveThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$1300()I
    .locals 1

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->MSG_IMPORT_CONFIG:I

    return v0
.end method

.method static synthetic access$1400()I
    .locals 1

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->MSG_FACTORY_REBOOT:I

    return v0
.end method

.method static synthetic access$1500()[I
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    return-object v0
.end method

.method static synthetic access$1600()Lcom/nwd/factory/config/FactoryConfigSetting;
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/nwd/factory/config/FactoryConfigSetting;)Lcom/nwd/factory/config/FactoryConfigSetting;
    .locals 0

    sput-object p0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    return-object p0
.end method

.method static synthetic access$200(Lcom/nwd/factory/service/FactorySettingManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300()B
    .locals 1

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvModuleStyle:B

    return v0
.end method

.method static synthetic access$400()B
    .locals 1

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mDTvModuleStyle:B

    return v0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800()[Z
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mbTurbineOpen:[Z

    return-object v0
.end method

.method static synthetic access$900()I
    .locals 1

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    return v0
.end method

.method public static clearAppConfig()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/appconfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/nwdappconfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method public static clearFwConfig()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/appconfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static closeSpecial360(Landroid/content/Context;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    const-string v2, "persist.sys.nwd.mono360.enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_prop_value"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static getCorrectHDBackcarType(I)I
    .locals 5

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->isSupportAutoCheck()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    const-string v0, "A20CarkitBackcarService"

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/nwd/factory/service/HardwareUtils;->getCameraICType()Ljava/lang/String;

    move-result-object v0

    const-string v4, "none"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x7

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    if-ne v0, v3, :cond_0

    if-ne p0, v2, :cond_3

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    if-ne v0, v4, :cond_3

    if-ne p0, v3, :cond_3

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    if-ne v0, v3, :cond_2

    const/4 p0, 0x5

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    if-ne v0, v4, :cond_3

    const/4 p0, 0x3

    :cond_3
    :goto_1
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCorrectHDBackcarType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return p0
.end method

.method public static getDefaultDisableGoogle()I
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/config/app/Carkit_Uninstall.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->readFileInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getHwVersion()I
    .locals 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/sw-board-ctrl/cam_ver"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v3, "utf-8"

    invoke-direct {v0, v1, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "hexStr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {v4}, Lcom/nwd/factory/service/FactorySettingManager;->hexToInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/nwd/factory/service/FactorySettingManager;
    .locals 2

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->instance:Lcom/nwd/factory/service/FactorySettingManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nwd/factory/service/FactorySettingManager;

    invoke-direct {v0, p0}, Lcom/nwd/factory/service/FactorySettingManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->instance:Lcom/nwd/factory/service/FactorySettingManager;

    :cond_0
    sget-object p0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FactorySettingManager getInstance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->instance:Lcom/nwd/factory/service/FactorySettingManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object p0, Lcom/nwd/factory/service/FactorySettingManager;->instance:Lcom/nwd/factory/service/FactorySettingManager;

    return-object p0
.end method

.method public static getIsSupportArmFM()I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Landroid/os/Hardware;

    const-string v2, "isArmFmSupported"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v2, v1

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_1
    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isArmFmSupported="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ltz v2, :cond_2

    const/4 v1, 0x1

    if-le v2, v1, :cond_1

    goto :goto_1

    :catch_0
    :cond_1
    move v0, v2

    :catch_1
    :cond_2
    :goto_1
    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIsSupportArmFM "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v0
.end method

.method public static getMcuType()I
    .locals 5

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v2, "getMcuType"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_0
    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMcuType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static getTfcardExchange(I)I
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/nwd/kernel/utils/KernelUtils;->isNwdJsonInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "MODULE"

    const-string v2, "external_storage"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ACTION"

    const-string v2, "get"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TF_EXCHANGE"

    const-string v2, "query"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->parseJson(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "getTfcardExchange"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTfcardExchange="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gez p0, :cond_1

    const/4 p0, 0x0

    :catch_0
    :cond_1
    :goto_0
    return p0
.end method

.method public static hexToInt(Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    sget-object p0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not install"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static isArmStudyPanel(Landroid/content/Context;)Z
    .locals 4

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->getMcuType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :goto_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "mcu_version"

    invoke-static {p0, v0}, Lcom/nwd/kernel/source/SettingTableKey;->getStringValue(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "V2.0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "-20[0-9][0-9][0-9][0-9][0-9][0-9]-"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "-"

    const-string v3, " "

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const v0, 0x13417f0

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isArmStudyPanel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static isEnableGoogleSetting()Z
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "/app/UartConfig.ini"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "google_setting"

    const-string v4, "0"

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEnableGoogleSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static isHave360(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "com.nwd.carkit360camera"

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    const-string v0, "BirdviewHD"

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->IsFileExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.ivicar.avm"

    invoke-static {p0, v0}, Lcom/nwd/factory/service/FactorySettingManager;->isAppInstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result p0

    const/16 v0, 0xa

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result p0

    const/16 v0, 0xd

    if-ne p0, v0, :cond_3

    const-string p0, "/sys/kernel/nwd_config/car_360_board"

    invoke-static {p0}, Lcom/nwd/factory/service/HardwareUtils;->getOsNodeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_3
    :goto_1
    sget-object p0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isHave360="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v1
.end method

.method public static isMcuFxpFile(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMcuFxpFile, mstrPanelPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v2, 0x2

    new-array v2, v2, [B

    invoke-virtual {p0, v2}, Ljava/io/BufferedInputStream;->read([B)I

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMcuFxpFile, mstrValue = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/utils/decode/BinHexConverter;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    const/16 v5, 0x55

    if-eq v4, v5, :cond_0

    aget-byte v2, v2, v1

    const/16 v4, 0xaa

    if-eq v2, v4, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-virtual {p0}, Ljava/io/BufferedInputStream;->close()V

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public static isShowGoogleSwitch()Z
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/config/app/Carkit_Uninstall.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->readFileInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSupportAutoCheck()Z
    .locals 4

    invoke-static {}, Lcom/nwd/factory/service/HardwareUtils;->getCameraICType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportAutoCheck="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return v0
.end method

.method public static isSupportHD2()Z
    .locals 3

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    const-string v1, "K2151"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v2, 0xd

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_3

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v2, 0x11

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    const-string v0, "/sys/devices/platform/nwdpower/hw_ver"

    invoke-static {v0}, Lcom/nwd/factory/service/HardwareUtils;->getOsNodeIntegerValue(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1
.end method

.method public static loadUartConfig()V
    .locals 6

    const-string v0, "carplay_install_enable"

    const-string v1, "default_bt_name"

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/app/UartConfig.ini"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v3, "key_factory_import"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    sput-boolean v4, Lcom/nwd/factory/service/FactorySettingManager;->mbForeverImport:Z

    :cond_0
    invoke-virtual {v2, v1}, Ljava/util/Properties;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v1

    const/4 v3, 0x7

    if-ne v1, v3, :cond_3

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getSubPlatform()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_2

    const-string v1, "SL8541,SL8541"

    goto :goto_0

    :cond_2
    const-string v1, "sp9853i_1h10_vmm,sp9853i_1h10_vmm"

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    const-string v1, "CarBT,CarBT"

    goto :goto_0

    :cond_4
    const-string v1, "BC8-Android,BC8-Android"

    goto :goto_0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v2, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mbPhoneConnectNewMode:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static parseJson(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-class v0, Landroid/os/Hardware;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "parseJson"

    invoke-static {v0, p0, v2, v1}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private queryUsbMode()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.ACTION_QUERY_USB_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static readFileInfo(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance p0, Ljava/io/InputStreamReader;

    const-string v2, "utf-8"

    invoke-direct {p0, v0, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {p0}, Ljava/io/InputStreamReader;->close()V

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private readUIStyleFile(Ljava/io/File;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_1
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p1, "one"

    return-object p1
.end method

.method public static saveAppConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-string v1, "/cache/appconfig.ini"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveAppConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveNwdAppConfig(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-string v1, "/cache/nwdappconfig.ini"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v0, p0, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveNwdAppConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static saveUnInstallConfig(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    const-string v2, "---------------------------------------------"

    :try_start_0
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->loadUartConfig()V

    new-instance v3, Ljava/io/File;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->UNINSTALL_CONFIG_PATH:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-direct {v4}, Lcom/nwd/factory/config/FactoryConfigSetting;-><init>()V

    const-string v5, "#Boot does not install the application package name\r\n"

    const/4 v6, 0x4

    invoke-static {v1, v6}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "\r\n"

    if-nez v7, :cond_0

    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.dvd"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v9, "dvd is open"

    invoke-virtual {v7, v9}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    const/16 v7, 0x1000

    invoke-static {v1, v7}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.auxin"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    const/16 v7, 0x4000

    invoke-static {v1, v7}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.auxin.rear"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    const/16 v7, 0x10

    invoke-static {v1, v7}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "key_360_backcar_state"

    const-string v10, "com.nwd.preview360"

    const-string v11, "com.nwd.hdback.catchpic"

    const-string v12, "com.nwd.carkithd2cam"

    const-string v13, "com.nwd.monoguidebook"

    const-string v14, "com.nwd.carkit360camera"

    const/4 v15, 0x0

    if-nez v7, :cond_3

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/nwd/factory/service/FactorySettingManager;->closeSpecial360(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    :goto_1
    invoke-static {v6, v9, v15}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    goto/16 :goto_3

    :cond_3
    invoke-static/range {p0 .. p0}, Lcom/nwd/factory/service/FactorySettingManager;->isHave360(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "uart_fun_mode"

    invoke-virtual {v4, v7, v15}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v6, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/nwd/factory/service/FactorySettingManager;->closeSpecial360(Landroid/content/Context;)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    goto :goto_1

    :cond_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :goto_3
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->isSupportHD2()Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v7, "com.nwd.backcar"

    if-eqz v6, :cond_7

    const/high16 v6, 0x80000

    :try_start_3
    invoke-static {v1, v6}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/nwd/factory/service/FactorySettingManager;->isHave360(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v6, "carkit360camera"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_5

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_5
    const/16 v6, 0x100

    invoke-static {v1, v6}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.usb.ipod"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.android.ipod"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_9
    const/16 v6, 0x2000

    invoke-static {v1, v6}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v9

    if-nez v9, :cond_a

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.tv"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_a
    const v9, 0x8000

    invoke-static {v1, v9}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v9

    if-nez v9, :cond_b

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.dvr.nomal"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.dvr.service"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    const/16 v9, 0x200

    invoke-static {v1, v9}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v9

    if-nez v9, :cond_c

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.dvr"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_c
    invoke-static {}, Lcom/nwd/factory/config/XMLConfig;->getInstance()Lcom/nwd/factory/config/XMLConfig;

    move-result-object v9

    const-string v10, "module_settings"

    invoke-virtual {v9, v10}, Lcom/nwd/factory/config/XMLConfig;->GetFunValue(Ljava/lang/String;)J

    move-result-wide v9

    const/4 v11, 0x7

    shr-long/2addr v9, v11

    const-wide/16 v11, 0x1

    and-long/2addr v9, v11

    cmp-long v16, v9, v11

    if-nez v16, :cond_12

    const/16 v9, 0x400

    invoke-static {v1, v9}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, "com.cardroid.xxvideo"

    const-string v11, "com.synmoon.usbcamera"

    const-string v12, "com.anwensoft.cardvr"

    const-string v15, "com.serenegiant.zxcam"

    const-string v6, "com.nwd.dvr.nomal_gkw"

    if-nez v9, :cond_d

    :try_start_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_7

    :cond_d
    invoke-virtual {v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->getWLDvrPackName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v17, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_6

    :cond_e
    move-object/from16 v17, v2

    :goto_6
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_f
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_10
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :cond_11
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_12
    :goto_7
    move-object/from16 v17, v2

    :cond_13
    :goto_8
    const/16 v2, 0x40

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_14

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.tv2"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_14
    const/16 v6, 0x80

    invoke-static {v1, v6}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_15

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.movon.fcw"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_15
    const/16 v6, 0x20

    invoke-static {v1, v6}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v6

    if-nez v6, :cond_16

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.android.tmpsservice"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.tpms"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_16
    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_17

    const/16 v2, 0x2000

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_17

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.carkittvservice"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_17
    const-string v2, "persist.sys.nwd.mw.ctrl"

    const-string v6, "none"

    invoke-virtual {v4, v2, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "WM_AW4G"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.nwd.update"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_18
    const/high16 v2, 0x20000

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "com.sjs.vrbackcarapp"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_9

    :cond_19
    const-string v2, "VRBackCarApp"

    invoke-static {v2}, Lcom/nwd/factory/service/FactorySettingManager;->IsFileExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p0 .. p0}, Lcom/nwd/factory/service/FactorySettingManager;->closeSpecial360(Landroid/content/Context;)V

    :cond_1a
    :goto_9
    const-string v2, "key_xx_radar"

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.nwd.radarservice"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1b
    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.nwd.dvr.front"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "key_google_disable"

    const/4 v6, 0x0

    invoke-static {v2, v4, v6}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.android.chrome"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.gms"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.android.vending"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.tts"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.gsf"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.apps.maps"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.google.android.googlequicksearchbox:search"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1d
    sget-boolean v2, Lcom/nwd/factory/service/FactorySettingManager;->mbPhoneConnectNewMode:Z

    if-nez v2, :cond_21

    const/16 v2, 0x800

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.baidu.carlifevehicle"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1e
    const/high16 v2, 0x40000

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "com.zjinnova.zlink"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    :cond_1f
    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v4, "persist.sys.nwd.support.didisrv"

    if-nez v2, :cond_20

    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "net.easyconn"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "com.didi365.miudrive.navi"

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v2, "0"

    :goto_a
    invoke-static {v1, v4, v2}, Lcom/nwd/factory/service/FactorySettingManager;->setSystemProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :cond_20
    const-string v2, "1"

    goto :goto_a

    :cond_21
    :goto_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    const-string v4, "/data/smallota/delete_package_list2.txt"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/nwd/factory/service/FactorySettingManager;->readFileInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/nwd/factory/service/FactorySettingManager;->readFileInfo(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v5, "---------------original----------------------"

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v4, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    move-object/from16 v5, v17

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_22
    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v4, "-------------------new-----------------------"

    invoke-virtual {v2, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v2, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v2, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/OutputStreamWriter;

    const-string v4, "UTF-8"

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/OutputStreamWriter;->write([C)V

    :cond_23
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->UNINSTALL_CONFIG_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_24
    :goto_c
    return-void
.end method

.method public static set360ViewFunc(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set360ViewFunc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Lcom/nwd/app/NwdDeviceConfig;

    const-string v1, "set360ViewFunc"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static set6502configenable(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set6502configenable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "set6502configenable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setAudioGainArm(II)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAudioGainArm, type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioAreaArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-static {v0, v1, v3, v4}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setCSIconfig(I)V
    .locals 6

    invoke-static {p0}, Lcom/nwd/factory/service/FactorySettingManager;->getCorrectHDBackcarType(I)I

    move-result p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCSIconfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setCSIconfig"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setDVRModuleArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDVRModuleArm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setDVRModuleArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setFREVConfig(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFREVConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setFREVConfig"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setI2SConfig(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setI2SConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setI2SConfig"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setLimitInstall(Landroid/content/Context;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    const-string v2, "persist.sys.install.enable"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_prop_value"

    if-lez p1, :cond_0

    const-string p1, "false"

    goto :goto_0

    :cond_0
    const-string p1, "true"

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setLowPowerAmplifier(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLowPowerAmplifier, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setLowPowerAmplifier"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setMicConfig(Landroid/content/Context;I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicConfig "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setMicConfig"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ret="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    const-string v2, "persist.sys.nwd.double.mic"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_prop_value"

    if-lez p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setMicGain(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMicGain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setMicGain"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setMwCtrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "WM_R2"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "WM_AW4G"

    const-string v3, "persist.sys.nwd.mw.module"

    const-string v4, "extra_prop_value"

    const-string v5, "extra_prop_name"

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object p1, v2

    goto :goto_0

    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    const-string v1, "persist.sys.nwd.mw.ctrl"

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Lcom/nwd/factory/service/HardwareUtils;->set4g_tfconfigenable(I)V

    return-void
.end method

.method public static setRadioAMSensitivityArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioAMSensitivityArm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioAMSensitivityArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setRadioAntennaArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioAntennaArm, value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioAntennaArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setRadioAreaArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioAreaArm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioAreaArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setRadioLightSensitivityArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioLightSensitivityArm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioLightSensitivityArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setRadioModuleArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioModuleArm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioModuleArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setRadioSensitivityArm(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioSensitivityArm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setRadioSensitivityArm"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setScreenOrientation(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 8

    const-string v0, "90"

    const-string v1, "persist.panel.orientation"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.boot.nwd.orientation"

    const/4 v4, -0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ro.boot.nwd.orientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "persist.panel.orientation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v4, "180"

    const-string v5, "0"

    const-string v6, "1"

    if-ltz v3, :cond_2

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xb4

    if-ge v3, v0, :cond_0

    add-int/2addr v3, v0

    goto :goto_0

    :cond_0
    sub-int/2addr v3, v0

    :cond_1
    :goto_0
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "270"

    goto :goto_2

    :cond_4
    :goto_1
    move-object v0, v4

    goto :goto_2

    :cond_5
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-object v0, v5

    :cond_7
    :goto_2
    const/4 v3, 0x1

    if-eqz p2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "nwd_logo_reset"

    invoke-static {v4, v5, v3}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v5, "set nwd_logo_reset 1"

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v1, v0}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set persist.panel.orientation "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "extra_prop_name"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "extra_prop_value"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    const-string v5, "com.nwd.factory.setting"

    const-string v7, "com.nwd.factory.logo.RestoreLogoService"

    invoke-direct {v4, v5, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    xor-int/2addr p2, v3

    const-string v3, "extra_update_logo"

    invoke-virtual {v2, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "extra_update_from"

    const-string v3, "com.nwd.setting.service"

    invoke-virtual {v2, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_9
    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-static {v1, v0}, Lcom/nwd/factory/service/FactorySettingManager;->saveAppConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->clearFwConfig()V

    :goto_3
    return-void
.end method

.method public static setSimSwitch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimSwitch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    const-string v0, "SIM2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "setDefaultSimForData"

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    const-class p1, Lcom/nwd/app/NwdDeviceConfig;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v5, v3, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v2

    invoke-static {p1, v0, v4, v5}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-class p1, Lcom/nwd/app/NwdDeviceConfig;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {p1, v0, v4, v3}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.action.ACTION_NWD_SIM_SETTING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_sim_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x1f40

    const-string v1, "extra_delay_time"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public static setSystemProp(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_prop_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "extra_prop_value"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setTouchScreenEsd(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTouchScreenEsd "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/nwd/kernel/utils/KernelUtils;->isNwdJsonInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "MODULE"

    const-string v2, "tp"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ACTION"

    const-string v2, "control"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ESD"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->parseJson(Lorg/json/JSONObject;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setTouchScreenEsd"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private setUsbMode(II)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.nwd.ACTION_SET_USB_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extra_usb_mode"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "extra_usb_index"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setavmconfigenable(I)V
    .locals 6

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setavmconfigenable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setavmconfigenable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public static setdvdconfigenable(Z)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setdvdconfigenable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setdvdconfigenable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static setgsensorenable(Z)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setgsensorenable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    const-class v0, Landroid/os/Hardware;

    const-string v1, "setgsensorenable"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static settfcardConfig(I)V
    .locals 6

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTfcardExchange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/nwd/kernel/utils/KernelUtils;->isNwdJsonInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "MODULE"

    const-string v2, "external_storage"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ACTION"

    const-string v2, "control"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "TF_EXCHANGE"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->parseJson(Lorg/json/JSONObject;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-class v0, Landroid/os/Hardware;

    const-string v1, "setTfcardExchange"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/android/utils/utils/ReflectUtil;->invokeStatic(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private writeUIStyleFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance p1, Ljava/io/FileOutputStream;

    const-string v0, "/mnt/sdcard/launcher_style"

    invoke-direct {p1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/PrintStream;

    invoke-direct {v0, p1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method


# virtual methods
.method public QueryFactoryInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "REMOTE_CONTROL_PATH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    return-object p1

    :cond_0
    const-string v0, "RADIO_AREA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    sget-byte v1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioArea:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%s"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "CHANGE_OS_SDCARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string v0, "SET_I2S_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string v0, "assistline_adjust_open"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->isAssistLineAdjustOpen()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const-string v0, "SET_VOICE_ACTIVATE_OPEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->isVoiceAnalyzeActivate()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    const-string v0, "SET_CARAUDIO_CHANNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAudioChannel:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    const-string v0, "SET_CARAUX_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_7
    const-string v0, "SET_SPEAKER_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mSpeakerSwitch:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_8
    const-string v0, "SET_LOGO_SETUP_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    return-object p1

    :cond_9
    const-string v0, "SET_LIGHTSENSITIVE_SETUP_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_a
    const-string v0, "PANEL_STUDY_KEY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v0, "query panel all state!"

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/nwd/factory/service/FactorySettingManager;->isArmStudyPanel(Landroid/content/Context;)Z

    move-result p1

    const/16 v0, 0x17

    const/16 v2, 0x18

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

    invoke-virtual {p1, v2}, Lcom/nwd/factory/service/PanelStudyManager;->startQuery(I)V

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

    invoke-virtual {p1, v0}, Lcom/nwd/factory/service/PanelStudyManager;->startQuery(I)V

    goto :goto_0

    :cond_b
    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {p1, v2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {p1, v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    :goto_0
    return-object v1

    :cond_c
    const-string v0, "UART_FUN_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mUartFunMode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    const-string v0, "CMD_MIC_GAIN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_e

    const-string p1, "4"

    return-object p1

    :cond_e
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_f
    const-string v0, "CMD_BACKCAR_VIDEO_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarVideoMode:Ljava/lang/String;

    return-object p1

    :cond_10
    const-string v0, "CMD_CAR_VIDEO_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarVideoMode:Ljava/lang/String;

    const-string v0, "6"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "5"

    return-object p1

    :cond_11
    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarVideoMode:Ljava/lang/String;

    return-object p1

    :cond_12
    const-string v0, "SET_COMM_MODULE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    return-object p1

    :cond_13
    const-string v0, "SET_QR_CODE_ACTIVATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    return-object p1

    :cond_14
    const-string v0, "SET_ACCELERATE_BACKCAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_15
    const-string v0, "SET_CAR_DOOR_DISTURB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarDoorDisturb:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_16
    const-string v0, "SET_DOUBLE_MIC"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    return-object p1

    :cond_17
    const-string v0, "SET_WL_DVR_PACKNAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mWLDvrPackName:Ljava/lang/String;

    return-object p1

    :cond_18
    const-string v0, "SET_AMP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_19
    const-string v0, "CMD_SET_TP_ESD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1a
    const-string v0, "CMD_SET_LIMIT_INSTALL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1b
    const-string v0, "CMD_SET_SIM_SWITCH"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    return-object p1

    :cond_1c
    const-string v0, "CMD_SET_XX_RADAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    const-string v0, "CMD_SET_RADIO_ANTENNA"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1e
    const-string v0, "CMD_SET_AVM_ENABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "0"

    if-eqz v0, :cond_20

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1f

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1f
    return-object v2

    :cond_20
    const-string v0, "CMD_SET_LONG_SCREEN_ROTATE_ENABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "1"

    if-eqz v0, :cond_22

    sget-boolean p1, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    if-eqz p1, :cond_21

    return-object v3

    :cond_21
    return-object v2

    :cond_22
    const-string v0, "CMD_SET_BACKCAR_DI_ENABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-boolean p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    if-eqz p1, :cond_23

    return-object v3

    :cond_23
    return-object v2

    :cond_24
    const-string v0, "CMD_SET_BACKCAR_AGC_ENABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    return-object p1

    :cond_25
    const-string v0, "CMD_SET_LCD_BIT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_26
    const-string v0, "CMD_SET_SMOOTH_LEVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mSmoothLevel:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    const-string v0, "CMD_SET_BT_MIC_LEVEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_28
    const-string v0, "CMD_SET_CAR_ASS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAss:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_29
    const-string v0, "CMD_SET_TVOUT_STANDARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    return-object p1

    :cond_2a
    const-string v0, "CMD_SET_HD_BACKCAR_STANDARD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2b
    const-string v0, "CMD_SET_BOOT_MENU"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    return-object p1

    :cond_2c
    const-string v0, "CMD_SET_BACKCAR_BLACK_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mShowBackCarBlackTime:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    const-string v0, "HD_BACKCAR_TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2e
    const-string v0, "CMD_SET_IPS_DELAY_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2f
    const-string v0, "CMD_SET_LOW_VOLTAGE_TIME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mLowVoltageTime:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_30
    const-string v0, "CMD_SET_SLEEP_POWER_OFF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mSleepPowerOff:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_31
    const-string v0, "CMD_SET_AUDIO_PHASE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_32
    const-string v0, "CMD_SET_FXP_TOLERANCE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mMcuFxpTolerance:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_33
    const-string v0, "CMD_SET_DELAY_OPEN_LCD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mDelayInitLcd:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_34
    const-string v0, "CMD_TV_AUDIO_CHANNEL"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvAudioChannel:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_35
    const-string v0, "CMD_SET_BACKCAR_FULLSCREEN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarFullScreen:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_36
    const-string v0, "CMD_SET_TVOUT_ENABLE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    sget p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutEnable:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_37
    const-string v0, "CMD_SET_BT_NAME"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_38

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    return-object p1

    :cond_38
    return-object v1
.end method

.method public SendFactoryCommand([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_3e

    const/4 v0, 0x0

    aget-object v1, p1, v0

    const-string v2, "DVR_SAVE_PATH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mDvrSavePath:Ljava/lang/String;

    goto/16 :goto_5

    :cond_0
    aget-object v1, p1, v0

    const-string v3, "UPDATE_PATH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1
    aget-object v1, p1, v0

    const-string v3, "REMOTE_CONTROL_PATH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    goto/16 :goto_5

    :cond_2
    aget-object v1, p1, v0

    const-string v3, "RADIO_AREA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-byte p1, p1

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioArea:B

    goto/16 :goto_5

    :cond_3
    aget-object v1, p1, v0

    const-string v3, "CHANGE_OS_SDCARD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    goto/16 :goto_5

    :cond_4
    aget-object v1, p1, v0

    const-string v3, "SET_I2S_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    goto/16 :goto_5

    :cond_5
    aget-object v1, p1, v0

    const-string v3, "assistline_adjust_open"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mAssistAdjust:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setAssistLineAdjustOpen(I)V

    goto/16 :goto_5

    :cond_6
    aget-object v1, p1, v0

    const-string v3, "SET_VOICE_ACTIVATE_OPEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceActivateOpen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setVoiceAnalyzeActivate(I)V

    goto/16 :goto_5

    :cond_7
    aget-object v1, p1, v0

    const-string v3, "SET_CAMERA_CONFIG"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    goto/16 :goto_5

    :cond_8
    aget-object v1, p1, v0

    const-string v3, "SET_FILTER_PATH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mFilterPath:I

    goto/16 :goto_5

    :cond_9
    aget-object v1, p1, v0

    const-string v3, "SET_MIN_BACKLIGHT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mMinBackLight:I

    goto/16 :goto_5

    :cond_a
    aget-object v1, p1, v0

    const-string v3, "SET_CARAUDIO_CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAudioChannel:I

    goto/16 :goto_5

    :cond_b
    aget-object v1, p1, v0

    const-string v3, "SET_CARAUX_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCarAuxSwitch="

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    aget-object v1, p1, v0

    const-string v3, "SET_SPEAKER_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mSpeakerSwitch:I

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeakerSwitch="

    goto :goto_0

    :cond_d
    aget-object v1, p1, v0

    const-string v3, "SET_LOGO_SETUP_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setLogoSetUpSwitch(Ljava/lang/String;)V

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLogoSetupSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    aget-object v1, p1, v0

    const-string v3, "SET_GSENSOR_SETUP_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_f

    const/4 v0, 0x1

    :cond_f
    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mGsensorEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_10
    aget-object v1, p1, v0

    const-string v3, "SET_LIGHTSENSITIVE_SETUP_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setLightSensitiveSettingOpen(I)V

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLightSensitiveSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    goto/16 :goto_1

    :cond_11
    aget-object v1, p1, v0

    const-string v3, "PANEL_STUDY_KEY"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->isArmStudyPanel(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/nwd/factory/service/PanelStudyManager;->sendPanelStudyKey(I)V

    goto/16 :goto_5

    :cond_12
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendPanelStudyKey(Lcom/nwd/kernel/aidl/IKernelFeature;I)V

    goto/16 :goto_5

    :cond_13
    aget-object v1, p1, v0

    const-string v3, "RIGHT_VIEW_CAMERA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mRightViewCameraId:I

    goto/16 :goto_5

    :cond_14
    aget-object v1, p1, v0

    const-string v3, "UART_FUN_MODE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mUartFunMode:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v1, "uart_fun_mode"

    :goto_3
    invoke-virtual {v0, v1, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    goto/16 :goto_5

    :cond_15
    aget-object v1, p1, v0

    const-string v3, "CMD_MIC_GAIN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v1, "key_mic_gain"

    goto :goto_3

    :cond_16
    aget-object v1, p1, v0

    const-string v3, "CMD_BACKCAR_VIDEO_MODE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarVideoMode:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v1, "key_backcar_video_mode"

    :goto_4
    invoke-virtual {v0, v1, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    aget-object v1, p1, v0

    const-string v3, "CMD_CAR_VIDEO_MODE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarVideoMode:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v1, "key_car_video_mode"

    goto :goto_4

    :cond_18
    aget-object v1, p1, v0

    const-string v3, "SET_COMM_MODULE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    goto/16 :goto_5

    :cond_19
    aget-object v1, p1, v0

    const-string v3, "SET_QR_CODE_ACTIVATE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1a
    aget-object v1, p1, v0

    const-string v3, "SET_ACCELERATE_BACKCAR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    goto/16 :goto_5

    :cond_1b
    aget-object v1, p1, v0

    const-string v3, "SET_CAR_DOOR_DISTURB"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarDoorDisturb:I

    goto/16 :goto_5

    :cond_1c
    aget-object v1, p1, v0

    const-string v3, "SET_DOUBLE_MIC"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1d
    aget-object v1, p1, v0

    const-string v3, "SET_WL_DVR_PACKNAME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mWLDvrPackName:Ljava/lang/String;

    goto/16 :goto_5

    :cond_1e
    aget-object v1, p1, v0

    const-string v3, "SET_AMP"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    goto/16 :goto_5

    :cond_1f
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_TP_ESD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    goto/16 :goto_5

    :cond_20
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_LIMIT_INSTALL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    goto/16 :goto_5

    :cond_21
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_SIM_SWITCH"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    goto/16 :goto_5

    :cond_22
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_XX_RADAR"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    goto/16 :goto_5

    :cond_23
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_RADIO_ANTENNA"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    goto/16 :goto_5

    :cond_24
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_AVM_ENABLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3e

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v1, "key_avm_enable"

    goto/16 :goto_3

    :cond_25
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_LONG_SCREEN_ROTATE_ENABLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "1"

    if-eqz v1, :cond_27

    aget-object p1, p1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    sput-boolean v2, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    goto/16 :goto_5

    :cond_26
    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    goto/16 :goto_5

    :cond_27
    aget-object v1, p1, v0

    const-string v4, "CMD_SET_BACKCAR_DI_ENABLE"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    aget-object p1, p1, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_28

    sput-boolean v2, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    goto/16 :goto_5

    :cond_28
    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    goto/16 :goto_5

    :cond_29
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_BACKCAR_AGC_ENABLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    goto/16 :goto_5

    :cond_2a
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_LCD_BIT"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    goto/16 :goto_5

    :cond_2b
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_SMOOTH_LEVEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mSmoothLevel:I

    goto/16 :goto_5

    :cond_2c
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_BT_MIC_LEVEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    goto/16 :goto_5

    :cond_2d
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_CAR_ASS"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAss:I

    goto/16 :goto_5

    :cond_2e
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_TVOUT_STANDARD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    goto/16 :goto_5

    :cond_2f
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_HD_BACKCAR_STANDARD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    goto/16 :goto_5

    :cond_30
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_BOOT_MENU"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    goto/16 :goto_5

    :cond_31
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_BACKCAR_BLACK_TIME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mShowBackCarBlackTime:I

    goto/16 :goto_5

    :cond_32
    aget-object v1, p1, v0

    const-string v3, "HD_BACKCAR_TYPE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHDBackCarTpye="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    goto/16 :goto_1

    :cond_33
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_IPS_DELAY_TIME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    goto/16 :goto_5

    :cond_34
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_LOW_VOLTAGE_TIME"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mLowVoltageTime:I

    goto/16 :goto_5

    :cond_35
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_SLEEP_POWER_OFF"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mSleepPowerOff:I

    goto/16 :goto_5

    :cond_36
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_AUDIO_PHASE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    goto/16 :goto_5

    :cond_37
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_FXP_TOLERANCE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mMcuFxpTolerance:I

    goto/16 :goto_5

    :cond_38
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_DELAY_OPEN_LCD"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mDelayInitLcd:I

    goto :goto_5

    :cond_39
    aget-object v1, p1, v0

    const-string v3, "CMD_TV_AUDIO_CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvAudioChannel:I

    goto :goto_5

    :cond_3a
    aget-object v1, p1, v0

    const-string v3, "CMD_TV_VIDEO_CHANNEL"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvVideoChannel:I

    goto :goto_5

    :cond_3b
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_BACKCAR_FULLSCREEN"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarFullScreen:I

    goto :goto_5

    :cond_3c
    aget-object v1, p1, v0

    const-string v3, "CMD_SET_TVOUT_ENABLE"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutEnable:I

    goto :goto_5

    :cond_3d
    aget-object v0, p1, v0

    const-string v1, "CMD_SET_BT_NAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    aget-object p1, p1, v2

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    :cond_3e
    :goto_5
    return-void
.end method

.method public exportConfig()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/nwd/factory/ExportAndImportUtil;->generateConfigEx(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public factoryReset()Z
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "persist.panel.orientation"

    const-string v3, "key_lcd_bit"

    const-string v4, "key_avm_enable"

    const-string v5, "key_tp_esd"

    const-string v6, "persist.sys.install.enable"

    const-string v7, "persist.sys.nwd.hacamera.ctrl"

    const-string v8, "persist.sys.nwd.mw.ctrl"

    const-string v9, "key_boot_menu"

    const-string v10, "persist.sys.backcar.di.enable"

    const-string v11, "persist.sys.i2s"

    const-string v12, "persist.sys.tfpath.flag"

    const-string v13, "extra_prop_value"

    const-string v14, "extra_prop_name"

    const-string v15, "1"

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mHandler:Landroid/os/Handler;

    move-object/from16 v16, v9

    sget v9, Lcom/nwd/factory/service/FactorySettingManager;->MSG_FACTORY_REBOOT:I

    invoke-virtual {v0, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    move-object/from16 v17, v10

    const-string v10, "com.android.action.ACTION_NOTE_APP_FACTORY_RESET"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v9, "factoryReset"

    invoke-virtual {v0, v9}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/FactorySettingUtil;->emuSendE2PRoomDataToMcu(Landroid/content/Context;)V

    :try_start_0
    new-instance v10, Ljava/util/Properties;

    invoke-direct {v10}, Ljava/util/Properties;-><init>()V

    new-instance v0, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    sget-object v2, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/FactoryConfig.ini"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v19

    const-wide/16 v21, 0x0

    cmp-long v2, v19, v21

    if-nez v2, :cond_1

    :cond_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v2, "FactoryConfig.ini is error so read /system/config/app/FactoryConfig.ini"

    invoke-virtual {v0, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v2, "/system/config/app/FactoryConfig.ini"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v10, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v0, "key_udisk_mode"

    invoke-virtual {v10, v0, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v9, 0x0

    invoke-direct {v1, v9, v0}, Lcom/nwd/factory/service/FactorySettingManager;->setUsbMode(II)V

    const-string v0, "key_udiskh_mode"

    invoke-virtual {v10, v0, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v9, 0x1

    invoke-direct {v1, v9, v0}, Lcom/nwd/factory/service/FactorySettingManager;->setUsbMode(II)V

    const/4 v0, 0x2

    const-string v9, "key_udisk3_mode"

    invoke-virtual {v10, v9, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v1, v0, v9}, Lcom/nwd/factory/service/FactorySettingManager;->setUsbMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-wide/16 v19, 0xc8

    :try_start_1
    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v9, v0

    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {v10, v12}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v9, "defValue="

    move-object/from16 v19, v2

    const-string v2, "0"

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v10, v12, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v20, v15

    sget-object v15, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    move-object/from16 v21, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move-object/from16 v21, v3

    move-object/from16 v20, v15

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "not containsKey KEY_PROPERTIES_SDCARD"

    invoke-virtual {v0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    move-object v0, v2

    :goto_1
    new-instance v3, Landroid/content/Intent;

    const-string v15, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v3, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v12, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/nwd/factory/service/FactorySettingManager;->settfcardConfig(I)V

    sget-object v12, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v4

    const-string v4, "set KEY_PROPERTIES_SDCARD="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v10, v11, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-object v0, v2

    :goto_2
    new-instance v4, Ljava/io/File;

    const-string v12, "/cache/nwd_dsp"

    invoke-direct {v4, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, v20

    :cond_4
    invoke-virtual {v3, v14, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "set KEY_I2S_CONFIG="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setI2SConfig(I)V

    invoke-virtual {v10, v8}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v4, "WM_3G"

    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v10, v8, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_5
    invoke-static {}, Lcom/nwd/factory/FactoryUtils;->isHaveSimSwitch()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "WM_AW4G"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    const-string v8, "persist.sys.activated.simname"

    const-string v9, "SIM1"

    invoke-virtual {v10, v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/nwd/factory/service/FactorySettingManager;->setSimSwitch(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v4}, Lcom/nwd/factory/service/FactorySettingManager;->setMwCtrl(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "set KEY_PROPERTIES_MW="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v10, v7, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "type="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    :goto_3
    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/nwd/factory/BackcarSettingUtil;->setBackcarVideoType(Landroid/content/Context;I)V

    invoke-static {v9}, Lcom/nwd/factory/service/FactorySettingManager;->setCSIconfig(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "set KEY_PROPERTIES_HD_BACKCAR="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v10, v6, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_4

    :cond_9
    const/4 v9, 0x0

    :goto_4
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "KEY_PROPERTIES_INSTALL_LIMITED="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v9}, Lcom/nwd/factory/service/FactorySettingManager;->setLimitInstall(Landroid/content/Context;I)V

    invoke-virtual {v10, v5}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v10, v5, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_5

    :cond_a
    const/4 v9, 0x0

    :goto_5
    invoke-static {v9}, Lcom/nwd/factory/service/FactorySettingManager;->setTouchScreenEsd(I)V

    move-object/from16 v4, v22

    invoke-virtual {v10, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "2"

    invoke-virtual {v10, v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_6

    :cond_b
    const/4 v9, 0x0

    :goto_6
    invoke-static {v9}, Lcom/nwd/factory/service/FactorySettingManager;->setavmconfigenable(I)V

    move-object/from16 v4, v21

    invoke-virtual {v10, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v10, v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_7

    :cond_c
    const/4 v9, 0x0

    :goto_7
    invoke-static {v9}, Lcom/nwd/factory/service/HardwareUtils;->setLcdBit(I)V

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->getMcuType()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_e

    const-string v0, "key_dvr_type"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setDVRModuleArm(I)V

    const-string v0, "key_radio_type"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioModuleArm(I)V

    const-string v0, "key_radio_sensitivity"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioSensitivityArm(I)V

    const-string v0, "key_radio_am_sensitivity"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioAMSensitivityArm(I)V

    const-string v0, "key_radio_light_sensitivity"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioLightSensitivityArm(I)V

    const-string v0, "key_audio_gain"

    invoke-virtual {v10, v0}, Ljava/util/Properties;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "key_audio_gain"

    invoke-virtual {v10, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x0

    :goto_8
    array-length v4, v0

    if-ge v9, v4, :cond_d

    add-int/lit8 v4, v9, 0x1

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v4, v5}, Lcom/nwd/factory/service/FactorySettingManager;->setAudioGainArm(II)V

    move v9, v4

    goto :goto_8

    :cond_d
    const-string v0, "key_radio_antenna"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioAntennaArm(I)V

    :cond_e
    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/FactoryUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object/from16 v4, v18

    invoke-virtual {v10, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v10, v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_f
    move-object v0, v2

    :goto_9
    iget-object v4, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/nwd/factory/service/FactorySettingManager;->setScreenOrientation(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_10
    move-object/from16 v4, v17

    invoke-virtual {v10, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v10, v4, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_11
    move-object v0, v2

    :goto_a
    invoke-virtual {v3, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "key_tvout_standard"

    const-string v4, "PAL"

    invoke-virtual {v10, v0, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defValue tvout std "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v4, "persist.sys.nwd.tve.std"

    invoke-virtual {v3, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move-object/from16 v4, v16

    invoke-virtual {v10, v4}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    move-object/from16 v5, v20

    if-eqz v0, :cond_12

    invoke-virtual {v10, v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    goto :goto_b

    :cond_12
    move-object v15, v5

    :goto_b
    invoke-virtual {v3, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v13, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "persist.nwd.audiophase"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v4, "persist.nwd.audiophase"

    invoke-virtual {v3, v14, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v3, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v0, "key_hd_backcar_standard"

    invoke-virtual {v10, v0, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/HardwareUtils;->setModeFmt(I)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_c

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/backups/NwdLocaleConfig.conf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_13
    new-instance v0, Ljava/io/File;

    const-string v2, "/cache/NwdLocaleConfig.conf"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_14
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/backups/UpdateConfig.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "delete /mnt/sdcard/backups/UpdateConfig.ini"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_15
    new-instance v0, Ljava/io/File;

    const-string v2, "/cache/UpdateConfig.ini"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "delete /cache/UpdateConfig.ini"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_16
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/backups/UpdateConfig.ini.bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_17
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/backups/FactoryConfig.ini"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_18

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "delete /mnt/sdcard/backups/FactoryConfig.ini"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_18
    new-instance v0, Ljava/io/File;

    const-string v2, "/cache/FactoryConfig.ini"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "delete /cache/FactoryConfig.ini"

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_19
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/nwd/factory/config/AbsConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/backups/FactoryConfig.ini.bak"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1a
    new-instance v0, Ljava/io/File;

    const-string v2, "/cache/bootanimation.zip"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1b
    new-instance v0, Ljava/io/File;

    const-string v2, "/cache/boot_logo.bmp"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1c
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->clearAppConfig()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/NwdLocaleConfig.conf"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/config/app/NwdLocaleConfig.conf"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/UpdateConfig.ini"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/system/config/app/UpdateConfig.ini"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/FactoryUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x3

    if-nez v0, :cond_1e

    new-instance v0, Ljava/io/File;

    const-string v3, "/system/config/app/boot_logo.bmp"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/nwd/factory/config/AbsConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/app/boot_logo.bmp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    iget v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mPlatform:I

    if-ne v0, v2, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_1d

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/bootloader/bootlogo.bmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_d

    :cond_1d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string v4, "/bootloader/bootlogo.bmp"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_d
    invoke-static {v0, v3}, Lcom/nwd/factory/config/AbsConfigSetting;->copy(Ljava/io/File;Ljava/io/File;)V

    :cond_1e
    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/FactoryUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mPlatform:I

    if-eq v0, v2, :cond_1f

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v3, "send com.nwd.ACTION_SET_BOOT_LOGO"

    invoke-virtual {v0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nwd.ACTION_SET_BOOT_LOGO"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1f
    new-instance v0, Lcom/nwd/factory/config/UpdateConfigSetting;

    invoke-direct {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;-><init>()V

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getGsensorEnable()Z

    move-result v3

    invoke-static {v3}, Lcom/nwd/factory/service/FactorySettingManager;->setgsensorenable(Z)V

    iget v3, v1, Lcom/nwd/factory/service/FactorySettingManager;->mPlatform:I

    if-ne v3, v2, :cond_21

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DVD ON="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_20

    goto :goto_e

    :cond_20
    const/4 v2, 0x0

    :goto_e
    invoke-static {v2}, Lcom/nwd/factory/service/FactorySettingManager;->setdvdconfigenable(Z)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->set6502configenable(I)V

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    const/16 v2, 0x10

    invoke-static {v0, v2}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->set360ViewFunc(I)V

    :cond_21
    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->saveUnInstallConfig(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->clearState(Landroid/content/Context;)V

    invoke-static {}, Lcom/nwd/factory/config/LanguageConfigSetting;->sendUserChoosedLocalLanguage2FW()V

    iget-object v0, v1, Lcom/nwd/factory/service/FactorySettingManager;->mHandler:Landroid/os/Handler;

    sget v2, Lcom/nwd/factory/service/FactorySettingManager;->MSG_FACTORY_REBOOT:I

    const-wide/16 v3, 0x1770

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_22
    const/4 v2, 0x1

    return v2
.end method

.method public getAudioGain(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v2, v1

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v0

    aget p1, v1, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getDTvModuleStyle()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mDTvModuleStyle:B

    return v0
.end method

.method public getDVRModuleStyle()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    return v0
.end method

.method public getKernelFeature()Lcom/nwd/kernel/aidl/IKernelFeature;
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->getInstance(Landroid/content/Context;)Lcom/nwd/factory/service/FactorySettingManager;

    move-result-object v0

    iget-object v0, v0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-object v0
.end method

.method public getPanelType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioAMSensitivity()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    return v0
.end method

.method public getRadioLightSensitivity()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    return v0
.end method

.method public getRadioModuleStyle()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    return v0
.end method

.method public getRadioSensitivity()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    return v0
.end method

.method public getSteerwheelType()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    return-object v0
.end method

.method public getThreeLampSettingState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mThreeLampSettingOpen:I

    return v0
.end method

.method public getTurbineKey(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mbTurbineOpen:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getTvModuleStyle()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvModuleStyle:B

    return v0
.end method

.method public getVoiceAnalyzeState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceAnalyzeOpen:I

    return v0
.end method

.method public importConfig(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file.exists()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mConfigList:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/nwd/factory/ExportAndImportUtil;->improtConfigFromFileAndSetConfigEx(Ljava/io/File;Landroid/content/Context;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->ACTION_UPDATE:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mbImport:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public importUpdateConfig()V
    .locals 4

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "importUpdateConfig start"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Lcom/nwd/factory/config/UpdateConfigSetting;

    invoke-direct {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;-><init>()V

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setBtUpdatePath(Ljava/lang/String;)V

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setMcuUpdatePath(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/update.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setOsUpdatePath(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/canupdate/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setCanUpdatePath(Ljava/lang/String;)V

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDvrSavePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setDVRRecordPath(Ljava/lang/String;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget v2, Lcom/nwd/factory/service/FactorySettingManager;->mFilterPath:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setFilterDVRPath(Ljava/lang/String;)V

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mRightViewCameraId:I

    invoke-virtual {v0, v1, v3}, Lcom/nwd/factory/config/UpdateConfigSetting;->setRightViewChannel(IZ)V

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setCameraConfig(I)V

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mMinBackLight:I

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setMinBackLight(I)V

    sget-boolean v1, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    invoke-virtual {v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setGsensorEnable(Z)V

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvVideoChannel:I

    invoke-virtual {v0, v1, v3}, Lcom/nwd/factory/config/UpdateConfigSetting;->setTvChannel(IZ)V

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->savetosdcard()V

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->release()V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "importUpdateConfig end"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public initFactorySetting(Landroid/content/Context;[BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadCurrentConfig(Ljava/util/Map;Landroid/content/Context;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "loadCurrentConfig"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTvModuleStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-byte v2, Lcom/nwd/factory/service/FactorySettingManager;->mTvModuleStyle:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvModuleStyle:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "atv_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadioModuleStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-byte v2, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadioSensitivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-byte v2, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio_sensitivity"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadioAMSensitivity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-byte v2, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio_am_sensitivity"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDVRModuleStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-byte v2, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "dvr_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    const-string v1, "panel_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    const-string v1, "fxp_type"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "radio_light_sensitivity"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mbTurbineOpen:[Z

    array-length v4, v3

    const/4 v5, 0x1

    if-ge v1, v4, :cond_1

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_0

    shl-int v3, v5, v1

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "turbine_state"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->ATTR_AUDIO_GAIN:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    aget-object v3, v3, v1

    aget v2, v2, v1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceAnalyzeOpen:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "voice_analyze_state"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mThreeLampSettingOpen:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "three_lamp_setting_state"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDvrSavePath:Ljava/lang/String;

    const-string v2, "DVR_SAVE_PATH"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    const-string v2, "UPDATE_PATH"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    const-string v2, "REMOTE_CONTROL_PATH"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget-byte v2, Lcom/nwd/factory/service/FactorySettingManager;->mRadioArea:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v2, "%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RADIO_AREA"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    const-string v3, "CHANGE_OS_SDCARD"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    const-string v3, "SET_I2S_SWITCH"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceActivateOpen:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_VOICE_ACTIVATE_OPEN"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mAssistAdjust:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "assistline_adjust_open"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "usb_one_mode"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    aget v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "usb_two_mode"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "usb_three_mode"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_CAMERA_CONFIG"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mFilterPath:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_FILTER_PATH"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mMinBackLight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "min_backlight"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mCarAudioChannel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "caraudio_channel"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "caraux_switch"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mSpeakerSwitch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "speaker_switch"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    const-string v3, "SET_LOGO_SETUP_SWITCH"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    const-string v3, "SET_GSENSOR_SETUP_SWITCH"

    const-string v4, "1"

    const-string v6, "0"

    if-eqz v1, :cond_3

    invoke-interface {p1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-interface {p1, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_LIGHTSENSITIVE_SETUP_SWITCH"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "HD_BACKCAR_TYPE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mRightViewCameraId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "RIGHT_VIEW_CAMERA"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mUartFunMode:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "UART_FUN_MODE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMD_MIC_GAIN"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/FactoryUtils;->getBrightness(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "brightness"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/FactoryUtils;->getContrast(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "contrast"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/FactoryUtils;->getHue(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "color"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/FactoryUtils;->getSatuation(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "saturation"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/nwd/factory/FactoryUtils;->getVCom()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "vcom"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/nwd/factory/FactoryUtils;->getLcdAvdd()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "avdd"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarVideoMode:Ljava/lang/String;

    const-string v3, "CMD_BACKCAR_VIDEO_MODE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarVideoMode:Ljava/lang/String;

    const-string v3, "CMD_CAR_VIDEO_MODE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    const-string v3, "SET_COMM_MODULE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    const-string v3, "SET_QR_CODE_ACTIVATE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_ACCELERATE_BACKCAR"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mCarDoorDisturb:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_CAR_DOOR_DISTURB"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    const-string v3, "SET_DOUBLE_MIC"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mWLDvrPackName:Ljava/lang/String;

    const-string v3, "SET_WL_DVR_PACKNAME"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "SET_AMP"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMD_SET_TP_ESD"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMD_SET_LIMIT_INSTALL"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    const-string v3, "CMD_SET_SIM_SWITCH"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMD_SET_XX_RADAR"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMD_SET_RADIO_ANTENNA"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v5, [Ljava/lang/Object;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "CMD_SET_AVM_ENABLE"

    invoke-interface {p1, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/nwd/factory/FactoryUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-boolean p2, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    if-eqz p2, :cond_4

    move-object p2, v4

    goto :goto_3

    :cond_4
    move-object p2, v6

    :goto_3
    const-string v1, "CMD_SET_LONG_SCREEN_ROTATE_ENABLE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-boolean p2, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    if-eqz p2, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v6

    :goto_4
    const-string p2, "CMD_SET_BACKCAR_DI_ENABLE"

    invoke-interface {p1, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    const-string v1, "CMD_SET_BACKCAR_AGC_ENABLE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_LCD_BIT"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mSmoothLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_SMOOTH_LEVEL"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_BT_MIC_LEVEL"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAss:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_CAR_ASS"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    const-string v1, "CMD_SET_TVOUT_STANDARD"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_HD_BACKCAR_STANDARD"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    const-string v1, "CMD_SET_BOOT_MENU"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mShowBackCarBlackTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_BACKCAR_BLACK_TIME"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_IPS_DELAY_TIME"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mLowVoltageTime:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_LOW_VOLTAGE_TIME"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mSleepPowerOff:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_SLEEP_POWER_OFF"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_AUDIO_PHASE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mMcuFxpTolerance:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_FXP_TOLERANCE"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mDelayInitLcd:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_DELAY_OPEN_LCD"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvVideoChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_TV_VIDEO_CHANNEL"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvAudioChannel:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_TV_AUDIO_CHANNEL"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarFullScreen:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "CMD_SET_BACKCAR_FULLSCREEN"

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array p2, v5, [Ljava/lang/Object;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutEnable:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p2, v0

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "CMD_SET_TVOUT_ENABLE"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p2, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    const-string v0, "CMD_SET_BT_NAME"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public loadTagName()Ljava/lang/String;
    .locals 1

    const-string v0, "other_factory_setting"

    return-object v0
.end method

.method public onGetAck(BB)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {v0, p1, p2}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendAck(Lcom/nwd/kernel/aidl/IKernelFeature;II)V

    return-void
.end method

.method public onGetAmp(I)V
    .locals 0

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    return-void
.end method

.method public onGetAudioGain(II)V
    .locals 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v2, v1

    if-gt p1, v2, :cond_0

    add-int/lit8 v2, p1, -0x1

    aput p2, v1, v2

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v1, :cond_0

    const/16 v2, -0x5e

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetCarAudioChannel(I)V
    .locals 4

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAudioChannel:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, -0x5e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetCarAuxState(I)V
    .locals 4

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x12

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetDTvModuleStyle(B)V
    .locals 4

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mDTvModuleStyle:B

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x6

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetDVRModuleStyle(B)V
    .locals 4

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetFactoryInfo([Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_1

    const-string v0, "REMOTE_CONTROL_PATH"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p1, v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    invoke-interface {v0, p1}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChangeEx([Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onGetFxpType(Ljava/lang/String;)V
    .locals 4

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x9

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetHbsFactoryInfo([B)V
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onHbsDataChange([B)V

    :cond_0
    return-void
.end method

.method public onGetPanelAdValue([I)V
    .locals 1

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/service/PanelStudyManager;->notifyPanelAdValue([I)V

    return-void
.end method

.method public onGetPanelStudyAllState([B)V
    .locals 1

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onPanelAllStateDataChange([B)V

    :cond_0
    return-void
.end method

.method public onGetPanelStudyStep(I)V
    .locals 4

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x17

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    int-to-byte p1, p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetPanleType(Ljava/lang/String;)V
    .locals 4

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0xa

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetRadioAntennaState(I)V
    .locals 0

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    return-void
.end method

.method public onGetRadioLightSensitivity(B)V
    .locals 4

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetRadioModuleStyle(B)V
    .locals 4

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetRadioSensitivity(BB)V
    .locals 4

    if-nez p1, :cond_0

    sput-byte p2, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    goto :goto_0

    :cond_0
    sput-byte p2, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    :goto_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    aput-object p2, v2, p1

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public onGetSpeakerState(I)V
    .locals 4

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mSpeakerSwitch:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/16 v1, 0x13

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onGetTurbine(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mbTurbineOpen:[Z

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    shr-int v3, p1, v1

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_0

    aput-boolean v4, v2, v1

    goto :goto_1

    :cond_0
    aput-boolean v0, v2, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v1, :cond_2

    const/16 v2, 0xc

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-interface {v1, v2, v3}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onGetTvModuleStyle(B)V
    .locals 4

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvModuleStyle:B

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->onDataChange(I[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public readConfig()V
    .locals 8

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "~~~~~~~~~readConfig()~~~~~~~~~~~"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v1, "none"

    const-string v2, "fxp"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v2, "panel"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v2, "remote_control"

    invoke-virtual {v0, v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isVoiceAnalyzeOpen()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceAnalyzeOpen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isThreeLampSettingOpen()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mThreeLampSettingOpen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isAssistLineAdjustOpen()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mAssistAdjust:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isVoiceAnalyzeActivate()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceActivateOpen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getLogoSetUpSwitch()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->isLightSensitiveSettingOpen()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const/4 v2, 0x0

    const-string v3, "uart_fun_mode"

    invoke-virtual {v0, v3, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mUartFunMode:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "key_mic_gain"

    invoke-virtual {v0, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "0"

    const-string v4, "key_backcar_video_mode"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarVideoMode:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_car_video_mode"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mCarVideoMode:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "qr_code_activate"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_double_mic"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->getWLDvrPackName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mWLDvrPackName:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "accelerate_backcar"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "car_door_lock_disturb"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mCarDoorDisturb:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_tp_esd"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "persist.sys.install.enable"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_xx_radar"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_avm_enable"

    const-string v5, "2"

    invoke-virtual {v0, v4, v5}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "persist.panel.orientation"

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "persist.sys.backcar.di.enable"

    invoke-virtual {v0, v5, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "key_agc_enable"

    invoke-virtual {v0, v5, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "key_lcd_bit"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "smooth_level"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mSmoothLevel:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "key_bt_mic_gain"

    const/4 v6, 0x4

    invoke-virtual {v0, v5, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "key_car_ass"

    invoke-virtual {v0, v5, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mCarAss:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v5, "key_tvout_standard"

    const-string v6, "PAL"

    invoke-virtual {v0, v5, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const/4 v5, 0x1

    const-string v6, "key_hd_backcar_standard"

    invoke-virtual {v0, v6, v5}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    if-nez v0, :cond_0

    sput v5, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    :cond_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "key_boot_menu"

    invoke-virtual {v0, v6, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "backcar_show_black_time"

    invoke-virtual {v0, v6, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mShowBackCarBlackTime:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "persist.sys.nwd.hacamera.ctrl"

    invoke-virtual {v0, v6, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->getCorrectHDBackcarType(I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const/16 v6, 0x5dc

    const-string v7, "ips_delay_time"

    invoke-virtual {v0, v7, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const/16 v6, 0xc8

    const-string v7, "low_voltage_time"

    invoke-virtual {v0, v7, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mLowVoltageTime:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "sleep_power_off"

    invoke-virtual {v0, v6, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mSleepPowerOff:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "persist.nwd.audiophase"

    invoke-virtual {v0, v6, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const/16 v6, 0x3c

    const-string v7, "key_fxp_tolerance"

    invoke-virtual {v0, v7, v6}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mMcuFxpTolerance:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "key_delay_init_lcd"

    invoke-virtual {v0, v6, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mDelayInitLcd:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "persist.sys.i2s"

    invoke-virtual {v0, v6, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "key_tv_audio_channel"

    invoke-virtual {v0, v3, v5}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvAudioChannel:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "key_backcar_fullscreen"

    invoke-virtual {v0, v3, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarFullScreen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "cvbs_out_enble"

    invoke-virtual {v0, v3, v2}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutEnable:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "default_bt_name"

    invoke-virtual {v0, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mBtDefaultName="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v3, "/cache/nwd_dsp"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    sput-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    :cond_2
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_udisk_mode"

    invoke-virtual {v3, v4, v5}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v2

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v4, "key_udiskh_mode"

    invoke-virtual {v3, v4, v5}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v3

    aput v3, v0, v5

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    const/4 v3, 0x2

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v6, "key_udisk3_mode"

    invoke-virtual {v4, v6, v5}, Lcom/nwd/factory/config/FactoryConfigSetting;->getPropertiesInteger(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    new-instance v0, Lcom/nwd/factory/config/UpdateConfigSetting;

    invoke-direct {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;-><init>()V

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getDVRRecordPath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mDvrSavePath:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v3

    sput v3, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getGsensorEnable()Z

    move-result v3

    sput-boolean v3, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getRightViewChannal()I

    move-result v3

    sput v3, Lcom/nwd/factory/service/FactorySettingManager;->mRightViewCameraId:I

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getTvChannal()I

    move-result v3

    sput v3, Lcom/nwd/factory/service/FactorySettingManager;->mTvVideoChannel:I

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getFilterDvrPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sput v3, Lcom/nwd/factory/service/FactorySettingManager;->mFilterPath:I

    :cond_3
    iget-object v3, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mcu_radio_area_current"

    invoke-static {v3, v4}, Lcom/nwd/kernel/source/SettingTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    sput-byte v3, Lcom/nwd/factory/service/FactorySettingManager;->mRadioArea:B

    new-array v3, v5, [Ljava/lang/Object;

    const-string v4, "persist.sys.tfpath.flag"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/nwd/factory/service/FactorySettingManager;->getTfcardExchange(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "%d"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    const-string v2, "persist.sys.nwd.mw.ctrl"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    invoke-direct {p0}, Lcom/nwd/factory/service/FactorySettingManager;->queryUsbMode()V

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getMinBackLight()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mMinBackLight:I

    const-string v1, "persist.sys.activated.simname"

    const-string v2, "SIM1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    invoke-static {}, Lcom/nwd/factory/FactoryUtils;->getRadioType()I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    invoke-virtual {v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->release()V

    return-void
.end method

.method public reboot()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->reboot(Lcom/nwd/kernel/aidl/IKernelFeature;)V

    return-void
.end method

.method public receive([B)V
    .locals 0

    invoke-static {p1, p0}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->receive([BLcom/nwd/factory/service/FactorySettingProtocalUtils$IFactorySettingCallback;)V

    invoke-static {p1, p0}, Lcom/nwd/factory/service/ActionProtocalUtil;->receive([BLcom/nwd/factory/service/ActionProtocalUtil$IActionProtocalCallback;)V

    return-void
.end method

.method public registFactoryCallback(Lcom/nwd/factory/service/FactoryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->registCallback(Lcom/nwd/factory/service/FactoryCallback;)V

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    sput-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    iput-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public requestRefreshLauncher()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/FactorySettingUtil;->requestRefreshLauncher(Landroid/content/Context;)V

    return-void
.end method

.method public resetIfNeed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public saveFactorySetting(Landroid/content/ContentResolver;[BI)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public saveMcuSetting()V
    .locals 2

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mSaveThread:Ljava/lang/Thread;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/nwd/factory/service/FactorySettingManager$1;

    invoke-direct {v1, p0}, Lcom/nwd/factory/service/FactorySettingManager$1;-><init>(Lcom/nwd/factory/service/FactorySettingManager;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mSaveThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public saveSetting()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "saveSetting"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getInternalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/backups"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/nwd_dsp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "1"

    if-eqz v0, :cond_1

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/nwd/factory/service/FactorySettingManager;->saveMcuSetting()V

    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->getMcuType()I

    move-result v0

    const-string v2, ","

    const-string v3, "key_radio_antenna"

    const-string v4, "key_low_power_amplifier"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_3

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setDVRModuleArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-byte v7, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    const-string v8, "key_dvr_type"

    invoke-virtual {v0, v8, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioModuleArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-byte v7, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    const-string v8, "key_radio_type"

    invoke-virtual {v0, v8, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioSensitivityArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-byte v7, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    const-string v8, "key_radio_sensitivity"

    invoke-virtual {v0, v8, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioAMSensitivityArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-byte v7, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    const-string v8, "key_radio_am_sensitivity"

    invoke-virtual {v0, v8, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-byte v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioLightSensitivityArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-byte v7, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    const-string v8, "key_radio_light_sensitivity"

    invoke-virtual {v0, v8, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setLowPowerAmplifier(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v7, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-virtual {v0, v4, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    const-string v0, ""

    const/4 v7, 0x0

    :goto_0
    sget-object v8, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v9, v8

    if-ge v7, v9, :cond_2

    add-int/lit8 v9, v7, 0x1

    aget v8, v8, v7

    invoke-static {v9, v8}, Lcom/nwd/factory/service/FactorySettingManager;->setAudioGainArm(II)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    aget v0, v0, v7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v7, v9

    goto :goto_0

    :cond_2
    sget-object v7, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v8, "key_audio_gain"

    invoke-virtual {v7, v8, v0}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioAntennaArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v7, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-virtual {v0, v3, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    const-string v7, "none"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->isMcuFxpFile(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/nwd/setting/service/ArmFxpUtils;->importCarControlConfig(Ljava/lang/String;)I

    :cond_3
    invoke-static {}, Lcom/nwd/factory/service/FactorySettingManager;->getIsSupportArmFM()I

    move-result v0

    if-ne v0, v6, :cond_4

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setRadioAntennaArm(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v7, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    invoke-virtual {v0, v3, v7}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setLowPowerAmplifier(I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    invoke-virtual {v0, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :cond_4
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.nwd.action.ACTION_SET_SYSTEM_PROP"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "factory_feature"

    invoke-static {v3, v4}, Lcom/nwd/factory/FactoryTableKey;->getIntValue(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v7, "fun"

    invoke-virtual {v4, v7, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nwd/factory/BackcarSettingUtil;->getBackcarTrackSwitch(Landroid/content/Context;)I

    move-result v4

    const-string v7, "backcar_track"

    invoke-virtual {v3, v7, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/nwd/factory/BackcarSettingUtil;->getBackcarAssistLineSwitch(Landroid/content/Context;)I

    move-result v4

    const-string v7, "assistline"

    invoke-virtual {v3, v7, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    const-string v7, "panel"

    invoke-virtual {v3, v7, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    const-string v7, "fxp"

    invoke-virtual {v3, v7, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    const-string v7, "remote_control"

    invoke-virtual {v3, v7, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget v3, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    invoke-static {v3}, Lcom/nwd/factory/service/FactorySettingManager;->getCorrectHDBackcarType(I)I

    move-result v3

    sput v3, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v7, "persist.sys.nwd.hacamera.ctrl"

    invoke-virtual {v4, v7, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    const-string v7, "persist.sys.i2s"

    invoke-virtual {v3, v7, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    const-string v8, "persist.sys.tfpath.flag"

    invoke-virtual {v3, v8, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    const-string v9, "persist.sys.nwd.mw.ctrl"

    invoke-virtual {v3, v9, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    const-string v9, "qr_code_activate"

    invoke-virtual {v3, v9, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    const-string v9, "key_double_mic"

    invoke-virtual {v3, v9, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    const-string v10, "accelerate_backcar"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mCarDoorDisturb:I

    const-string v10, "car_door_lock_disturb"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mWLDvrPackName:Ljava/lang/String;

    const-string v10, "key_wl_dvr_packname"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    const-string v10, "key_tp_esd"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    const-string v10, "persist.sys.install.enable"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    const-string v10, "key_xx_radar"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    const-string v10, "key_agc_enable"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    const-string v10, "key_lcd_bit"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    const-string v10, "persist.sys.activated.simname"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mSmoothLevel:I

    const-string v10, "smooth_level"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    const-string v10, "key_bt_mic_gain"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mCarAss:I

    const-string v10, "key_car_ass"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    const-string v10, "key_tvout_standard"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    const-string v10, "key_hd_backcar_standard"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    const-string v10, "key_boot_menu"

    invoke-virtual {v3, v10, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mShowBackCarBlackTime:I

    const-string v11, "backcar_show_black_time"

    invoke-virtual {v3, v11, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    const-string v11, "ips_delay_time"

    invoke-virtual {v3, v11, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mLowVoltageTime:I

    const-string v11, "low_voltage_time"

    invoke-virtual {v3, v11, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mSleepPowerOff:I

    const-string v11, "sleep_power_off"

    invoke-virtual {v3, v11, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    const-string v11, "persist.nwd.audiophase"

    invoke-virtual {v3, v11, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mMcuFxpTolerance:I

    const-string v12, "key_fxp_tolerance"

    invoke-virtual {v3, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mDelayInitLcd:I

    const-string v12, "key_delay_init_lcd"

    invoke-virtual {v3, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mTvAudioChannel:I

    const-string v12, "key_tv_audio_channel"

    invoke-virtual {v3, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarFullScreen:I

    const-string v12, "key_backcar_fullscreen"

    invoke-virtual {v3, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutEnable:I

    const-string v12, "cvbs_out_enble"

    invoke-virtual {v3, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    aget-object v3, v2, v5

    aget-object v2, v2, v6

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    const-string v4, "default_bt_name"

    invoke-virtual {v2, v4, v3}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object v2, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/nwd/factory/FactoryUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v2

    const-string v3, "0"

    if-eqz v2, :cond_8

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-boolean v4, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    if-eqz v4, :cond_6

    move-object v4, v1

    goto :goto_1

    :cond_6
    move-object v4, v3

    :goto_1
    const-string v12, "persist.panel.orientation"

    invoke-virtual {v2, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget-boolean v4, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    if-eqz v4, :cond_7

    move-object v4, v1

    goto :goto_2

    :cond_7
    move-object v4, v3

    :goto_2
    invoke-static {v2, v4, v5}, Lcom/nwd/factory/service/FactorySettingManager;->setScreenOrientation(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_8
    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    sget-boolean v4, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    if-eqz v4, :cond_9

    move-object v4, v1

    goto :goto_3

    :cond_9
    move-object v4, v3

    :goto_3
    const-string v12, "persist.sys.backcar.di.enable"

    invoke-virtual {v2, v12, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "extra_prop_name"

    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-boolean v4, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    if-eqz v4, :cond_a

    move-object v4, v1

    goto :goto_4

    :cond_a
    move-object v4, v3

    :goto_4
    const-string v12, "extra_prop_value"

    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    if-ltz v4, :cond_b

    if-gt v4, v6, :cond_b

    sget-object v13, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v14, "key_avm_enable"

    invoke-virtual {v13, v14, v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :cond_b
    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v4}, Lcom/nwd/factory/config/FactoryConfigSetting;->savetosdcard()V

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v13, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    invoke-static {v4, v9, v13}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    sget v4, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    invoke-static {v4}, Lcom/nwd/factory/service/FactorySettingManager;->setFREVConfig(I)V

    sget-boolean v4, Lcom/nwd/factory/service/FactorySettingManager;->mbImport:Z

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mHandler:Landroid/os/Handler;

    sget v9, Lcom/nwd/factory/service/FactorySettingManager;->MSG_IMPORT_CONFIG:I

    invoke-virtual {v4, v9}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mHandler:Landroid/os/Handler;

    sget v9, Lcom/nwd/factory/service/FactorySettingManager;->MSG_IMPORT_CONFIG:I

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    invoke-virtual {v0, v2, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/nwd/factory/service/FactorySettingManager;->settfcardConfig(I)V

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "persist.sys.nwd.tve.std"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    invoke-virtual {v0, v12, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v0, v2, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget v2, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    if-ne v2, v6, :cond_d

    goto :goto_5

    :cond_d
    move-object v1, v3

    :goto_5
    invoke-virtual {v0, v12, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    invoke-static {v0, v1}, Lcom/nwd/factory/BackcarSettingUtil;->setBackcarVideoType(Landroid/content/Context;I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setI2SConfig(I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setMicConfig(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setMwCtrl(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setgsensorenable(Z)V

    invoke-static {}, Lcom/android/utils/utils/PlatformUtils;->getPlatform()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_f

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    if-ne v0, v6, :cond_e

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setdvdconfigenable(Z)V

    :cond_e
    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->set6502configenable(I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/nwd/factory/FeatureSettingUtil;->isFeatureOn(Landroid/content/Context;I)Z

    move-result v0

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->set360ViewFunc(I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    invoke-static {v0}, Lcom/nwd/factory/service/HardwareUtils;->setIPSDelay(I)V

    :cond_f
    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, v5}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    :cond_10
    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setCSIconfig(I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    if-ltz v0, :cond_11

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setMicGain(I)V

    :cond_11
    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setTouchScreenEsd(I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget v1, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setLimitInstall(Landroid/content/Context;I)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCommModule="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/nwd/factory/FactoryUtils;->isHaveSimSwitch()Z

    move-result v0

    if-nez v0, :cond_12

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    const-string v1, "WM_AW4G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setSimSwitch(Landroid/content/Context;Ljava/lang/String;)V

    :cond_13
    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->setavmconfigenable(I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    invoke-static {v0}, Lcom/nwd/factory/service/HardwareUtils;->setLcdBit(I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    invoke-static {v0}, Lcom/nwd/factory/service/HardwareUtils;->nwdsetBtMicGain(I)V

    sget v0, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    invoke-static {v0}, Lcom/nwd/factory/service/HardwareUtils;->setModeFmt(I)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/service/FactorySettingManager;->saveUnInstallConfig(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/nwd/factory/FactoryUtils;->save(Landroid/content/Context;)V

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "saveSetting end"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public sendHbsProtocolData([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    invoke-static {v0, p1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->sendHbsData(Lcom/nwd/kernel/aidl/IKernelFeature;[B)V

    return-void
.end method

.method public setAudioGain(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v2, v1

    if-gt p1, v2, :cond_0

    sub-int/2addr p1, v0

    aput p2, v1, p1

    :cond_0
    return-void
.end method

.method public setConfig(Ljava/util/Map;Landroid/content/Context;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 p2, 0x1

    sput-boolean p2, Lcom/nwd/factory/service/FactorySettingManager;->mbImported:Z

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/utils/utils/NwdConfigUtils;->getConfigPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/app/resumeDisplay"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "-----------------setConfig()-----------------"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "atv_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetTvModuleStyle(B)V

    const-string v1, "radio_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetRadioModuleStyle(B)V

    const-string v1, "radio_sensitivity"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetRadioSensitivity(BB)V

    const-string v1, "radio_am_sensitivity"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, p2, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetRadioSensitivity(BB)V

    const-string v1, "dvr_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetDVRModuleStyle(B)V

    const-string v1, "radio_light_sensitivity"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetRadioLightSensitivity(B)V

    const-string v1, "fxp_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetFxpType(Ljava/lang/String;)V

    const-string v1, "panel_type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetPanleType(Ljava/lang/String;)V

    const-string v1, "turbine_state"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->onGetTurbine(I)V

    const/4 v1, 0x0

    :goto_1
    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mGainValue:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->ATTR_AUDIO_GAIN:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->ATTR_AUDIO_GAIN:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->ATTR_AUDIO_GAIN:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/nwd/factory/service/FactorySettingManager;->onGetAudioGain(II)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const-string v1, "voice_analyze_state"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceAnalyzeOpen:I

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setVoiceAnalyzeState(I)V

    :cond_3
    const-string v1, "UPDATE_PATH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    :cond_4
    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUpdatePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mUpdatePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v1, "DVR_SAVE_PATH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_5

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDvrSavePath:Ljava/lang/String;

    :cond_5
    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDvrSavePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/nwd/factory/service/FactorySettingManager;->mDvrSavePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    const-string v1, "REMOTE_CONTROL_PATH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_6

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mstrRemoteControlPath:Ljava/lang/String;

    :cond_6
    const-string v1, "RADIO_AREA"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-byte v1, v1

    sput-byte v1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioArea:B

    :cond_7
    const-string v1, "CHANGE_OS_SDCARD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mChangeSDCard:Ljava/lang/String;

    :cond_8
    const-string v1, "SET_I2S_SWITCH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_9

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mI2s:Ljava/lang/String;

    :cond_9
    const-string v1, "SET_VOICE_ACTIVATE_OPEN"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceActivateOpen:I

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setVoiceAnalyzeActivate(I)V

    :cond_a
    const-string v1, "assistline_adjust_open"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_b

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mAssistAdjust:I

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setAssistLineAdjustOpen(I)V

    :cond_b
    const-string v1, "usb_one_mode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, v0

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    aget v1, v1, v0

    invoke-direct {p0, v0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setUsbMode(II)V

    :cond_c
    const-string v1, "usb_two_mode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_d

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v2, p2

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    aget v1, v1, p2

    invoke-direct {p0, p2, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setUsbMode(II)V

    :cond_d
    const-string v1, "usb_three_mode"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_e

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x2

    aput v1, v2, v3

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mUsbMode:[I

    aget v1, v1, v3

    invoke-direct {p0, v3, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setUsbMode(II)V

    :cond_e
    const-string v1, "SET_CAMERA_CONFIG"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mCameraConfig:I

    :cond_f
    const-string v1, "SET_FILTER_PATH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_10

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mFilterPath:I

    :cond_10
    const-string v1, "three_lamp_setting_state"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_11

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mThreeLampSettingOpen:I

    invoke-virtual {p0, v1}, Lcom/nwd/factory/service/FactorySettingManager;->setThreeLampSettingState(I)V

    :cond_11
    const-string v1, "min_backlight"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mMinBackLight:I

    :cond_12
    const-string v1, "caraudio_channel"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_13

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAudioChannel:I

    :cond_13
    const-string v1, "caraux_switch"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_14

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAuxSwitch:I

    :cond_14
    const-string v1, "speaker_switch"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_15

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mSpeakerSwitch:I

    :cond_15
    const-string v1, "SET_LOGO_SETUP_SWITCH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_16

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mLogoSetupSwitch:Ljava/lang/String;

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setLogoSetUpSwitch(Ljava/lang/String;)V

    :cond_16
    const-string v1, "SET_GSENSOR_SETUP_SWITCH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_2

    :cond_17
    const/4 v1, 0x0

    :goto_2
    sput-boolean v1, Lcom/nwd/factory/service/FactorySettingManager;->mGsensorEnable:Z

    :cond_18
    const-string v1, "SET_LIGHTSENSITIVE_SETUP_SWITCH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mLightSensitiveSwitch:I

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v2, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setLightSensitiveSettingOpen(I)V

    :cond_19
    const-string v1, "HD_BACKCAR_TYPE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackCarTpye:I

    :cond_1a
    const-string v1, "RIGHT_VIEW_CAMERA"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mRightViewCameraId:I

    :cond_1b
    const-string v1, "UART_FUN_MODE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mUartFunMode:I

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "uart_fun_mode"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :cond_1c
    const-string v1, "CMD_MIC_GAIN"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mMicGain:I

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "key_mic_gain"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :cond_1d
    const-string v1, "CMD_BACKCAR_VIDEO_MODE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1e

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarVideoMode:Ljava/lang/String;

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "key_backcar_video_mode"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    const-string v1, "CMD_CAR_VIDEO_MODE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1f

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarVideoMode:Ljava/lang/String;

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "key_car_video_mode"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    const-string v1, "brightness"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_20

    iget-object v2, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nwd/factory/FactoryUtils;->setBrightness(Landroid/content/Context;I)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "display_setting_brightness"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    const-string v1, "contrast"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_21

    iget-object v2, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nwd/factory/FactoryUtils;->setContrast(Landroid/content/Context;I)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "display_setting_contrast"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    const-string v1, "color"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_22

    iget-object v2, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nwd/factory/FactoryUtils;->setHue(Landroid/content/Context;I)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "display_setting_color"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string v1, "saturation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v2, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3}, Lcom/nwd/factory/FactoryUtils;->setSatuation(Landroid/content/Context;I)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "display_setting_saturation"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    const-string v1, "avdd"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nwd/factory/FactoryUtils;->setLcdAvdd(I)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "display_setting_avdd"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-string v1, "vcom"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ATTR_VCOM="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v1, :cond_25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/nwd/factory/FactoryUtils;->setVCom(I)V

    sget-object v2, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    const-string v3, "display_setting_vcom"

    invoke-virtual {v2, v3, v1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :cond_25
    const-string v1, "SET_COMM_MODULE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_26

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mCommModule:Ljava/lang/String;

    :cond_26
    const-string v1, "SET_QR_CODE_ACTIVATE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_27

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mQRCodeActivate:Ljava/lang/String;

    :cond_27
    const-string v1, "SET_ACCELERATE_BACKCAR"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mAccelerateBackcar:I

    :cond_28
    const-string v1, "SET_CAR_DOOR_DISTURB"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarDoorDisturb:I

    :cond_29
    const-string v1, "SET_DOUBLE_MIC"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2a

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mDoubleMic:Ljava/lang/String;

    :cond_2a
    const-string v1, "SET_WL_DVR_PACKNAME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2b

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mWLDvrPackName:Ljava/lang/String;

    :cond_2b
    const-string v1, "SET_AMP"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mAmpState:I

    :cond_2c
    const-string v1, "CMD_SET_TP_ESD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mTpEsd:I

    :cond_2d
    const-string v1, "CMD_SET_LIMIT_INSTALL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mLimitInstall:I

    :cond_2e
    const-string v1, "CMD_SET_SIM_SWITCH"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_2f

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mSimSwitch:Ljava/lang/String;

    :cond_2f
    const-string v1, "CMD_SET_XX_RADAR"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mXXRadar:I

    :cond_30
    const-string v1, "CMD_SET_RADIO_ANTENNA"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_31

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAntennaState:I

    :cond_31
    const-string v1, "CMD_SET_AVM_ENABLE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_32

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mAvmEnable:I

    :cond_32
    iget-object v1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/nwd/factory/FactoryUtils;->isLongScreen(Landroid/content/Context;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v2, "1"

    if-eqz v1, :cond_34

    :try_start_2
    const-string v1, "CMD_SET_LONG_SCREEN_ROTATE_ENABLE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_33

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    sput-boolean p2, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    goto :goto_3

    :cond_33
    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mLongScreenRotateEnable:Z

    :cond_34
    :goto_3
    const-string v1, "CMD_SET_BACKCAR_DI_ENABLE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_35

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sput-boolean p2, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    goto :goto_4

    :cond_35
    sput-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarDiEnable:Z

    :goto_4
    const-string v1, "CMD_SET_BACKCAR_AGC_ENABLE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_36

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarAgcEnable:Ljava/lang/String;

    :cond_36
    const-string v1, "CMD_SET_LCD_BIT"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_37

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mLcdBitMode:I

    :cond_37
    const-string v1, "CMD_SET_SMOOTH_LEVEL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mSmoothLevel:I

    :cond_38
    const-string v1, "CMD_SET_BT_MIC_LEVEL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_39

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mBtMicGain:I

    :cond_39
    const-string v1, "CMD_SET_CAR_ASS"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mCarAss:I

    :cond_3a
    const-string v1, "CMD_SET_TVOUT_STANDARD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3b

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutStandard:Ljava/lang/String;

    :cond_3b
    const-string v1, "CMD_SET_HD_BACKCAR_STANDARD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mHDBackcarStandard:I

    :cond_3c
    const-string v1, "CMD_SET_BOOT_MENU"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3d

    sput-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mBootMenu:Ljava/lang/String;

    :cond_3d
    const-string v1, "CMD_SET_BACKCAR_BLACK_TIME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mShowBackCarBlackTime:I

    :cond_3e
    const-string v1, "CMD_SET_IPS_DELAY_TIME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mIpsDelayTime:I

    :cond_3f
    const-string v1, "CMD_SET_LOW_VOLTAGE_TIME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mLowVoltageTime:I

    :cond_40
    const-string v1, "CMD_SET_SLEEP_POWER_OFF"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_41

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mSleepPowerOff:I

    :cond_41
    const-string v1, "CMD_SET_AUDIO_PHASE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mAudioPhase:I

    :cond_42
    const-string v1, "CMD_SET_FXP_TOLERANCE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mMcuFxpTolerance:I

    :cond_43
    const-string v1, "CMD_SET_DELAY_OPEN_LCD"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_44

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mDelayInitLcd:I

    :cond_44
    const-string v1, "CMD_TV_AUDIO_CHANNEL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvAudioChannel:I

    :cond_45
    const-string v1, "CMD_TV_VIDEO_CHANNEL"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvVideoChannel:I

    :cond_46
    const-string v1, "CMD_SET_BACKCAR_FULLSCREEN"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_47

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mBackcarFullScreen:I

    :cond_47
    const-string v1, "CMD_SET_TVOUT_ENABLE"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sput v1, Lcom/nwd/factory/service/FactorySettingManager;->mTvOutEnable:I

    :cond_48
    const-string v1, "CMD_SET_BT_NAME"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_49

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mBtDefaultName:Ljava/lang/String;

    :cond_49
    iget-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->clearState(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    :goto_5
    return p2
.end method

.method public setDTvModuleStyle(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDTvModuleStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mDTvModuleStyle:B

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtv_type"

    invoke-static {v0, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public setDVRModuleStyle(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mDVRModuleStyle:B

    return-void
.end method

.method public setDataChangeListener(Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;)V
    .locals 1

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mPanelStudyManager:Lcom/nwd/factory/service/PanelStudyManager;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/service/PanelStudyManager;->setDataChangeListener(Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;)V

    return-void
.end method

.method public setKernelFeature(Lcom/nwd/kernel/aidl/IKernelFeature;)V
    .locals 0

    iput-object p1, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    return-void
.end method

.method public setPanelType(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "none"

    :goto_0
    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    sget-object p1, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mstrPanelPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/nwd/factory/service/FactorySettingManager;->mstrPanelPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public setRadioAMSensitivity(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioAMSensitivity:B

    return-void
.end method

.method public setRadioLightSensitivity(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioLightSensitivity:B

    return-void
.end method

.method public setRadioModuleStyle(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioModuleStyle:B

    return-void
.end method

.method public setRadioSensitivity(B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mRadioSensitivity:B

    return-void
.end method

.method public setSteerwheelType(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-object p1, Lcom/nwd/factory/service/FactorySettingManager;->mstrFxpPath:Ljava/lang/String;

    return-void
.end method

.method public setThreeLampSettingState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mThreeLampSettingOpen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setThreeLampSettingOpen(I)V

    return-void
.end method

.method public setTurbineKey(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mbTurbineOpen:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aput-boolean p2, v0, p1

    :cond_0
    return-void
.end method

.method public setTvModuleStyle(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput-byte p1, Lcom/nwd/factory/service/FactorySettingManager;->mTvModuleStyle:B

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "atv_type"

    invoke-static {v0, v1, p1}, Lcom/nwd/factory/FactoryTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    return-void
.end method

.method public setVoiceAnalyzeState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sput p1, Lcom/nwd/factory/service/FactorySettingManager;->mVoiceAnalyzeOpen:I

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mFactoryConfigSetting:Lcom/nwd/factory/config/FactoryConfigSetting;

    invoke-virtual {v0, p1}, Lcom/nwd/factory/config/FactoryConfigSetting;->setVoiceAnalyzeOpen(I)V

    return-void
.end method

.method public sleep(J)V
    .locals 0

    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public startQuery()V
    .locals 2

    sget-boolean v0, Lcom/nwd/factory/service/FactorySettingManager;->mbImported:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "startQuery()"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0x11

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0x12

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0x19

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    iget-object v0, p0, Lcom/nwd/factory/service/FactorySettingManager;->mKernelFeature:Lcom/nwd/kernel/aidl/IKernelFeature;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/nwd/factory/service/FactorySettingProtocalUtils;->startAudioQuery(Lcom/nwd/kernel/aidl/IKernelFeature;B)V

    invoke-virtual {p0}, Lcom/nwd/factory/service/FactorySettingManager;->readConfig()V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->LOG:Lcom/android/utils/log/JLog;

    const-string v1, "is imported so don\'t startQuery()"

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public unregistFactoryCallback(Lcom/nwd/factory/service/FactoryCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/nwd/factory/service/FactorySettingManager;->mDataChangeListener:Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;->unregistCallback(Lcom/nwd/factory/service/FactoryCallback;)V

    :cond_0
    return-void
.end method
