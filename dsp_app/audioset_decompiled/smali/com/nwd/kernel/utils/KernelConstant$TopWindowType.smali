.class public Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nwd/kernel/utils/KernelConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TopWindowType"
.end annotation


# static fields
.field public static final BOTTOM_MENU_LAYER:I = 0x7f5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TOP_MENU_LAYER:I = 0x7f4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOP_LAYER_1:I = 0x7ef
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOP_LAYER_2:I = 0x7f0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOP_LAYER_3:I = 0x7f1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOP_LAYER_4:I = 0x7f2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_TOP_LAYER_5:I = 0x7f3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final BOTTOM_MENU_LAYER()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;->TYPE_TOP_LAYER_1()I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    return v0
.end method

.method public static final TOP_MENU_LAYER()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;->TYPE_TOP_LAYER_1()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public static final TYPE_TOP_LAYER_1()I
    .locals 2

    const-string v0, "ro.nwd.first.window"

    const/16 v1, 0x7ef

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static final TYPE_TOP_LAYER_2()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;->TYPE_TOP_LAYER_1()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static final TYPE_TOP_LAYER_3()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;->TYPE_TOP_LAYER_1()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public static final TYPE_TOP_LAYER_4()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;->TYPE_TOP_LAYER_1()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static final TYPE_TOP_LAYER_5()I
    .locals 1

    invoke-static {}, Lcom/nwd/kernel/utils/KernelConstant$TopWindowType;->TYPE_TOP_LAYER_1()I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    return v0
.end method
