.class public Lcom/android/utils/ui/lyric/LyricConfig;
.super Ljava/lang/Object;


# static fields
.field public static H_SPACE:I = 0x2

.field public static final LP_STATE_H:I = 0x1

.field public static final LP_STATE_V:I = 0x0

.field public static final LYRIC_CENTER_ALIGN:I = 0x3

.field public static final LYRIC_LEFT_ALIGN:I = 0x1

.field public static final LYRIC_RIGHT_ALIGN:I = 0x2

.field public static L_SPACE:I = 0x5

.field public static R_SPACE:I = 0x5

.field public static V_SPACE:I = 0xa

.field public static isAntiAliasing:Z = true

.field public static isAutoResize:Z = true

.field public static isCutBlankChars:Z = true

.field public static isKaraoke:Z = true

.field public static isLyricShadow:Z = true

.field public static isTransparency:Z = true

.field public static layoutState:I = 0x0

.field public static lyricAlignMode:I = 0x0

.field public static lyricBackgroundColor:I = 0x0

.field public static lyricForegroundColor:I = 0x0

.field public static lyricHilightColor:I = 0x0

.field public static refreshInterval:I = 0x0

.field public static saveLyricDir:Ljava/io/File; = null

.field public static sdCardDir:Ljava/io/File; = null

.field public static searchLyricDirs:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field public static textSize:I = 0x1c


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0xa2

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    sput v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricHilightColor:I

    const/4 v1, -0x1

    sput v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricForegroundColor:I

    const/high16 v1, -0x1000000

    sput v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricBackgroundColor:I

    const/4 v1, 0x3

    sput v1, Lcom/android/utils/ui/lyric/LyricConfig;->lyricAlignMode:I

    const/16 v1, 0x64

    sput v1, Lcom/android/utils/ui/lyric/LyricConfig;->refreshInterval:I

    sput v0, Lcom/android/utils/ui/lyric/LyricConfig;->layoutState:I

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/utils/ui/lyric/LyricConfig;->sdCardDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/NWD_Music_Lyric/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/utils/ui/lyric/LyricConfig;->saveLyricDir:Ljava/io/File;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/utils/ui/lyric/LyricConfig;->searchLyricDirs:Ljava/util/List;

    sget-object v1, Lcom/android/utils/ui/lyric/LyricConfig;->sdCardDir:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/utils/ui/lyric/LyricConfig;->searchLyricDirs:Ljava/util/List;

    sget-object v1, Lcom/android/utils/ui/lyric/LyricConfig;->saveLyricDir:Ljava/io/File;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
