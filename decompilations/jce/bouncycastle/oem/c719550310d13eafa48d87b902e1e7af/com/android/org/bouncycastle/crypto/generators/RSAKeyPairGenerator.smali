.class public Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 20
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    .line 17
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getNumberOfIterations(II)I
    .registers 8
    .param p0, "bits"    # I
    .param p1, "certainty"    # I

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x7

    const/16 v5, 0x64

    const/4 v1, 0x5

    const/4 v0, 0x4

    .line 207
    const/16 v4, 0x600

    if-lt p0, v4, :cond_1c

    .line 209
    if-gt p1, v5, :cond_f

    const/4 v0, 0x3

    :cond_e
    :goto_e
    return v0

    .line 210
    :cond_f
    const/16 v1, 0x80

    if-le p1, v1, :cond_e

    .line 211
    add-int/lit8 v0, p1, -0x80

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    goto :goto_e

    .line 213
    :cond_1c
    const/16 v4, 0x400

    if-lt p0, v4, :cond_32

    .line 215
    if-gt p1, v5, :cond_23

    :goto_22
    return v0

    .line 216
    :cond_23
    const/16 v0, 0x70

    if-gt p1, v0, :cond_29

    move v0, v1

    goto :goto_22

    .line 217
    :cond_29
    add-int/lit8 v0, p1, -0x70

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    goto :goto_22

    .line 219
    :cond_32
    const/16 v0, 0x200

    if-lt p0, v0, :cond_48

    .line 221
    const/16 v0, 0x50

    if-gt p1, v0, :cond_3b

    :goto_3a
    return v1

    .line 222
    :cond_3b
    if-gt p1, v5, :cond_3f

    move v1, v2

    goto :goto_3a

    .line 223
    :cond_3f
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x7

    goto :goto_3a

    .line 227
    :cond_48
    const/16 v0, 0x50

    if-gt p1, v0, :cond_4e

    move v0, v3

    :goto_4d
    return v0

    .line 228
    :cond_4e
    add-int/lit8 v0, p1, -0x50

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    goto :goto_4d
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;
    .param p3, "sqrdBound"    # Ljava/math/BigInteger;

    .prologue
    .line 160
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    mul-int/lit8 v2, p1, 0x5

    if-eq v0, v2, :cond_43

    .line 162
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, p1, v3, v2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    .line 164
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 160
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_20
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-ltz v2, :cond_1d

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 179
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 184
    return-object v1

    .line 187
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_43
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "unable to generate prime number for RSA key"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 31

    .prologue
    .line 31
    const/16 v25, 0x0

    .line 32
    .local v25, "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    const/4 v15, 0x0

    .line 37
    .local v15, "done":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v27

    .line 38
    .local v27, "strength":I
    add-int/lit8 v4, v27, 0x1

    div-int/lit8 v22, v4, 0x2

    .line 39
    .local v22, "pbitlength":I
    sub-int v24, v27, v22

    .line 40
    .local v24, "qbitlength":I
    div-int/lit8 v4, v27, 0x2

    add-int/lit8 v20, v4, -0x64

    .line 42
    .local v20, "mindiffbits":I
    div-int/lit8 v4, v27, 0x3

    move/from16 v0, v20

    if-ge v0, v4, :cond_1d

    .line 44
    div-int/lit8 v20, v27, 0x3

    .line 47
    :cond_1d
    shr-int/lit8 v19, v27, 0x2

    .line 50
    .local v19, "minWeight":I
    const-wide/16 v28, 0x2

    invoke-static/range {v28 .. v29}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    div-int/lit8 v28, v27, 0x2

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v13

    .line 52
    .local v13, "dLowerBound":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v28, v27, -0x1

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v26

    .line 54
    .local v26, "squaredBound":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v18

    .line 56
    .end local v25    # "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local v18, "minDiff":Ljava/math/BigInteger;
    :cond_3f
    :goto_3f
    if-nez v15, :cond_fb

    .line 60
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    .line 62
    .local v6, "e":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 69
    .local v8, "p":Ljava/math/BigInteger;
    :cond_53
    :goto_53
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 72
    .local v9, "q":Ljava/math/BigInteger;
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    .line 73
    .local v14, "diff":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    move/from16 v0, v20

    if-lt v4, v0, :cond_53

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_53

    .line 81
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 83
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    move/from16 v0, v27

    if-eq v4, v0, :cond_86

    .line 89
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_53

    .line 99
    :cond_86
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v4

    move/from16 v0, v19

    if-ge v4, v0, :cond_99

    .line 101
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_53

    .line 108
    :cond_99
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_a4

    .line 110
    move-object/from16 v16, v8

    .line 111
    .local v16, "gcd":Ljava/math/BigInteger;
    move-object v8, v9

    .line 112
    move-object/from16 v9, v16

    .line 115
    .end local v16    # "gcd":Ljava/math/BigInteger;
    :cond_a4
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 116
    .local v21, "pSub1":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    .line 117
    .local v23, "qSub1":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    .line 118
    .restart local v16    # "gcd":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v17

    .line 123
    .local v17, "lcm":Ljava/math/BigInteger;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 125
    .local v7, "d":Ljava/math/BigInteger;
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-lez v4, :cond_3f

    .line 131
    const/4 v15, 0x1

    .line 139
    move-object/from16 v0, v21

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 140
    .local v10, "dP":Ljava/math/BigInteger;
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 141
    .local v11, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 143
    .local v12, "qInv":Ljava/math/BigInteger;
    new-instance v25, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    .line 144
    new-instance v28, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v4, 0x0

    move-object/from16 v0, v28

    invoke-direct {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 145
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-direct/range {v4 .. v12}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 143
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    .local v25, "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    goto/16 :goto_3f

    .line 148
    .end local v5    # "n":Ljava/math/BigInteger;
    .end local v6    # "e":Ljava/math/BigInteger;
    .end local v7    # "d":Ljava/math/BigInteger;
    .end local v8    # "p":Ljava/math/BigInteger;
    .end local v9    # "q":Ljava/math/BigInteger;
    .end local v10    # "dP":Ljava/math/BigInteger;
    .end local v11    # "dQ":Ljava/math/BigInteger;
    .end local v12    # "qInv":Ljava/math/BigInteger;
    .end local v14    # "diff":Ljava/math/BigInteger;
    .end local v16    # "gcd":Ljava/math/BigInteger;
    .end local v17    # "lcm":Ljava/math/BigInteger;
    .end local v21    # "pSub1":Ljava/math/BigInteger;
    .end local v23    # "qSub1":Ljava/math/BigInteger;
    .end local v25    # "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :cond_fb
    return-object v25
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 2
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    .prologue
    .line 26
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .end local p1    # "param":Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 27
    return-void
.end method

.method protected isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 5
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 192
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    .line 197
    .local v0, "iterations":I
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_1f

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v1

    :goto_1e
    return v1

    :cond_1f
    const/4 v1, 0x0

    goto :goto_1e
.end method
