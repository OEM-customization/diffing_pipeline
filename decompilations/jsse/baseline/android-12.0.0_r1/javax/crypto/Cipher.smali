.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$CipherSpiAndProvider;,
        Ljavax/crypto/Cipher$SpiAndProviderUpdater;,
        Ljavax/crypto/Cipher$InitType;,
        Ljavax/crypto/Cipher$InitParams;,
        Ljavax/crypto/Cipher$Transform;,
        Ljavax/crypto/Cipher$NeedToSet;
    }
.end annotation


# static fields
.field private static final greylist-max-o ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final greylist-max-o ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final whitelist test-api DECRYPT_MODE:I = 0x2

.field public static final whitelist test-api ENCRYPT_MODE:I = 0x1

.field private static final greylist-max-o KEY_USAGE_EXTENSION_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final whitelist test-api PRIVATE_KEY:I = 0x2

.field public static final whitelist test-api PUBLIC_KEY:I = 0x1

.field public static final whitelist test-api SECRET_KEY:I = 0x3

.field public static final whitelist test-api UNWRAP_MODE:I = 0x4

.field public static final whitelist test-api WRAP_MODE:I = 0x3


# instance fields
.field private greylist-max-o exmech:Ljavax/crypto/ExemptionMechanism;

.field private greylist-max-o initialized:Z

.field private greylist-max-o opmode:I

.field private greylist-max-o provider:Ljava/security/Provider;

.field private greylist-max-o spi:Ljavax/crypto/CipherSpi;

.field private final greylist-max-o spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

.field private final greylist-max-o tokenizedTransformation:[Ljava/lang/String;

.field private final greylist-max-o transformation:Ljava/lang/String;


# direct methods
.method protected constructor whitelist test-api <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 346
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 384
    if-eqz p1, :cond_2a

    .line 387
    instance-of v0, p1, Ljavax/crypto/NullCipherSpi;

    if-nez v0, :cond_19

    if-eqz p2, :cond_11

    goto :goto_19

    .line 388
    :cond_11
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_19
    :goto_19
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 392
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 393
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 394
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 396
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 398
    return-void

    .line 385
    :cond_2a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSpi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor greylist-max-o <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "tokenizedTransformation"    # [Ljava/lang/String;

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 346
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 404
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 405
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 406
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 407
    iput-object p4, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 409
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 411
    return-void
.end method

.method static synthetic blacklist access$002(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/Cipher;
    .param p1, "x1"    # Ljavax/crypto/CipherSpi;

    .line 255
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object p1
.end method

.method static synthetic blacklist access$102(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/Cipher;
    .param p1, "x1"    # Ljava/security/Provider;

    .line 255
    iput-object p1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic blacklist access$200(Ljavax/crypto/Cipher;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljavax/crypto/Cipher;

    .line 255
    iget-object v0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    return-object v0
.end method

.method private greylist-max-o checkCipherState()V
    .registers 3

    .line 1638
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_21

    .line 1639
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-eqz v0, :cond_19

    .line 1642
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    goto :goto_21

    .line 1644
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized for encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_19
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :cond_21
    :goto_21
    return-void
.end method

.method private static greylist-max-o checkOpmode(I)V
    .registers 3
    .param p0, "opmode"    # I

    .line 1011
    const/4 v0, 0x1

    if-lt p0, v0, :cond_7

    const/4 v0, 0x4

    if-gt p0, v0, :cond_7

    .line 1014
    return-void

    .line 1012
    :cond_7
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid operation mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 15
    .param p1, "initType"    # Ljavax/crypto/Cipher$InitType;
    .param p2, "opmode"    # I
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "paramSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p5, "params"    # Ljava/security/AlgorithmParameters;
    .param p6, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 771
    :try_start_0
    new-instance v7, Ljavax/crypto/Cipher$InitParams;

    move-object v0, v7

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    move-object v0, v7

    .line 773
    .local v0, "initParams":Ljavax/crypto/Cipher$InitParams;
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_18

    .line 789
    nop

    .line 790
    .end local v0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    return-void

    .line 774
    :catch_18
    move-exception v0

    .line 776
    .local v0, "lastException":Ljava/lang/Exception;
    instance-of v1, v0, Ljava/security/InvalidKeyException;

    if-nez v1, :cond_51

    .line 779
    instance-of v1, v0, Ljava/security/InvalidAlgorithmParameterException;

    if-nez v1, :cond_4d

    .line 782
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-nez v1, :cond_49

    .line 785
    if-eqz p3, :cond_30

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_32

    :cond_30
    const-string v1, "(null)"

    .line 786
    .local v1, "kName":Ljava/lang/String;
    :goto_32
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No installed provider supports this key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 783
    .end local v1    # "kName":Ljava/lang/String;
    :cond_49
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 780
    :cond_4d
    move-object v1, v0

    check-cast v1, Ljava/security/InvalidAlgorithmParameterException;

    throw v1

    .line 777
    :cond_51
    move-object v1, v0

    check-cast v1, Ljava/security/InvalidKeyException;

    throw v1
.end method

.method static final greylist-max-o createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 7
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 722
    const-string v0, "Cipher"

    invoke-static {p1, v0, p0}, Lsun/security/jca/Providers;->checkBouncyCastleDeprecation(Ljava/security/Provider;Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 725
    .local v0, "tokenizedTransformation":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 727
    .local v1, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    nop

    .line 728
    const/4 v2, 0x0

    :try_start_c
    invoke-static {v2, p1, v0}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v3
    :try_end_10
    .catch Ljava/security/InvalidKeyException; {:try_start_c .. :try_end_10} :catch_56
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_c .. :try_end_10} :catch_56

    move-object v1, v3

    .line 732
    nop

    .line 734
    if-nez v1, :cond_50

    .line 735
    if-nez p1, :cond_2d

    .line 736
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 738
    :cond_2d
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " does not provide "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 744
    :cond_50
    new-instance v3, Ljavax/crypto/Cipher;

    invoke-direct {v3, v2, p1, p0, v0}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3

    .line 729
    :catch_56
    move-exception v2

    .line 731
    .local v2, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Key/Algorithm excepton despite not passing one"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private greylist-max-o getAlgorithmParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .line 2448
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2449
    return-object v0

    .line 2452
    :cond_4
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2454
    .local v1, "alg":Ljava/lang/String;
    const-string v2, "RC2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2455
    const-class v0, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2458
    :cond_1d
    const-string v2, "RC5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2459
    const-class v0, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2462
    :cond_2c
    const-string v2, "PBE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 2463
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2466
    :cond_3b
    const-string v2, "DES"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2467
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    return-object v0

    .line 2469
    :cond_4a
    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 619
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 6
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 666
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 669
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 670
    .local v0, "p":Ljava/security/Provider;
    if-eqz v0, :cond_13

    .line 674
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1

    .line 671
    :cond_13
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 667
    .end local v0    # "p":Ljava/security/Provider;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 714
    if-eqz p1, :cond_7

    .line 717
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0

    .line 715
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getMaxAllowedKeyLength(Ljava/lang/String;)I
    .registers 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2498
    if-eqz p0, :cond_9

    .line 2502
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2503
    const v0, 0x7fffffff

    return v0

    .line 2499
    :cond_9
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final whitelist test-api getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2531
    if-eqz p0, :cond_7

    .line 2535
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2536
    const/4 v0, 0x0

    return-object v0

    .line 2532
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o getOpmodeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "opmode"    # I

    .line 1017
    packed-switch p0, :pswitch_data_12

    .line 1027
    const-string v0, ""

    return-object v0

    .line 1025
    :pswitch_6
    const-string v0, "key unwrapping"

    return-object v0

    .line 1023
    :pswitch_9
    const-string v0, "key wrapping"

    return-object v0

    .line 1021
    :pswitch_c
    const-string v0, "decryption"

    return-object v0

    .line 1019
    :pswitch_f
    const-string v0, "encryption"

    return-object v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method static greylist-max-o matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 2686
    const/4 v0, 0x1

    if-nez p2, :cond_4

    .line 2687
    return v0

    .line 2689
    :cond_4
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2690
    .local v1, "pattern":Ljava/lang/String;
    if-nez v1, :cond_b

    .line 2691
    return v0

    .line 2693
    :cond_b
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2694
    .local v0, "valueUc":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static greylist-max-o tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 415
    const-string v0, "Invalid transformation format:"

    if-eqz p0, :cond_8a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8a

    .line 425
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/String;

    .line 426
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 427
    .local v3, "count":I
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "/"

    invoke-direct {v4, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .local v4, "parser":Ljava/util/StringTokenizer;
    :goto_15
    :try_start_15
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5
    :try_end_19
    .catch Ljava/util/NoSuchElementException; {:try_start_15 .. :try_end_19} :catch_74

    if-eqz v5, :cond_2e

    if-ge v3, v1, :cond_2e

    .line 430
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "count":I
    .local v5, "count":I
    :try_start_1f
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v3
    :try_end_29
    .catch Ljava/util/NoSuchElementException; {:try_start_1f .. :try_end_29} :catch_2b

    move v3, v5

    goto :goto_15

    .line 437
    :catch_2b
    move-exception v1

    move v3, v5

    goto :goto_75

    .line 432
    .end local v5    # "count":I
    .restart local v3    # "count":I
    :cond_2e
    if-eqz v3, :cond_5f

    const/4 v1, 0x2

    if-eq v3, v1, :cond_5f

    :try_start_33
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1
    :try_end_37
    .catch Ljava/util/NoSuchElementException; {:try_start_33 .. :try_end_37} :catch_74

    if-nez v1, :cond_5f

    .line 440
    nop

    .line 441
    const/4 v0, 0x0

    aget-object v1, v2, v0

    if-eqz v1, :cond_48

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_48

    .line 446
    return-object v2

    .line 442
    :cond_48
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid transformation:algorithm not specified-"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 433
    :cond_5f
    :try_start_5f
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "count":I
    .end local v4    # "parser":Ljava/util/StringTokenizer;
    .end local p0    # "transformation":Ljava/lang/String;
    throw v1
    :try_end_74
    .catch Ljava/util/NoSuchElementException; {:try_start_5f .. :try_end_74} :catch_74

    .line 437
    .restart local v2    # "parts":[Ljava/lang/String;
    .restart local v3    # "count":I
    .restart local v4    # "parser":Ljava/util/StringTokenizer;
    .restart local p0    # "transformation":Ljava/lang/String;
    :catch_74
    move-exception v1

    .line 438
    .local v1, "e":Ljava/util/NoSuchElementException;
    :goto_75
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 416
    .end local v1    # "e":Ljava/util/NoSuchElementException;
    .end local v2    # "parts":[Ljava/lang/String;
    .end local v3    # "count":I
    .end local v4    # "parser":Ljava/util/StringTokenizer;
    :cond_8a
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "No transformation given"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 14
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "tokenizedTransformation"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2852
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2853
    .local v0, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/crypto/Cipher$Transform;>;"
    const/4 v1, 0x1

    aget-object v2, p2, v1

    const-string v3, "/"

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_3a

    aget-object v2, p2, v4

    if-eqz v2, :cond_3a

    .line 2854
    new-instance v2, Ljavax/crypto/Cipher$Transform;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, p2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v2, v6, v7}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2857
    :cond_3a
    aget-object v2, p2, v1

    if-eqz v2, :cond_5e

    .line 2858
    new-instance v2, Ljavax/crypto/Cipher$Transform;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p2, v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v2, v1, v3}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2861
    :cond_5e
    aget-object v1, p2, v4

    if-eqz v1, :cond_84

    .line 2862
    new-instance v1, Ljavax/crypto/Cipher$Transform;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p2, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "//"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p2, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2865
    :cond_84
    new-instance v1, Ljavax/crypto/Cipher$Transform;

    aget-object v2, p2, v5

    sget-object v3, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v1, v2, v3}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2869
    const/4 v1, 0x0

    .line 2871
    .local v1, "cause":Ljava/lang/Exception;
    const-string v2, "Cipher"

    if-eqz p1, :cond_ba

    .line 2872
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_99
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/Cipher$Transform;

    .line 2873
    .local v4, "transform":Ljavax/crypto/Cipher$Transform;
    # getter for: Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;
    invoke-static {v4}, Ljavax/crypto/Cipher$Transform;->access$300(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v2, v5}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v5

    .line 2874
    .local v5, "service":Ljava/security/Provider$Service;
    if-nez v5, :cond_b0

    .line 2875
    goto :goto_99

    .line 2877
    :cond_b0
    # getter for: Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;
    invoke-static {v4}, Ljavax/crypto/Cipher$Transform;->access$400(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v2

    invoke-static {p0, p2, v2, v5}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v2

    return-object v2

    .end local v4    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v5    # "service":Ljava/security/Provider$Service;
    :cond_b9
    goto :goto_101

    .line 2881
    :cond_ba
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v3

    array-length v4, v3

    :goto_bf
    if-ge v5, v4, :cond_101

    aget-object v6, v3, v5

    .line 2882
    .local v6, "prov":Ljava/security/Provider;
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_c7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fe

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavax/crypto/Cipher$Transform;

    .line 2883
    .local v8, "transform":Ljavax/crypto/Cipher$Transform;
    # getter for: Ljavax/crypto/Cipher$Transform;->name:Ljava/lang/String;
    invoke-static {v8}, Ljavax/crypto/Cipher$Transform;->access$300(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v9

    .line 2884
    .local v9, "service":Ljava/security/Provider$Service;
    if-nez v9, :cond_de

    .line 2885
    goto :goto_c7

    .line 2888
    :cond_de
    if-eqz p0, :cond_ec

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-eqz v10, :cond_ec

    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2889
    invoke-virtual {v9, v10}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_fd

    .line 2891
    :cond_ec
    nop

    .line 2892
    :try_start_ed
    # getter for: Ljavax/crypto/Cipher$Transform;->needToSet:Ljavax/crypto/Cipher$NeedToSet;
    invoke-static {v8}, Ljavax/crypto/Cipher$Transform;->access$400(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v10

    .line 2891
    invoke-static {p0, p2, v10, v9}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v10
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f5} :catch_f9

    .line 2893
    .local v10, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-eqz v10, :cond_f8

    .line 2894
    return-object v10

    .line 2900
    .end local v10    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_f8
    goto :goto_fd

    .line 2896
    :catch_f9
    move-exception v10

    .line 2897
    .local v10, "e":Ljava/lang/Exception;
    if-nez v1, :cond_fd

    .line 2898
    move-object v1, v10

    .line 2902
    .end local v8    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v9    # "service":Ljava/security/Provider$Service;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_fd
    :goto_fd
    goto :goto_c7

    .line 2881
    .end local v6    # "prov":Ljava/security/Provider;
    :cond_fe
    add-int/lit8 v5, v5, 0x1

    goto :goto_bf

    .line 2905
    :cond_101
    :goto_101
    instance-of v2, v1, Ljava/security/InvalidKeyException;

    if-nez v2, :cond_171

    .line 2907
    instance-of v2, v1, Ljava/security/InvalidAlgorithmParameterException;

    if-nez v2, :cond_16d

    .line 2909
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_169

    .line 2911
    if-nez v1, :cond_161

    .line 2913
    if-eqz p0, :cond_15f

    iget-object v2, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v2, :cond_116

    goto :goto_15f

    .line 2918
    :cond_116
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No provider offers "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2919
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2920
    invoke-interface {v4}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " key of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2921
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " and export format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    .line 2922
    invoke-interface {v4}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2914
    :cond_15f
    :goto_15f
    const/4 v2, 0x0

    return-object v2

    .line 2912
    :cond_161
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "No provider can be initialized with given key"

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 2910
    :cond_169
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 2908
    :cond_16d
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidAlgorithmParameterException;

    throw v2

    .line 2906
    :cond_171
    move-object v2, v1

    check-cast v2, Ljava/security/InvalidKeyException;

    throw v2
.end method

.method static greylist-max-o tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 11
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "tokenizedTransformation"    # [Ljava/lang/String;
    .param p2, "type"    # Ljavax/crypto/Cipher$NeedToSet;
    .param p3, "service"    # Ljava/security/Provider$Service;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 2953
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "SupportedModes"

    const/4 v2, 0x1

    aget-object v3, p1, v2

    invoke-static {p3, v1, v3}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_98

    const-string v1, "SupportedPaddings"

    const/4 v3, 0x2

    aget-object v4, p1, v3

    .line 2954
    invoke-static {p3, v1, v4}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19

    goto/16 :goto_98

    .line 2958
    :cond_19
    new-instance v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    .line 2959
    invoke-virtual {p3, v0}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/CipherSpi;

    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    .line 2960
    .local v1, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    if-eqz v4, :cond_97

    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v4, :cond_31

    goto :goto_97

    .line 2963
    :cond_31
    iget-object v4, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    .line 2964
    .local v4, "spi":Ljavax/crypto/CipherSpi;
    sget-object v5, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v5, :cond_3b

    sget-object v5, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v5, :cond_44

    :cond_3b
    aget-object v5, p1, v2

    if-eqz v5, :cond_44

    .line 2966
    aget-object v2, p1, v2

    invoke-virtual {v4, v2}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 2968
    :cond_44
    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v2, :cond_4c

    sget-object v2, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v2, :cond_55

    :cond_4c
    aget-object v2, p1, v3

    if-eqz v2, :cond_55

    .line 2970
    aget-object v2, p1, v3

    invoke-virtual {v4, v2}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    .line 2973
    :cond_55
    if-eqz p0, :cond_8f

    .line 2974
    sget-object v2, Ljavax/crypto/Cipher$1;->$SwitchMap$javax$crypto$Cipher$InitType:[I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v3}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_9e

    .line 2987
    new-instance v2, Ljava/lang/AssertionError;

    goto :goto_89

    .line 2984
    :pswitch_67
    iget v2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 2985
    goto :goto_8f

    .line 2980
    :pswitch_71
    iget v2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 2982
    goto :goto_8f

    .line 2976
    :pswitch_7d
    iget v2, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v3, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v2, v3, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 2978
    goto :goto_8f

    .line 2987
    :goto_89
    const-string v3, "This should never be reached"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local p0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    .end local p1    # "tokenizedTransformation":[Ljava/lang/String;
    .end local p2    # "type":Ljavax/crypto/Cipher$NeedToSet;
    .end local p3    # "service":Ljava/security/Provider$Service;
    throw v2

    .line 2990
    .restart local p0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    .restart local p1    # "tokenizedTransformation":[Ljava/lang/String;
    .restart local p2    # "type":Ljavax/crypto/Cipher$NeedToSet;
    .restart local p3    # "service":Ljava/security/Provider$Service;
    :cond_8f
    :goto_8f
    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v3, v1, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v2, v4, v3}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V
    :try_end_96
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_96} :catch_9b
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_96} :catch_99

    return-object v2

    .line 2961
    .end local v4    # "spi":Ljavax/crypto/CipherSpi;
    :cond_97
    :goto_97
    return-object v0

    .line 2955
    .end local v1    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_98
    :goto_98
    return-object v0

    .line 2992
    :catch_99
    move-exception v1

    goto :goto_9d

    .line 2991
    :catch_9b
    move-exception v1

    .line 2993
    nop

    .line 2994
    :goto_9d
    return-object v0

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_7d
        :pswitch_71
        :pswitch_67
    .end packed-switch
.end method


# virtual methods
.method public final whitelist test-api doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2336
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2338
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    .line 2341
    if-eq p1, p2, :cond_1f

    .line 2345
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_19

    .line 2349
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2350
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 2346
    :cond_19
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 2342
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2339
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([BI)I
    .registers 9
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1994
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1997
    if-eqz p1, :cond_16

    if-ltz p2, :cond_16

    .line 2001
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2002
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0

    .line 1998
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([BII[B)I
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2178
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2181
    if-eqz p1, :cond_1c

    if-ltz p2, :cond_1c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1c

    if-ltz p3, :cond_1c

    .line 2186
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2187
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0

    .line 2183
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([BII[BI)I
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2257
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2260
    if-eqz p1, :cond_1e

    if-ltz p2, :cond_1e

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1e

    if-ltz p3, :cond_1e

    if-ltz p5, :cond_1e

    .line 2266
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2267
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0

    .line 2263
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 1935
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1937
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1938
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api doFinal([B)[B
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2047
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2050
    if-eqz p1, :cond_11

    .line 2054
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2055
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0

    .line 2051
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api doFinal([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 2104
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2107
    if-eqz p1, :cond_17

    if-ltz p2, :cond_17

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_17

    if-ltz p3, :cond_17

    .line 2112
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2113
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0

    .line 2109
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getAlgorithm()Ljava/lang/String;
    .registers 2

    .line 812
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist test-api getBlockSize()I
    .registers 2

    .line 822
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 823
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public greylist-max-o test-api getCurrentSpi()Ljavax/crypto/CipherSpi;
    .registers 2

    .line 2672
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object v0
.end method

.method public final whitelist test-api getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .registers 2

    .line 898
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 899
    iget-object v0, p0, Ljavax/crypto/Cipher;->exmech:Ljavax/crypto/ExemptionMechanism;

    return-object v0
.end method

.method public final whitelist test-api getIV()[B
    .registers 2

    .line 871
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 872
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getOutputSize(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .line 848
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_11

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 849
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 851
    :cond_11
    :goto_11
    if-ltz p1, :cond_1d

    .line 855
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 856
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0

    .line 852
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 887
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 888
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getProvider()Ljava/security/Provider;
    .registers 2

    .line 798
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 799
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final whitelist test-api init(ILjava/security/Key;)V
    .registers 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1084
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 1085
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1364
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1365
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1426
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1427
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1429
    sget-object v2, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    const/4 v5, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1431
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1432
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1442
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1140
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1143
    :try_start_6
    sget-object v2, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_11} :catch_18

    .line 1147
    nop

    .line 1149
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1150
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1160
    return-void

    .line 1144
    :catch_18
    move-exception v0

    .line 1146
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1223
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 1224
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 1285
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1286
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1288
    sget-object v2, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    const/4 v6, 0x0

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1290
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1291
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1301
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/cert/Certificate;)V
    .registers 4
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1510
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 1511
    return-void
.end method

.method public final whitelist test-api init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .registers 13
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 1581
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1582
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1586
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    const/4 v1, 0x1

    if-eqz v0, :cond_45

    .line 1589
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1590
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    .line 1592
    .local v2, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v2, :cond_45

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_45

    .line 1593
    const-string v3, "2.5.29.15"

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1594
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v3

    .line 1597
    .local v3, "keyUsageInfo":[Z
    if-eqz v3, :cond_45

    const/4 v4, 0x3

    if-ne p1, v1, :cond_32

    array-length v5, v3

    if-le v5, v4, :cond_32

    aget-boolean v5, v3, v4

    if-eqz v5, :cond_3d

    :cond_32
    if-ne p1, v4, :cond_45

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_45

    aget-boolean v4, v3, v5

    if-eqz v4, :cond_3d

    goto :goto_45

    .line 1604
    :cond_3d
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v4, "Wrong key usage"

    invoke-direct {v1, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1610
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3    # "keyUsageInfo":[Z
    :cond_45
    :goto_45
    if-nez p2, :cond_49

    const/4 v0, 0x0

    goto :goto_4d

    :cond_49
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    :goto_4d
    move-object v5, v0

    .line 1613
    .local v5, "publicKey":Ljava/security/PublicKey;
    :try_start_4e
    sget-object v3, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v4, p1

    move-object v8, p3

    invoke-direct/range {v2 .. v8}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_58
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4e .. :try_end_58} :catch_5e

    .line 1617
    nop

    .line 1619
    iput-boolean v1, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1620
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1630
    return-void

    .line 1614
    :catch_5e
    move-exception v0

    .line 1616
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final whitelist test-api unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 2424
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1e

    .line 2425
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-eqz v0, :cond_16

    .line 2428
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    goto :goto_1e

    .line 2429
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized for unwrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2426
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2433
    :cond_1e
    :goto_1e
    const/4 v0, 0x3

    if-eq p3, v0, :cond_30

    const/4 v0, 0x2

    if-eq p3, v0, :cond_30

    const/4 v0, 0x1

    if-ne p3, v0, :cond_28

    goto :goto_30

    .line 2436
    :cond_28
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2439
    :cond_30
    :goto_30
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2440
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1879
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1881
    if-eqz p1, :cond_27

    if-eqz p2, :cond_27

    .line 1884
    if-eq p1, p2, :cond_1f

    .line 1888
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_19

    .line 1892
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1893
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1889
    :cond_19
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1885
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1882
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII[B)I
    .registers 12
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1764
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1767
    if-eqz p1, :cond_20

    if-ltz p2, :cond_20

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_20

    if-ltz p3, :cond_20

    .line 1772
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1773
    if-nez p3, :cond_14

    .line 1774
    const/4 v0, 0x0

    return v0

    .line 1776
    :cond_14
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0

    .line 1769
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII[BI)I
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .line 1822
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1825
    if-eqz p1, :cond_22

    if-ltz p2, :cond_22

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_22

    if-ltz p3, :cond_22

    if-ltz p5, :cond_22

    .line 1831
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1832
    if-nez p3, :cond_16

    .line 1833
    const/4 v0, 0x0

    return v0

    .line 1835
    :cond_16
    iget-object v1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0

    .line 1828
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([B)[B
    .registers 5
    .param p1, "input"    # [B

    .line 1671
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1674
    if-eqz p1, :cond_16

    .line 1678
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1679
    array-length v0, p1

    if-nez v0, :cond_d

    .line 1680
    const/4 v0, 0x0

    return-object v0

    .line 1682
    :cond_d
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0

    .line 1675
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api update([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 1710
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1713
    if-eqz p1, :cond_1b

    if-ltz p2, :cond_1b

    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_1b

    if-ltz p3, :cond_1b

    .line 1718
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1719
    if-nez p3, :cond_14

    .line 1720
    const/4 v0, 0x0

    return-object v0

    .line 1722
    :cond_14
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0

    .line 1715
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api updateAAD(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 2649
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2652
    if-eqz p1, :cond_15

    .line 2656
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2657
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_f

    .line 2658
    return-void

    .line 2660
    :cond_f
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    .line 2661
    return-void

    .line 2653
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src ByteBuffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api updateAAD([B)V
    .registers 4
    .param p1, "src"    # [B

    .line 2565
    if-eqz p1, :cond_8

    .line 2569
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 2570
    return-void

    .line 2566
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "src buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api updateAAD([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 2603
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2606
    if-eqz p1, :cond_1a

    if-ltz p2, :cond_1a

    if-ltz p3, :cond_1a

    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_1a

    .line 2611
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2612
    if-nez p3, :cond_14

    .line 2613
    return-void

    .line 2615
    :cond_14
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    .line 2616
    return-void

    .line 2608
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method greylist-max-o updateProviderIfNeeded()V
    .registers 5

    .line 754
    :try_start_0
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    const/4 v1, 0x0

    iget-object v2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_c

    .line 762
    nop

    .line 763
    return-void

    .line 755
    :catch_c
    move-exception v0

    .line 756
    .local v0, "lastException":Ljava/lang/Exception;
    new-instance v1, Ljava/security/ProviderException;

    const-string v2, "Could not construct CipherSpi instance"

    invoke-direct {v1, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 758
    .local v1, "e":Ljava/security/ProviderException;
    nop

    .line 759
    invoke-virtual {v1, v0}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 761
    throw v1
.end method

.method public final whitelist test-api wrap(Ljava/security/Key;)[B
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 2377
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1e

    .line 2378
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-eqz v0, :cond_16

    .line 2381
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    goto :goto_1e

    .line 2382
    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized for wrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2379
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2387
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2388
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
