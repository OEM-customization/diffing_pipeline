.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;
.source "AlgorithmParameterGeneratorSpi.java"


# instance fields
.field protected params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

.field protected random:Ljava/security/SecureRandom;

.field protected strength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/BaseAlgorithmParameterGeneratorSpi;-><init>()V

    .line 25
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    .line 17
    return-void
.end method


# virtual methods
.method protected engineGenerateParameters()Ljava/security/AlgorithmParameters;
    .registers 10

    .prologue
    const/16 v8, 0x400

    .line 63
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-gt v5, v8, :cond_50

    .line 65
    new-instance v3, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 72
    .local v3, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :goto_b
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    if-nez v5, :cond_16

    .line 74
    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 77
    :cond_16
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    invoke-static {v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v0

    .line 79
    .local v0, "certainty":I
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-ne v5, v8, :cond_5b

    .line 81
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v7, 0xa0

    invoke-direct {v5, v8, v7, v0, v6}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 82
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    .line 94
    :goto_30
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v2

    .line 100
    .local v2, "p":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :try_start_34
    const-string/jumbo v5, "DSA"

    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->createParametersInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v4

    .line 101
    .local v4, "params":Ljava/security/AlgorithmParameters;
    new-instance v5, Ljava/security/spec/DSAParameterSpec;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Ljava/security/spec/DSAParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v4, v5}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_4f} :catch_7a

    .line 108
    return-object v4

    .line 69
    .end local v0    # "certainty":I
    .end local v2    # "p":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    .end local v3    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    .end local v4    # "params":Ljava/security/AlgorithmParameters;
    :cond_50
    new-instance v3, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    new-instance v5, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .restart local v3    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    goto :goto_b

    .line 84
    .restart local v0    # "certainty":I
    :cond_5b
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    if-le v5, v8, :cond_72

    .line 86
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v8, 0x100

    invoke-direct {v5, v6, v8, v0, v7}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    iput-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    .line 87
    iget-object v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->params:Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_30

    .line 91
    :cond_72
    iget v5, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v5, v0, v6}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    goto :goto_30

    .line 104
    .restart local v2    # "p":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    :catch_7a
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected engineInit(ILjava/security/SecureRandom;)V
    .registers 5
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    const/16 v1, 0x400

    .line 32
    const/16 v0, 0x200

    if-lt p1, v0, :cond_a

    const/16 v0, 0xc00

    if-le p1, v0, :cond_13

    .line 34
    :cond_a
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be from 512 - 3072"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_13
    if-gt p1, v1, :cond_22

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_22

    .line 39
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be a multiple of 64 below 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
    :cond_22
    if-le p1, v1, :cond_31

    rem-int/lit16 v0, p1, 0x400

    if-eqz v0, :cond_31

    .line 44
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be a multiple of 1024 above 1024 bits."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_31
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->strength:I

    .line 48
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/AlgorithmParameterGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 49
    return-void
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 5
    .param p1, "genParamSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v1, "No supported AlgorithmParameterSpec for DSA parameter generation."

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
