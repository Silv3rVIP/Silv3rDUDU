.class Lcom/nwd/audioset/home_horizontalActivity1$2;
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

    .line 376
    iput-object p1, p0, Lcom/nwd/audioset/home_horizontalActivity1$2;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1$2;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    invoke-static {v0}, Lcom/nwd/audioset/home_horizontalActivity1;->access$100(Lcom/nwd/audioset/home_horizontalActivity1;)Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;

    move-result-object v0

    iget-object v1, p0, Lcom/nwd/audioset/home_horizontalActivity1$2;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/nwd/audioset/home_horizontalActivity1;->access$000(Lcom/nwd/audioset/home_horizontalActivity1;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/nwd/audioset/view/nwdview/NoScrollViewPager;->setCurrentItem(I)V

    .line 382
    iget-object v0, p0, Lcom/nwd/audioset/home_horizontalActivity1$2;->this$0:Lcom/nwd/audioset/home_horizontalActivity1;

    const-string v1, "com.nwd.audioset.view.fragment.draw.MainFragment"

    invoke-static {v0, v1}, Lcom/nwd/audioset/home_horizontalActivity1;->access$200(Lcom/nwd/audioset/home_horizontalActivity1;Ljava/lang/String;)V

    return-void
.end method
