.class public interface abstract Lcom/nwd/kernel/source/protocal/ActionProtocalUtil$ActionCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/source/protocal/ActionProtocalUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ActionCallback"
.end annotation


# static fields
.field public static final WHERE_LAST_APP_CHANGE_SOURCE:B = 0x3t

.field public static final WHERE_LAST_SOURCE:B = 0x0t

.field public static final WHERE_LAUNCHER_CHANGE_SOURCE_TO_ANDROID:B = 0x2t

.field public static final WHERE_LAUNCHER_NO_CHANGE_SOURCE:B = 0x1t


# virtual methods
.method public abstract notifyBackLightSwitch(B)V
.end method

.method public abstract notifyChangeSourceStatus(BBZ)V
.end method

.method public abstract notifyDeviceRotateState(B)V
.end method

.method public abstract notifyKeyPress(BBZ)V
.end method

.method public abstract notifyMuteState(B)V
.end method

.method public abstract notifyPopSource(B)V
.end method
