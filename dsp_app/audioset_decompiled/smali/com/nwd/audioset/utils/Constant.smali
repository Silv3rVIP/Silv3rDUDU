.class public Lcom/nwd/audioset/utils/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final EQ_FREQUENCY_COMMON:[Ljava/lang/String;

.field public static final customIndex:I = 0x5

.field public static final eq10_gain_def:I = 0x3

.field public static final eqIndex:Ljava/lang/String; = "eqIndex"

.field public static final eq_class:[I

.field public static final eq_jazz:[I

.field public static final eq_pop:[I

.field public static final eq_rock:[I

.field public static final eq_standard:[I

.field public static final index_125hz:I = 0x2

.field public static final index_16khz:I = 0x9

.field public static final index_1khz:I = 0x5

.field public static final index_250hz:I = 0x3

.field public static final index_2khz:I = 0x6

.field public static final index_32hz:I = 0x0

.field public static final index_4khz:I = 0x7

.field public static final index_500hz:I = 0x4

.field public static final index_64hz:I = 0x1

.field public static final index_8khz:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "32hz"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "64hz"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "125hz"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "250hz"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "500hz"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1khz"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "2khz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "4khz"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "8khz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "16khz"

    aput-object v2, v0, v1

    const-string v1, "8k"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const/16 v1, 0xb

    const-string v3, "10k"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "12k"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "16"

    aput-object v3, v0, v1

    .line 9
    sput-object v0, Lcom/nwd/audioset/utils/Constant;->EQ_FREQUENCY_COMMON:[Ljava/lang/String;

    new-array v0, v2, [I

    .line 24
    fill-array-data v0, :array_0

    sput-object v0, Lcom/nwd/audioset/utils/Constant;->eq_standard:[I

    new-array v0, v2, [I

    .line 25
    fill-array-data v0, :array_1

    sput-object v0, Lcom/nwd/audioset/utils/Constant;->eq_pop:[I

    new-array v0, v2, [I

    .line 26
    fill-array-data v0, :array_2

    sput-object v0, Lcom/nwd/audioset/utils/Constant;->eq_rock:[I

    new-array v0, v2, [I

    .line 27
    fill-array-data v0, :array_3

    sput-object v0, Lcom/nwd/audioset/utils/Constant;->eq_class:[I

    new-array v0, v2, [I

    .line 28
    fill-array-data v0, :array_4

    sput-object v0, Lcom/nwd/audioset/utils/Constant;->eq_jazz:[I

    return-void

    :array_0
    .array-data 4
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x3
        0x2
        0x3
        0x4
        0x4
        0x5
        0x3
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x4
        0x5
        0x6
        0x3
        0x2
        0x3
        0x4
        0x5
        0x4
    .end array-data

    :array_3
    .array-data 4
        0x4
        0x5
        0x6
        0x5
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
    .end array-data

    :array_4
    .array-data 4
        0x5
        0x4
        0x5
        0x6
        0x4
        0x1
        0x1
        0x3
        0x4
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
