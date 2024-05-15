.class public Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;
.super Ljava/lang/Object;
.source "ECKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;


# instance fields
.field params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

.field random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .prologue
    .line 76
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 10

    .prologue
    .line 45
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    .line 46
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 47
    .local v4, "nBitLength":I
    ushr-int/lit8 v2, v4, 0x2

    .line 52
    .local v2, "minWeight":I
    :cond_c
    new-instance v1, Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v1, v4, v5}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    .line 54
    .local v1, "d":Ljava/math/BigInteger;
    sget-object v5, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-ltz v5, :cond_c

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v5

    if-gez v5, :cond_c

    .line 59
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v5

    if-lt v5, v2, :cond_c

    .line 67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-interface {v5, v6, v1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 69
    .local v0, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    new-instance v5, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .line 70
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v6, v0, v7}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 71
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    invoke-direct {v7, v1, v8}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;)V

    .line 69
    invoke-direct {v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v5
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 4
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    .prologue
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;

    .line 30
    .local v0, "ecP":Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 31
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ECKeyGenerationParameters;->getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->params:Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    .line 33
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    if-nez v1, :cond_1a

    .line 35
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/ECKeyPairGenerator;->random:Ljava/security/SecureRandom;

    .line 37
    :cond_1a
    return-void
.end method
