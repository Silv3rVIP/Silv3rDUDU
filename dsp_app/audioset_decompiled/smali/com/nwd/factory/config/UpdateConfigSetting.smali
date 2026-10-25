.class public Lcom/nwd/factory/config/UpdateConfigSetting;
.super Lcom/nwd/factory/config/AbsConfigSetting;


# static fields
.field private static final KEY_BT_UPDATE_PATH:Ljava/lang/String; = "bt_update_path"

.field private static final KEY_CAMERA_AUX:Ljava/lang/String; = "camera_aux"

.field private static final KEY_CAMERA_CCD:Ljava/lang/String; = "camera_ccd"

.field private static final KEY_CAMERA_DVR:Ljava/lang/String; = "camera_dvr"

.field private static final KEY_CAMERA_RIGHTVIEW:Ljava/lang/String; = "camera_rightview"

.field private static final KEY_CAMERA_TV:Ljava/lang/String; = "camera_tv"

.field private static final KEY_CAMERA_TV2:Ljava/lang/String; = "camera_tv2"

.field private static final KEY_CAMERA_TV_TEMP:Ljava/lang/String; = "camera_tv_temp"

.field private static final KEY_CAN_FRAME_SIZE:Ljava/lang/String; = "can_frame_size"

.field private static final KEY_CAN_UPDATE_PATH:Ljava/lang/String; = "can_update_path"

.field private static final KEY_DVR_RECORD_PATH:Ljava/lang/String; = "usb_dvr_save_path"

.field private static final KEY_FILTER_DVR_PATH:Ljava/lang/String; = "key_filter_dvr_path"

.field private static final KEY_GSENSOR_ENABLE:Ljava/lang/String; = "key_gsensor_enable"

.field private static final KEY_MCU_UPDATE_MODE:Ljava/lang/String; = "mcu_update_mode"

.field private static final KEY_MCU_UPDATE_PATH:Ljava/lang/String; = "mcu_update_path"

.field private static final KEY_MIN_BRIGHTNESS:Ljava/lang/String; = "key_os_min_brightness"

.field private static final KEY_OS_UPDATE_MODE:Ljava/lang/String; = "os_update_mode"

.field private static final KEY_OS_UPDATE_PATH:Ljava/lang/String; = "os_update_path"

.field private static final KEY_VIDEO_SIGNAL_AUX:Ljava/lang/String; = "video_signal_aux"

.field private static final KEY_VIDEO_SIGNAL_CCD:Ljava/lang/String; = "video_signal_ccd"

.field private static final KEY_VIDEO_SIGNAL_DVR:Ljava/lang/String; = "video_signal_dvr"

.field private static final KEY_VIDEO_SIGNAL_RIGHTVIEW:Ljava/lang/String; = "video_signal_rightview"

.field private static final KEY_VIDEO_SIGNAL_TV:Ljava/lang/String; = "video_signal_tv"

.field private static final KEY_VIDEO_SIGNAL_TV2:Ljava/lang/String; = "video_signal_tv2"

.field private static final KEY_VIDEO_SIGNAL_TV_TEMP:Ljava/lang/String; = "video_signal_tv_temp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/nwd/factory/config/AbsConfigSetting;-><init>()V

    return-void
.end method

.method public static clearState(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    const-string v2, "camera_rightview"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "video_signal_rightview"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_ccd"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "video_signal_ccd"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "camera_tv"

    invoke-static {v0, v2, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "video_signal_tv"

    invoke-static {p0, v0, v1}, Lcom/nwd/kernel/source/SettingTableKey;->writeDataToTable(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getBtUpdatePath()Ljava/lang/String;
    .locals 1

    const-string v0, "bt_update_path"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCameraConfig()I
    .locals 4

    const-string v0, "camera_ccd"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nwd/factory/config/UpdateConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_CAMERA_CCD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCanFrameSize()I
    .locals 1

    const-string v0, "can_frame_size"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCanUpdatePath()Ljava/lang/String;
    .locals 1

    const-string v0, "can_update_path"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDVRRecordPath()Ljava/lang/String;
    .locals 1

    const-string v0, "usb_dvr_save_path"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFilterDvrPath()Ljava/lang/String;
    .locals 1

    const-string v0, "key_filter_dvr_path"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGsensorEnable()Z
    .locals 2

    const-string v0, "key_gsensor_enable"

    const-string v1, "0"

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getMcuUpdatePath()Ljava/lang/String;
    .locals 1

    const-string v0, "mcu_update_path"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinBackLight()I
    .locals 2

    const-string v0, "key_os_min_brightness"

    const-string v1, "50"

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/16 v0, 0x32

    :goto_0
    return v0
.end method

.method public getOsUpdatePath()Ljava/lang/String;
    .locals 1

    const-string v0, "os_update_path"

    invoke-virtual {p0, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRightViewCameraId()I
    .locals 2

    invoke-virtual {p0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v1, "camera_rightview"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v1, "camera_dvr"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public getRightViewChannal()I
    .locals 2

    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v1, "camera_rightview"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v1, "camera_dvr"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_1
    return v0
.end method

.method public getRightViewVideoSignal()I
    .locals 4

    invoke-virtual {p0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v2, "video_signal_rightview"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v2, "video_signal_dvr"

    invoke-virtual {v0, v2}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_1
    invoke-virtual {p0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    return v1
.end method

.method public getTvChannal()I
    .locals 3

    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v1, "camera_tv_temp"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->getPropertiesInteger(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    const-string v1, "camera_tv"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return v2
.end method

.method protected onGetConfigPath()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/io/File;

    const-string v1, "/cache/UpdateConfig.ini"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/UpdateConfigSetting;->SDCARD_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/backups/UpdateConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-nez v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/nwd/factory/config/UpdateConfigSetting;->CONFIG_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/app/UpdateConfig.ini"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    sget-object v0, Lcom/nwd/factory/config/UpdateConfigSetting;->LOG:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, v1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-object v1
.end method

.method public setBtUpdatePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bt_update_path"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCameraConfig(I)V
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "camera_tv_temp"

    const-string v2, "video_signal_ccd"

    const-string v3, "video_signal_tv2"

    const-string v4, "camera_tv2"

    const-string v5, "video_signal_dvr"

    const-string v6, "camera_dvr"

    const-string v7, "video_signal_aux"

    const-string v8, "camera_aux"

    const-string v9, "video_signal_tv"

    const-string v10, "camera_tv"

    const-string v11, "camera_ccd"

    const-string v12, "4"

    const-string v13, "2"

    if-lez p1, :cond_0

    invoke-virtual {v1, v8, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v12}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v12}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v12}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v12}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v12}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_0
    :try_start_0
    new-instance v14, Ljava/util/Properties;

    invoke-direct {v14}, Ljava/util/Properties;-><init>()V

    new-instance v15, Ljava/io/FileInputStream;

    move-object/from16 v16, v3

    const-string v3, "/system/config/app/UpdateConfig.ini"

    invoke-direct {v15, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v15}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v14, v11}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p1, v15

    const-string v15, "0"

    move-object/from16 v17, v4

    const-string v4, "3"

    move-object/from16 v18, v5

    const-string v5, "1"

    if-eqz v3, :cond_2

    :try_start_1
    invoke-virtual {v14, v11}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v11, v4}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v8, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v8, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v7, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/nwd/factory/config/UpdateConfigSetting;->mProperties:Ljava/util/Properties;

    invoke-virtual {v2, v0, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v9, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v14, v10, v15}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14, v9, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v14, v6, v13}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v6, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v14, v0, v12}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v3, v17

    invoke-virtual {v14, v3, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v14, v16

    move-object/from16 v3, v17

    move-object/from16 v0, v18

    invoke-virtual {v1, v8, v5}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7, v5}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v11, v4}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v10, v15}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v9, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v13}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v12}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v5}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v14, v5}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public setCanFrameSize(I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "can_frame_size"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCanUpdatePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "can_update_path"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDVRRecordPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "usb_dvr_save_path"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFilterDVRPath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key_filter_dvr_path"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setGsensorEnable(Z)V
    .locals 1

    const-string v0, "key_gsensor_enable"

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMcuUpdatePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "mcu_update_path"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMinBackLight(I)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_os_min_brightness"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setOsUpdatePath(Ljava/lang/String;)V
    .locals 1

    const-string v0, "os_update_path"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setProperties(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRightViewChannel(IZ)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "video_signal_rightview"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :goto_1
    const-string v0, "camera_rightview"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/nwd/factory/config/UpdateConfigSetting;->savetosdcard()V

    :cond_3
    return-void
.end method

.method public setTvChannel(IZ)V
    .locals 6

    const-string v0, "video_signal_tv_temp"

    const/4 v1, 0x4

    const/4 v2, 0x2

    const-string v3, "video_signal_tv"

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    if-eq p1, v2, :cond_2

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v3, v5}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v5}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v4}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v0, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :goto_0
    sub-int/2addr p1, v4

    const-string v0, "camera_tv"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/nwd/factory/config/UpdateConfigSetting;->getCameraConfig()I

    move-result v5

    if-ne v5, v4, :cond_4

    invoke-virtual {p0, v0, v2}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    invoke-virtual {p0, v3, v1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    :cond_4
    const-string v0, "camera_tv_temp"

    invoke-virtual {p0, v0, p1}, Lcom/nwd/factory/config/UpdateConfigSetting;->setPropertiesInteger(Ljava/lang/String;I)V

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/nwd/factory/config/UpdateConfigSetting;->savetosdcard()V

    :cond_5
    return-void
.end method
