.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;
.super Ljava/security/KeyPairGenerator;
.source "KeyPairGeneratorSpi.java"


# static fields
.field private static lock:Ljava/lang/Object;

.field private static params:Ljava/util/Hashtable;


# instance fields
.field engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

.field initialised:Z

.field param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

.field random:Ljava/security/SecureRandom;

.field strength:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    .line 26
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    const-string/jumbo v0, "DH"

    invoke-direct {p0, v0}, Ljava/security/KeyPairGenerator;-><init>(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    .line 30
    const/16 v0, 0x800

    iput v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    .line 31
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 37
    return-void
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 67
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    if-nez v6, :cond_27

    .line 69
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-static {v6}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 71
    .local v3, "paramStrength":Ljava/lang/Integer;
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_49

    .line 73
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 108
    :goto_1d
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 110
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 113
    .end local v3    # "paramStrength":Ljava/lang/Integer;
    :cond_27
    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v2

    .line 114
    .local v2, "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 115
    .local v5, "pub":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 117
    .local v4, "priv":Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    new-instance v6, Ljava/security/KeyPair;

    new-instance v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;

    invoke-direct {v7, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPublicKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;)V

    new-instance v8, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;

    invoke-direct {v8, v4}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/BCDHPrivateKey;-><init>(Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;)V

    invoke-direct {v6, v7, v8}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v6

    .line 77
    .end local v2    # "pair":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v4    # "priv":Lcom/android/org/bouncycastle/crypto/params/DHPrivateKeyParameters;
    .end local v5    # "pub":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    .restart local v3    # "paramStrength":Ljava/lang/Integer;
    :cond_49
    sget-object v6, Lcom/android/org/bouncycastle/jce/provider/BouncyCastleProvider;->CONFIGURATION:Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;

    iget v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-interface {v6, v7}, Lcom/android/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;->getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;

    move-result-object v0

    .line 79
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    if-eqz v0, :cond_6e

    .line 81
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    new-instance v8, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v11

    invoke-direct {v8, v9, v10, v12, v11}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    goto :goto_1d

    .line 85
    :cond_6e
    sget-object v7, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->lock:Ljava/lang/Object;

    monitor-enter v7

    .line 89
    :try_start_71
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 91
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    invoke-virtual {v6, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;
    :try_end_83
    .catchall {:try_start_71 .. :try_end_83} :catchall_ac

    :goto_83
    monitor-exit v7

    goto :goto_1d

    .line 96
    :cond_85
    :try_start_85
    new-instance v1, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;

    invoke-direct {v1}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;-><init>()V

    .line 98
    .local v1, "pGen":Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    iget v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    iget v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    invoke-static {v8}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/PrimeCertaintyCalculator;->getDefaultCertainty(I)I

    move-result v8

    iget-object v9, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v6, v8, v9}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->init(IILjava/security/SecureRandom;)V

    .line 100
    new-instance v6, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v6, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 102
    sget-object v6, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->params:Ljava/util/Hashtable;

    iget-object v8, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v6, v3, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ab
    .catchall {:try_start_85 .. :try_end_ab} :catchall_ac

    goto :goto_83

    .line 85
    .end local v1    # "pGen":Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
    :catchall_ac
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .registers 4
    .param p1, "strength"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 43
    iput p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->strength:I

    .line 44
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->random:Ljava/security/SecureRandom;

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 46
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 10
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 53
    instance-of v1, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v1, :cond_d

    .line 55
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string/jumbo v2, "parameter object not a DHParameterSpec"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    move-object v0, p1

    .line 57
    check-cast v0, Ljavax/crypto/spec/DHParameterSpec;

    .line 59
    .local v0, "dhParams":Ljavax/crypto/spec/DHParameterSpec;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v6, v5}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v1, p2, v2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    iput-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    .line 61
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->engine:Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;

    iget-object v2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->param:Lcom/android/org/bouncycastle/crypto/params/DHKeyGenerationParameters;

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DHBasicKeyPairGenerator;->init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyPairGeneratorSpi;->initialised:Z

    .line 63
    return-void
.end method
