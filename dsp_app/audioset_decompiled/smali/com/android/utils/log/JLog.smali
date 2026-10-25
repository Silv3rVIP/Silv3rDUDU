.class public Lcom/android/utils/log/JLog;
.super Ljava/lang/Object;


# static fields
.field public static final LOG_ID_MAIN:I = 0x0

.field public static final LOG_ID_SYSTEM:I = 0x3

.field public static final TYPE_DEBUG:I = 0x3

.field public static final TYPE_ERROR:I = 0x5

.field public static final TYPE_INFO:I = 0x1

.field public static final TYPE_VERBOSE:I = 0x0

.field public static final TYPE_WARN:I = 0x4


# instance fields
.field private iTag:Ljava/lang/String;

.field isPrint:Z

.field private mBufferId:I

.field mDefaultType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/utils/log/JLog;->mDefaultType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/log/JLog;->mBufferId:I

    const-string v0, "base"

    iput-object v0, p0, Lcom/android/utils/log/JLog;->iTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/utils/log/JLog;-><init>(Ljava/lang/String;ZII)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/utils/log/JLog;->mDefaultType:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/utils/log/JLog;->mBufferId:I

    const-string v0, "base"

    iput-object v0, p0, Lcom/android/utils/log/JLog;->iTag:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/utils/log/JLog;->setPrint(Z)V

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->setTag(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/utils/log/JLog;->setDefaultType(I)V

    invoke-virtual {p0, p4}, Lcom/android/utils/log/JLog;->setBufferId(I)V

    return-void
.end method


# virtual methods
.method public print()V
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/android/utils/log/JLog;->mDefaultType:I

    invoke-virtual {p0, p1, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;I)V

    return-void
.end method

.method public print(Ljava/lang/String;I)V
    .locals 1

    iget v0, p0, Lcom/android/utils/log/JLog;->mBufferId:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;II)V

    return-void
.end method

.method public print(Ljava/lang/String;II)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/utils/log/JLog;->isPrint:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    if-eqz p2, :cond_3

    const/4 v1, 0x1

    if-eq p2, v1, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x6

    goto :goto_0

    :cond_1
    const/4 p2, 0x3

    goto :goto_0

    :cond_2
    const/4 p2, 0x4

    goto :goto_0

    :cond_3
    const/4 p2, 0x2

    :goto_0
    iget-object v0, p0, Lcom/android/utils/log/JLog;->iTag:Ljava/lang/String;

    invoke-static {p3, p2, v0, p1}, Landroid/util/Log;->println_native(IILjava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-static {}, Lcom/android/utils/log/FileLogUtils;->isWriteLog()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {}, Lcom/android/utils/log/FileLogUtils;->getInstance()Lcom/android/utils/log/FileLogUtils;

    move-result-object p2

    iget-object v0, p0, Lcom/android/utils/log/JLog;->iTag:Ljava/lang/String;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/utils/log/FileLogUtils;->print(Ljava/lang/String;Ljava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public print(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p1, "true"

    goto :goto_0

    :cond_0
    const-string p1, "false"

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    return-void
.end method

.method public print([B)V
    .locals 2

    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/utils/log/JLog;->print([BII)V

    return-void
.end method

.method public print([BII)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/utils/log/JLog;->isPrint:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    if-ge p2, p3, :cond_1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/utils/log/JLog;->print(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setBufferId(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/log/JLog;->mBufferId:I

    return-void
.end method

.method public setDefaultType(I)V
    .locals 0

    iput p1, p0, Lcom/android/utils/log/JLog;->mDefaultType:I

    return-void
.end method

.method public setPrint(Z)V
    .locals 2

    const-string v0, "persist.sys.nwd.app.log.enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/utils/log/JLog;->isPrint:Z

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nwdapp_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/utils/log/JLog;->iTag:Ljava/lang/String;

    return-void
.end method
