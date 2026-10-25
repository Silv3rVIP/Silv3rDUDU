.class Lcom/nwd/dsp/uitls/DspData$SingletonClassInstance;
.super Ljava/lang/Object;
.source "DspData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/dsp/uitls/DspData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonClassInstance"
.end annotation


# static fields
.field private static final instance:Lcom/nwd/dsp/uitls/DspData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 142
    new-instance v0, Lcom/nwd/dsp/uitls/DspData;

    invoke-direct {v0}, Lcom/nwd/dsp/uitls/DspData;-><init>()V

    sput-object v0, Lcom/nwd/dsp/uitls/DspData$SingletonClassInstance;->instance:Lcom/nwd/dsp/uitls/DspData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/nwd/dsp/uitls/DspData;
    .locals 1

    .line 141
    sget-object v0, Lcom/nwd/dsp/uitls/DspData$SingletonClassInstance;->instance:Lcom/nwd/dsp/uitls/DspData;

    return-object v0
.end method
