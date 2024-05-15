.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static params:Ljava/util/Hashtable;


# instance fields
.field engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    .line 24
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    const-string/jumbo v0, "DSA"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    .line 36
    const/16 v0, 0x400

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 38
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 44
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 12

    .prologue
    const/16 v9, 0x400

    .line 79
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    if-nez v7, :cond_28

    .line 81
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 83
    .local v4, "paramStrength":Ljava/lang/Integer;
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 85
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 142
    :goto_1e
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 143
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 146
    .end local v4    # "paramStrength":Ljava/lang/Integer;
    :cond_28
    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v3

    .line 147
    .local v3, "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    .line 148
    .local v6, "pub":Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    .line 150
    .local v5, "priv":Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    new-instance v7, Ljava/security/KeyPair;

    new-instance v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;

    invoke-direct {v8, v6}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;)V

    new-instance v9, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;

    invoke-direct {v9, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/BCDSAPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;)V

    invoke-direct {v7, v8, v9}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v7

    .line 89
    .end local v3    # "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v5    # "priv":Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;
    .end local v6    # "pub":Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;
    .restart local v4    # "paramStrength":Ljava/lang/Integer;
    :cond_4a
    sget-object v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v8

    .line 93
    :try_start_4d
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_61

    .line 95
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v7, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;
    :try_end_5f
    .catchall {:try_start_4d .. :try_end_5f} :catchall_95

    :goto_5f
    monitor-exit v8

    goto :goto_1e

    .line 102
    :cond_61
    :try_start_61
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    invoke-static {v7}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v0

    .line 111
    .local v0, "certainty":I
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    if-ne v7, v9, :cond_a7

    .line 113
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 114
    .local v2, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    const-string/jumbo v7, "org.bouncycastle.dsa.FIPS186-2for1024bits"

    invoke-static {v7}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_98

    .line 116
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v7, v0, v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 135
    :goto_80
    new-instance v7, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v10

    invoke-direct {v7, v9, v10}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 137
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v7, v4, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_94
    .catchall {:try_start_61 .. :try_end_94} :catchall_95

    goto :goto_5f

    .line 89
    .end local v0    # "certainty":I
    .end local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :catchall_95
    move-exception v7

    monitor-exit v8

    throw v7

    .line 120
    .restart local v0    # "certainty":I
    .restart local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_98
    :try_start_98
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v9, 0x400

    const/16 v10, 0xa0

    invoke-direct {v1, v9, v10, v0, v7}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    .line 121
    .local v1, "dsaParams":Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_80

    .line 124
    .end local v1    # "dsaParams":Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    .end local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_a7
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    if-le v7, v9, :cond_c4

    .line 126
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    const/16 v10, 0x100

    invoke-direct {v1, v7, v10, v0, v9}, Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;-><init>(IIILjava/security/SecureRandom;)V

    .line 127
    .restart local v1    # "dsaParams":Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    new-instance v7, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v2, v7}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;)V

    .line 128
    .restart local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;)V

    goto :goto_80

    .line 132
    .end local v1    # "dsaParams":Lcom/android/org/bouncycastle/crypto/params/DSAParameterGenerationParameters;
    .end local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    :cond_c4
    new-instance v2, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;-><init>()V

    .line 133
    .restart local v2    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;
    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v7, v0, v9}, Lcom/android/org/bouncycastle/crypto/generators/DSAParametersGenerator;->init(IILjava/security/SecureRandom;)V
    :try_end_d0
    .catchall {:try_start_98 .. :try_end_d0} :catchall_95

    goto :goto_80
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 6
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    const/16 v2, 0x400

    const/4 v1, 0x0

    .line 50
    const/16 v0, 0x200

    if-lt p1, v0, :cond_b

    const/16 v0, 0x1000

    if-le p1, v0, :cond_14

    .line 52
    :cond_b
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "strength must be from 512 - 4096 and a multiple of 1024 above 1024"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_14
    if-ge p1, v2, :cond_1a

    rem-int/lit8 v0, p1, 0x40

    if-nez v0, :cond_b

    :cond_1a
    if-lt p1, v2, :cond_20

    rem-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_b

    .line 55
    :cond_20
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->strength:I

    .line 56
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 57
    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 58
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 9
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 65
    instance-of v1, p1, Ljava/security/spec/DSAParameterSpec;

    if-nez v1, :cond_d

    .line 67
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "parameter object not a DSAParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v0, p1

    .line 69
    check-cast v0, Ljava/security/spec/DSAParameterSpec;

    .line 71
    .local v0, "dsaParams":Ljava/security/spec/DSAParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljava/security/spec/DSAParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-direct {v1, p2, v2}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    .line 73
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 74
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dsa/KeyPairGeneratorSpi;->initialised:Z

    .line 75
    return-void
.end method
