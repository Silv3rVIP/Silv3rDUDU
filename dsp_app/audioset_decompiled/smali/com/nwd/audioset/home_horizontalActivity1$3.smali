.class Lcom/nwd/audioset/home_horizontalActivity1$3;
.super Ljava/lang/Object;
.source "home_horizontalActivity1.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nwd/audioset/home_horizontalActivity1;->intitFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nwd/audioset/home_horizontalActivity1;


# direct methods
.method constructor <init>(Lcom/nwd/audioset/home_horizontalActivity1;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1$3;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1$3;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-static {v0}, Lcom/nwd/audioset/home_horizontalActivity1;->access$100(Lcom/nwd/audioset/home_horizontalActivity1;)Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setOffscreenPageLimit(I)V

    return-void
.end method
