.class public interface abstract Lcom/nwd/factory/can/CanFactorySettingUtil$ICanCopyListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/factory/can/CanFactorySettingUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ICanCopyListener"
.end annotation


# static fields
.field public static final RESULT_ERR:I = -0x1

.field public static final RESULT_ERR_NO_FILE:I = -0x2

.field public static final RESULT_OK:I


# virtual methods
.method public abstract onCanCopyFinish(I)V
.end method

.method public abstract onCanCopyProgress(II)V
.end method
