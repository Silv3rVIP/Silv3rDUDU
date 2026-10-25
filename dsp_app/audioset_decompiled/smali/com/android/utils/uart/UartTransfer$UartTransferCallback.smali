.class public interface abstract Lcom/android/utils/uart/UartTransfer$UartTransferCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/uart/UartTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "UartTransferCallback"
.end annotation


# virtual methods
.method public abstract notifyConnected()V
.end method

.method public abstract notifyDisconnected()V
.end method

.method public abstract notifyUartData([B)V
.end method
