.class Lcom/android/utils/ui/lyric/Lyric$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/utils/ui/lyric/Lyric;->getMathedLyricFile(Ljava/io/File;Lcom/android/utils/ui/lyric/MusicInfo;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/utils/ui/lyric/Lyric;


# direct methods
.method constructor <init>(Lcom/android/utils/ui/lyric/Lyric;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/ui/lyric/Lyric$2;->this$0:Lcom/android/utils/ui/lyric/Lyric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, ".lrc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
