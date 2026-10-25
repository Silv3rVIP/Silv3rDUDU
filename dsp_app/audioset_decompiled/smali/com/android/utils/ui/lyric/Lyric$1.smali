.class Lcom/android/utils/ui/lyric/Lyric$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/ui/lyric/Lyric;-><init>(Lcom/android/utils/ui/lyric/MusicInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/lyric/Lyric;

.field final synthetic val$info:Lcom/android/utils/ui/lyric/MusicInfo;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/lyric/Lyric;Lcom/android/utils/ui/lyric/MusicInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/lyric/Lyric$1;->this$0:Lcom/android/utils/ui/lyric/Lyric;

    iput-object p2, p0, Lcom/android/utils/ui/lyric/Lyric$1;->val$info:Lcom/android/utils/ui/lyric/MusicInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric$1;->this$0:Lcom/android/utils/ui/lyric/Lyric;

    iget-object v1, p0, Lcom/android/utils/ui/lyric/Lyric$1;->val$info:Lcom/android/utils/ui/lyric/MusicInfo;

    invoke-static {v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->access$000(Lcom/android/utils/ui/lyric/Lyric;Lcom/android/utils/ui/lyric/MusicInfo;)V

    iget-object v0, p0, Lcom/android/utils/ui/lyric/Lyric$1;->this$0:Lcom/android/utils/ui/lyric/Lyric;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/utils/ui/lyric/Lyric;->access$102(Lcom/android/utils/ui/lyric/Lyric;Z)Z

    return-void
.end method
