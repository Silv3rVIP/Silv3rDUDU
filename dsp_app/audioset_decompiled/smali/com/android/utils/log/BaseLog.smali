.class public Lcom/android/utils/log/BaseLog;
.super Ljava/lang/Object;


# static fields
.field private static iLog:Lcom/android/utils/log/JLog;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/utils/log/JLog;

    const-string v1, "base"

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZI)V

    sput-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static print()V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0}, Lcom/android/utils/log/JLog;->print()V

    return-void
.end method

.method public static print(I)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(I)V

    return-void
.end method

.method public static print(J)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0, p1}, Lcom/android/utils/log/JLog;->print(J)V

    return-void
.end method

.method public static print(Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static print(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;I)V

    return-void
.end method

.method public static print(Z)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->print(Z)V

    return-void
.end method

.method public static setPrint(Z)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->setPrint(Z)V

    return-void
.end method

.method public static setTag(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/utils/log/BaseLog;->iLog:Lcom/android/utils/log/JLog;

    invoke-virtual {v0, p0}, Lcom/android/utils/log/JLog;->setTag(Ljava/lang/String;)V

    return-void
.end method
