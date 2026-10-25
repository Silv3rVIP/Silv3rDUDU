.class public interface abstract Lcom/android/utils/uart/ICommunicator;
.super Ljava/lang/Object;


# virtual methods
.method public abstract readData([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract writeData([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
