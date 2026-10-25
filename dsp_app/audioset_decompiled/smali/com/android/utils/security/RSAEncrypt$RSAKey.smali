.class public Lcom/android/utils/security/RSAEncrypt$RSAKey;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/security/RSAEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSAKey"
.end annotation


# instance fields
.field private N:I

.field private keyE:Ljava/math/BigInteger;

.field private modulusE:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p2}, Lcom/android/utils/security/RSAEncrypt$RSAKey;->setModulusE(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1}, Lcom/android/utils/security/RSAEncrypt$RSAKey;->setKeyE(Ljava/math/BigInteger;)V

    iput p3, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->N:I

    return-void
.end method


# virtual methods
.method public getKeyE()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->keyE:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getModulusE()Ljava/math/BigInteger;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->modulusE:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->N:I

    return v0
.end method

.method setKeyE(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->keyE:Ljava/math/BigInteger;

    return-void
.end method

.method setModulusE(Ljava/math/BigInteger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->modulusE:Ljava/math/BigInteger;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keyE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->keyE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",modulusE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->modulusE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKey;->N:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
