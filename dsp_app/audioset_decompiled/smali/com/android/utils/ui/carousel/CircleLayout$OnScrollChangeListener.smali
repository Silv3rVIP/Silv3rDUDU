.class public interface abstract Lcom/android/utils/ui/carousel/CircleLayout$OnScrollChangeListener;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/ui/carousel/CircleLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnScrollChangeListener"
.end annotation


# static fields
.field public static final STATE_MOVING:I = 0x1

.field public static final STATE_RELEASE:I = 0x2


# virtual methods
.method public abstract onPageChange(I)V
.end method

.method public abstract onScrollChange(II)V
.end method
