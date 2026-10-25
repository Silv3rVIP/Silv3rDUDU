.class final enum Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;
.super Ljava/lang/Enum;
.source "DspAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/dsp/uitls/DspAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "BIQUAD_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_BPF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_EQ:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_HIGH_SHELF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_HPF_12DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_HPF_6DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_LOW_SHELF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_LPF_12DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_LPF_6DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

.field public static final enum BIQUAD_TYPE_NOTCH:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 10
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v1, 0x0

    const-string v2, "BIQUAD_TYPE_EQ"

    invoke-direct {v0, v2, v1}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_EQ:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 11
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v2, 0x1

    const-string v3, "BIQUAD_TYPE_LPF_12DB"

    invoke-direct {v0, v3, v2}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_LPF_12DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 12
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v3, 0x2

    const-string v4, "BIQUAD_TYPE_LPF_6DB"

    invoke-direct {v0, v4, v3}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_LPF_6DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 13
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v4, 0x3

    const-string v5, "BIQUAD_TYPE_HPF_12DB"

    invoke-direct {v0, v5, v4}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_HPF_12DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 14
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v5, 0x4

    const-string v6, "BIQUAD_TYPE_HPF_6DB"

    invoke-direct {v0, v6, v5}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_HPF_6DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 15
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v6, 0x5

    const-string v7, "BIQUAD_TYPE_BPF"

    invoke-direct {v0, v7, v6}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_BPF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 16
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v7, 0x6

    const-string v8, "BIQUAD_TYPE_NOTCH"

    invoke-direct {v0, v8, v7}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_NOTCH:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 17
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/4 v8, 0x7

    const-string v9, "BIQUAD_TYPE_LOW_SHELF"

    invoke-direct {v0, v9, v8}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_LOW_SHELF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 18
    new-instance v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/16 v9, 0x8

    const-string v10, "BIQUAD_TYPE_HIGH_SHELF"

    invoke-direct {v0, v10, v9}, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_HIGH_SHELF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    .line 9
    sget-object v11, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_EQ:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v11, v10, v1

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_LPF_12DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v2

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_LPF_6DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v3

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_HPF_12DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v4

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_HPF_6DB:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v5

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_BPF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v6

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_NOTCH:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v7

    sget-object v1, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->BIQUAD_TYPE_LOW_SHELF:Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->$VALUES:[Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;
    .locals 1

    .line 9
    const-class v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;
    .locals 1

    .line 9
    sget-object v0, Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->$VALUES:[Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    invoke-virtual {v0}, [Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nwd/dsp/uitls/DspAlgorithm$BIQUAD_TYPE;

    return-object v0
.end method
