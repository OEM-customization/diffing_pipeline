.class public Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/BasicAgreement;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

.field private key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 23
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    .line 20
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateAgreement(Lcom/android/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 7
    .param p1, "pubKey"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    move-object v0, p1

    .line 64
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 66
    .local v0, "pub":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    :cond_18
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 72
    .local v1, "result":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-nez v2, :cond_3d

    .line 74
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Shared key can\'t be 1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    :cond_3d
    return-object v1
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 33
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_1a

    move-object v1, p1

    .line 35
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 36
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 43
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_d
    instance-of v2, v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-nez v2, :cond_1e

    .line 45
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_1a
    move-object v0, p1

    .line 40
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_d

    .line 48
    :cond_1e
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 49
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    .line 50
    return-void
.end method
