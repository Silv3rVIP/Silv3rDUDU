.class public interface abstract Lcom/nwd/setting/service/SettingConstant$McuUpdateState;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/setting/service/SettingConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "McuUpdateState"
.end annotation


# static fields
.field public static final CMD_ENTER_UPDATE:B = 0x2t

.field public static final CMD_HAVE_UPDATE:B = 0x3t

.field public static final CMD_HAVE_UPDATE_VERIFY:B = 0x1t

.field public static final ERROR_TYPE_CLIENT:B = 0x2t

.field public static final ERROR_TYPE_MACHINE:B = 0x4t

.field public static final ERROR_TYPE_MCU:B = 0x1t

.field public static final KEY_CANCEL:B = 0x2t

.field public static final KEY_CONFIRM:B = 0x1t

.field public static final KEY_EXIT:B = 0x3t

.field public static final STATE_ENTER_UPDATE:B = 0x2t

.field public static final STATE_REQUEST_ENTER_UPDATE:B = 0x1t

.field public static final STATE_REQUEST_INSERT_SDCARD:B = 0x4t

.field public static final STATE_UPDATE_ERROR:B = 0x10t

.field public static final STATE_UPDATE_FINISH:B = 0x3t
