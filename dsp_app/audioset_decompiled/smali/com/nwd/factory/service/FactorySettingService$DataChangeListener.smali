.class public interface abstract Lcom/nwd/factory/service/FactorySettingService$DataChangeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/factory/service/FactorySettingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataChangeListener"
.end annotation


# static fields
.field public static final TYPE_ADUIO_GAIN:B = -0x5et

.field public static final TYPE_CARAUX_SWITCH_VALUE:B = 0x12t

.field public static final TYPE_DTV_MODULE_STYLE:B = 0x6t

.field public static final TYPE_DVR_MODULE_STYLE:B = 0x4t

.field public static final TYPE_FACTORY_INFO:I = 0xffff

.field public static final TYPE_HBS_FACTORY:I = 0x0

.field public static final TYPE_PANEL_STUDY_ALL_STATE:B = 0x18t

.field public static final TYPE_PANEL_STUDY_STEP:B = 0x17t

.field public static final TYPE_PANEL_VALUE:B = 0xat

.field public static final TYPE_RADIO_LIGHTSENSITIVITY_VALUE:B = 0xbt

.field public static final TYPE_RADIO_MODULE_STYLE:B = 0x7t

.field public static final TYPE_RADIO_SENSITIVITY_VALUE:B = 0x8t

.field public static final TYPE_SPEAKER_SWITCH_VALUE:B = 0x13t

.field public static final TYPE_STEERWHEEL_VALUE:B = 0x9t

.field public static final TYPE_TURBINE_VALUE:B = 0xct

.field public static final TYPE_TV_MODULE_STYLE:I = 0x1


# virtual methods
.method public varargs abstract onDataChange(I[Ljava/lang/Object;)V
.end method

.method public abstract onDataChangeEx([Ljava/lang/String;)V
.end method

.method public abstract onHbsDataChange([B)V
.end method

.method public abstract onPanelAllStateDataChange([B)V
.end method

.method public abstract registCallback(Lcom/nwd/factory/service/FactoryCallback;)V
.end method

.method public abstract unregistCallback(Lcom/nwd/factory/service/FactoryCallback;)V
.end method
