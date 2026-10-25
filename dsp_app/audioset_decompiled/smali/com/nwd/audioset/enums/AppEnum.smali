.class public final enum Lcom/nwd/audioset/enums/AppEnum;
.super Ljava/lang/Enum;
.source "AppEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/nwd/audioset/enums/AppEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/nwd/audioset/enums/AppEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/nwd/audioset/enums/AppEnum;

    .line 4
    sput-object v0, Lcom/nwd/audioset/enums/AppEnum;->$VALUES:[Lcom/nwd/audioset/enums/AppEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/nwd/audioset/enums/AppEnum;
    .locals 1

    .line 4
    const-class v0, Lcom/nwd/audioset/enums/AppEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/nwd/audioset/enums/AppEnum;

    return-object p0
.end method

.method public static values()[Lcom/nwd/audioset/enums/AppEnum;
    .locals 1

    .line 4
    sget-object v0, Lcom/nwd/audioset/enums/AppEnum;->$VALUES:[Lcom/nwd/audioset/enums/AppEnum;

    invoke-virtual {v0}, [Lcom/nwd/audioset/enums/AppEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nwd/audioset/enums/AppEnum;

    return-object v0
.end method
