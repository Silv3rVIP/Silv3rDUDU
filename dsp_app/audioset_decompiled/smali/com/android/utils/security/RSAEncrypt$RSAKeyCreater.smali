.class public Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/utils/security/RSAEncrypt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSAKeyCreater"
.end annotation


# instance fields
.field private N:I

.field private iPrivateKey:Lcom/android/utils/security/RSAEncrypt$RSAKey;

.field private iPublicKey:Lcom/android/utils/security/RSAEncrypt$RSAKey;

.field private modulus:Ljava/math/BigInteger;

.field private final one:Ljava/math/BigInteger;

.field private phi0:Ljava/math/BigInteger;

.field private privateKey:Ljava/math/BigInteger;

.field private publicKey:Ljava/math/BigInteger;

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->one:Ljava/math/BigInteger;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->random:Ljava/security/SecureRandom;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->privateKey:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->publicKey:Ljava/math/BigInteger;

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->modulus:Ljava/math/BigInteger;

    return-void
.end method

.method private createPrivateKey()V
    .locals 2

    :cond_0
    iget v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->N:I

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->privateKey:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->phi0:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->privateKey:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->phi0:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void
.end method


# virtual methods
.method public KeyCreater(I)V
    .locals 4

    iput p1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->N:I

    div-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v2}, Ljava/math/BigInteger;->probablePrime(ILjava/util/Random;)Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->one:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->one:Ljava/math/BigInteger;

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iput-object v2, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->phi0:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->modulus:Ljava/math/BigInteger;

    invoke-direct {p0}, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->createPrivateKey()V

    iget-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->privateKey:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->phi0:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->publicKey:Ljava/math/BigInteger;

    new-instance v1, Lcom/android/utils/security/RSAEncrypt$RSAKey;

    iget-object v2, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->modulus:Ljava/math/BigInteger;

    invoke-direct {v1, v0, v2, p1}, Lcom/android/utils/security/RSAEncrypt$RSAKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->iPublicKey:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    new-instance v0, Lcom/android/utils/security/RSAEncrypt$RSAKey;

    iget-object v1, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->privateKey:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->modulus:Ljava/math/BigInteger;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/utils/security/RSAEncrypt$RSAKey;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->iPrivateKey:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    return-void
.end method

.method public getPrivateKey()Lcom/android/utils/security/RSAEncrypt$RSAKey;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->iPrivateKey:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    return-object v0
.end method

.method public getPublicKey()Lcom/android/utils/security/RSAEncrypt$RSAKey;
    .locals 1

    iget-object v0, p0, Lcom/android/utils/security/RSAEncrypt$RSAKeyCreater;->iPublicKey:Lcom/android/utils/security/RSAEncrypt$RSAKey;

    return-object v0
.end method
