.class public interface abstract Lcom/android/utils/ui/lyric/LyricView$IAudioPlayController;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/lyric/LyricView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IAudioPlayController"
.end annotation


# virtual methods
.method public abstract getTrackName()Ljava/lang/String;
.end method

.method public abstract isPlaying()Z
.end method

.method public abstract position()J
.end method

.method public abstract seek(J)V
.end method
