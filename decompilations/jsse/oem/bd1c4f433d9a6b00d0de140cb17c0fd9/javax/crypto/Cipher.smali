.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/crypto/Cipher$CipherSpiAndProvider;,
        Ljavax/crypto/Cipher$InitParams;,
        Ljavax/crypto/Cipher$InitType;,
        Ljavax/crypto/Cipher$NeedToSet;,
        Ljavax/crypto/Cipher$SpiAndProviderUpdater;,
        Ljavax/crypto/Cipher$Transform;
    }
.end annotation


# static fields
.field private static final synthetic -javax-crypto-Cipher$InitTypeSwitchesValues:[I = null

.field private static final ATTRIBUTE_MODES:Ljava/lang/String; = "SupportedModes"

.field private static final ATTRIBUTE_PADDINGS:Ljava/lang/String; = "SupportedPaddings"

.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field private static final KEY_USAGE_EXTENSION_OID:Ljava/lang/String; = "2.5.29.15"

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3


# instance fields
.field private exmech:Ljavax/crypto/ExemptionMechanism;

.field private initialized:Z

.field private opmode:I

.field private provider:Ljava/security/Provider;

.field private spi:Ljavax/crypto/CipherSpi;

.field private final spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

.field private final tokenizedTransformation:[Ljava/lang/String;

.field private final transformation:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Ljavax/crypto/Cipher;)[Ljava/lang/String;
    .registers 2
    .param p0, "-this"    # Ljavax/crypto/Cipher;

    .prologue
    iget-object v0, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    return-object v0
.end method

.method private static synthetic -getjavax-crypto-Cipher$InitTypeSwitchesValues()[I
    .registers 3

    sget-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    if-eqz v0, :cond_7

    sget-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    return-object v0

    :cond_7
    invoke-static {}, Ljavax/crypto/Cipher$InitType;->values()[Ljavax/crypto/Cipher$InitType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_e
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_17} :catch_30

    :goto_17
    :try_start_17
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_20} :catch_2e

    :goto_20
    :try_start_20
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v1}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_29} :catch_2c

    :goto_29
    sput-object v0, Ljavax/crypto/Cipher;->-javax-crypto-Cipher$InitTypeSwitchesValues:[I

    return-object v0

    :catch_2c
    move-exception v1

    goto :goto_29

    :catch_2e
    move-exception v1

    goto :goto_20

    :catch_30
    move-exception v1

    goto :goto_17
.end method

.method static synthetic -set0(Ljavax/crypto/Cipher;Ljava/security/Provider;)Ljava/security/Provider;
    .registers 2
    .param p0, "-this"    # Ljavax/crypto/Cipher;
    .param p1, "-value"    # Ljava/security/Provider;

    .prologue
    iput-object p1, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object p1
.end method

.method static synthetic -set1(Ljavax/crypto/Cipher;Ljavax/crypto/CipherSpi;)Ljavax/crypto/CipherSpi;
    .registers 2
    .param p0, "-this"    # Ljavax/crypto/Cipher;
    .param p1, "-value"    # Ljavax/crypto/CipherSpi;

    .prologue
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object p1
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 6
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 311
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 296
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 314
    if-nez p1, :cond_14

    .line 315
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "cipherSpi == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    :cond_14
    instance-of v0, p1, Ljavax/crypto/NullCipherSpi;

    if-nez v0, :cond_23

    if-nez p2, :cond_23

    .line 318
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "provider == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 321
    :cond_23
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 322
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 323
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 324
    iput-object v1, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 327
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    .line 326
    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 328
    return-void
.end method

.method private constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .param p1, "cipherSpi"    # Ljavax/crypto/CipherSpi;
    .param p2, "provider"    # Ljava/security/Provider;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "tokenizedTransformation"    # [Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 292
    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 296
    iput v0, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 334
    iput-object p1, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    .line 335
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 336
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 337
    iput-object p4, p0, Ljavax/crypto/Cipher;->tokenizedTransformation:[Ljava/lang/String;

    .line 340
    new-instance v0, Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    invoke-direct {v0, p0, p2, p1}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;-><init>(Ljavax/crypto/Cipher;Ljava/security/Provider;Ljavax/crypto/CipherSpi;)V

    .line 339
    iput-object v0, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    .line 341
    return-void
.end method

.method private checkCipherState()V
    .registers 3

    .prologue
    .line 1324
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_24

    .line 1325
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_11

    .line 1326
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1328
    :cond_11
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_24

    .line 1329
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    .line 1330
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1334
    :cond_24
    return-void
.end method

.method private static checkOpmode(I)V
    .registers 3
    .param p0, "opmode"    # I

    .prologue
    .line 699
    const/4 v0, 0x1

    if-lt p0, v0, :cond_6

    const/4 v0, 0x4

    if-le p0, v0, :cond_f

    .line 700
    :cond_6
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid operation mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 702
    :cond_f
    return-void
.end method

.method private chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 16
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

    .prologue
    .line 565
    :try_start_0
    new-instance v0, Ljavax/crypto/Cipher$InitParams;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher$InitParams;-><init>(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/SecureRandom;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;)V

    .line 567
    .local v0, "initParams":Ljavax/crypto/Cipher$InitParams;
    iget-object v1, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v2, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v3, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    invoke-virtual {v1, v0, v2, v3}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_15

    .line 584
    return-void

    .line 568
    .end local v0    # "initParams":Ljavax/crypto/Cipher$InitParams;
    :catch_15
    move-exception v8

    .line 570
    .local v8, "lastException":Ljava/lang/Exception;
    instance-of v1, v8, Ljava/security/InvalidKeyException;

    if-eqz v1, :cond_1d

    .line 571
    check-cast v8, Ljava/security/InvalidKeyException;

    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    .line 573
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_1d
    instance-of v1, v8, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v1, :cond_24

    .line 574
    check-cast v8, Ljava/security/InvalidAlgorithmParameterException;

    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    .line 576
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_24
    instance-of v1, v8, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2b

    .line 577
    check-cast v8, Ljava/lang/RuntimeException;

    .end local v8    # "lastException":Ljava/lang/Exception;
    throw v8

    .line 579
    .restart local v8    # "lastException":Ljava/lang/Exception;
    :cond_2b
    if-eqz p3, :cond_4f

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "kName":Ljava/lang/String;
    :goto_35
    new-instance v1, Ljava/security/InvalidKeyException;

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No installed provider supports this key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 580
    invoke-direct {v1, v2, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 579
    .end local v7    # "kName":Ljava/lang/String;
    :cond_4f
    const-string/jumbo v7, "(null)"

    .restart local v7    # "kName":Ljava/lang/String;
    goto :goto_35
.end method

.method static final createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 8
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 517
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 519
    .local v2, "tokenizedTransformation":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 522
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    const/4 v3, 0x0

    :try_start_7
    invoke-static {v3, p1, v2}, Ljavax/crypto/Cipher;->tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_a
    .catch Ljava/security/InvalidKeyException; {:try_start_7 .. :try_end_a} :catch_29
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_7 .. :try_end_a} :catch_29

    move-result-object v0

    .line 528
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-nez v0, :cond_5c

    .line 529
    if-nez p1, :cond_33

    .line 530
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No provider found for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 523
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :catch_29
    move-exception v1

    .line 525
    .local v1, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Key/Algorithm excepton despite not passing one"

    invoke-direct {v3, v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 532
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    .local v0, "cipherSpiAndProvider":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_33
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 533
    const-string/jumbo v5, " does not provide "

    .line 532
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 538
    :cond_5c
    new-instance v3, Ljavax/crypto/Cipher;

    invoke-direct {v3, v4, p1, p0, v2}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method private getAlgorithmParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 6
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2134
    if-nez p1, :cond_4

    .line 2135
    return-object v3

    .line 2138
    :cond_4
    invoke-virtual {p1}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 2140
    .local v0, "alg":Ljava/lang/String;
    const-string/jumbo v1, "RC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2141
    const-class v1, Ljavax/crypto/spec/RC2ParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2144
    :cond_1e
    const-string/jumbo v1, "RC5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2145
    const-class v1, Ljavax/crypto/spec/RC5ParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2148
    :cond_2e
    const-string/jumbo v1, "PBE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 2149
    const-class v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2152
    :cond_3e
    const-string/jumbo v1, "DES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 2153
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    return-object v1

    .line 2155
    :cond_4e
    return-object v3
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
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

    .prologue
    .line 461
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    .line 462
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Missing provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_11
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 465
    .local v0, "p":Ljava/security/Provider;
    if-nez v0, :cond_31

    .line 466
    new-instance v1, Ljava/security/NoSuchProviderException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "No such provider: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 469
    :cond_31
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 4
    .param p0, "transformation"    # Ljava/lang/String;
    .param p1, "provider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 509
    if-nez p1, :cond_b

    .line 510
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Missing provider"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 512
    :cond_b
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->createCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .registers 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 2184
    if-nez p0, :cond_b

    .line 2185
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2188
    :cond_b
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2189
    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 3
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2217
    if-nez p0, :cond_c

    .line 2218
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "transformation == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2221
    :cond_c
    invoke-static {p0}, Ljavax/crypto/Cipher;->tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 2222
    return-object v0
.end method

.method private static getOpmodeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "opmode"    # I

    .prologue
    .line 705
    packed-switch p0, :pswitch_data_18

    .line 715
    const-string/jumbo v0, ""

    return-object v0

    .line 707
    :pswitch_7
    const-string/jumbo v0, "encryption"

    return-object v0

    .line 709
    :pswitch_b
    const-string/jumbo v0, "decryption"

    return-object v0

    .line 711
    :pswitch_f
    const-string/jumbo v0, "key wrapping"

    return-object v0

    .line 713
    :pswitch_13
    const-string/jumbo v0, "key unwrapping"

    return-object v0

    .line 705
    nop

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_7
        :pswitch_b
        :pswitch_f
        :pswitch_13
    .end packed-switch
.end method

.method static matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "service"    # Ljava/security/Provider$Service;
    .param p1, "attr"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 2370
    if-nez p2, :cond_4

    .line 2371
    return v2

    .line 2373
    :cond_4
    invoke-virtual {p0, p1}, Ljava/security/Provider$Service;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2374
    .local v0, "pattern":Ljava/lang/String;
    if-nez v0, :cond_b

    .line 2375
    return v2

    .line 2377
    :cond_b
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 2378
    .local v1, "valueUc":Ljava/lang/String;
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method private static tokenizeTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 9
    .param p0, "transformation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 345
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 346
    :cond_a
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    const-string/jumbo v6, "No transformation given"

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    :cond_13
    new-array v4, v7, [Ljava/lang/String;

    .line 356
    .local v4, "parts":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 357
    .local v0, "count":I
    new-instance v3, Ljava/util/StringTokenizer;

    const-string/jumbo v5, "/"

    invoke-direct {v3, p0, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "parser":Ljava/util/StringTokenizer;
    move v1, v0

    .line 359
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_1f
    :try_start_1f
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_22
    .catch Ljava/util/NoSuchElementException; {:try_start_1f .. :try_end_22} :catch_54

    move-result v5

    if-eqz v5, :cond_35

    if-ge v1, v7, :cond_35

    .line 360
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "count":I
    .restart local v0    # "count":I
    :try_start_29
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1
    :try_end_33
    .catch Ljava/util/NoSuchElementException; {:try_start_29 .. :try_end_33} :catch_9d

    move v1, v0

    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_1f

    .line 362
    :cond_35
    if-eqz v1, :cond_3a

    const/4 v5, 0x2

    if-ne v1, v5, :cond_70

    .line 363
    :cond_3a
    :try_start_3a
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid transformation format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_54
    .catch Ljava/util/NoSuchElementException; {:try_start_3a .. :try_end_54} :catch_54

    .line 367
    :catch_54
    move-exception v2

    .local v2, "e":Ljava/util/NoSuchElementException;
    move v0, v1

    .line 368
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :goto_56
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid transformation format:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 362
    .end local v0    # "count":I
    .end local v2    # "e":Ljava/util/NoSuchElementException;
    .restart local v1    # "count":I
    :cond_70
    :try_start_70
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z
    :try_end_73
    .catch Ljava/util/NoSuchElementException; {:try_start_70 .. :try_end_73} :catch_54

    move-result v5

    if-nez v5, :cond_3a

    .line 371
    aget-object v5, v4, v6

    if-eqz v5, :cond_82

    aget-object v5, v4, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9c

    .line 372
    :cond_82
    new-instance v5, Ljava/security/NoSuchAlgorithmException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid transformation:algorithm not specified-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 376
    :cond_9c
    return-object v4

    .line 367
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_9d
    move-exception v2

    .restart local v2    # "e":Ljava/util/NoSuchElementException;
    goto :goto_56
.end method

.method static tryCombinations(Ljavax/crypto/Cipher$InitParams;Ljava/security/Provider;[Ljava/lang/String;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 16
    .param p0, "initParams"    # Ljavax/crypto/Cipher$InitParams;
    .param p1, "provider"    # Ljava/security/Provider;
    .param p2, "tokenizedTransformation"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 2536
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2537
    .local v7, "transforms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljavax/crypto/Cipher$Transform;>;"
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_45

    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_45

    .line 2538
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2539
    const/4 v10, 0x2

    aget-object v10, p2, v10

    .line 2538
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2539
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->NONE:Ljavax/crypto/Cipher$NeedToSet;

    .line 2538
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2541
    :cond_45
    const/4 v8, 0x1

    aget-object v8, p2, v8

    if-eqz v8, :cond_72

    .line 2542
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2543
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    .line 2542
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2545
    :cond_72
    const/4 v8, 0x2

    aget-object v8, p2, v8

    if-eqz v8, :cond_9f

    .line 2546
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x0

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "//"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x2

    aget-object v10, p2, v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2547
    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    .line 2546
    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2549
    :cond_9f
    new-instance v8, Ljavax/crypto/Cipher$Transform;

    const/4 v9, 0x0

    aget-object v9, p2, v9

    sget-object v10, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    invoke-direct {v8, v9, v10}, Ljavax/crypto/Cipher$Transform;-><init>(Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;)V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2553
    const/4 v0, 0x0

    .line 2555
    .local v0, "cause":Ljava/lang/Exception;
    if-eqz p1, :cond_d5

    .line 2556
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "transform$iterator":Ljava/util/Iterator;
    :cond_b3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_11e

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher$Transform;

    .line 2557
    .local v5, "transform":Ljavax/crypto/Cipher$Transform;
    const-string/jumbo v8, "Cipher"

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    .line 2558
    .local v4, "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_b3

    .line 2561
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v8

    invoke-static {p0, p2, v8, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;

    move-result-object v8

    return-object v8

    .line 2565
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    .end local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_d5
    invoke-static {}, Ljava/security/Security;->getProviders()[Ljava/security/Provider;

    move-result-object v9

    const/4 v8, 0x0

    array-length v10, v9

    .end local v0    # "cause":Ljava/lang/Exception;
    :goto_db
    if-ge v8, v10, :cond_11e

    aget-object v2, v9, v8

    .line 2566
    .local v2, "prov":Ljava/security/Provider;
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_e3
    :goto_e3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_11b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/crypto/Cipher$Transform;

    .line 2567
    .restart local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    const-string/jumbo v11, "Cipher"

    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get0(Ljavax/crypto/Cipher$Transform;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Ljava/security/Provider;->getService(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Provider$Service;

    move-result-object v4

    .line 2568
    .restart local v4    # "service":Ljava/security/Provider$Service;
    if-eqz v4, :cond_e3

    .line 2572
    if-eqz p0, :cond_102

    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v11, :cond_10d

    .line 2576
    :cond_102
    :goto_102
    :try_start_102
    invoke-static {v5}, Ljavax/crypto/Cipher$Transform;->-get1(Ljavax/crypto/Cipher$Transform;)Ljavax/crypto/Cipher$NeedToSet;

    move-result-object v11

    .line 2575
    invoke-static {p0, p2, v11, v4}, Ljavax/crypto/Cipher;->tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_109
    .catch Ljava/lang/Exception; {:try_start_102 .. :try_end_109} :catch_116

    move-result-object v3

    .line 2577
    .local v3, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    if-eqz v3, :cond_e3

    .line 2578
    return-object v3

    .line 2573
    .end local v3    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :cond_10d
    iget-object v11, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-virtual {v4, v11}, Ljava/security/Provider$Service;->supportsParameter(Ljava/lang/Object;)Z

    move-result v11

    .line 2572
    if-eqz v11, :cond_e3

    goto :goto_102

    .line 2580
    :catch_116
    move-exception v1

    .line 2581
    .local v1, "e":Ljava/lang/Exception;
    if-nez v0, :cond_e3

    .line 2582
    move-object v0, v1

    .local v0, "cause":Ljava/lang/Exception;
    goto :goto_e3

    .line 2565
    .end local v0    # "cause":Ljava/lang/Exception;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "service":Ljava/security/Provider$Service;
    .end local v5    # "transform":Ljavax/crypto/Cipher$Transform;
    :cond_11b
    add-int/lit8 v8, v8, 0x1

    goto :goto_db

    .line 2589
    .end local v2    # "prov":Ljava/security/Provider;
    .end local v6    # "transform$iterator":Ljava/util/Iterator;
    :cond_11e
    instance-of v8, v0, Ljava/security/InvalidKeyException;

    if-eqz v8, :cond_125

    .line 2590
    check-cast v0, Ljava/security/InvalidKeyException;

    throw v0

    .line 2591
    :cond_125
    instance-of v8, v0, Ljava/security/InvalidAlgorithmParameterException;

    if-eqz v8, :cond_12c

    .line 2592
    check-cast v0, Ljava/security/InvalidAlgorithmParameterException;

    throw v0

    .line 2593
    :cond_12c
    instance-of v8, v0, Ljava/lang/RuntimeException;

    if-eqz v8, :cond_133

    .line 2594
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 2595
    :cond_133
    if-eqz v0, :cond_13e

    .line 2596
    new-instance v8, Ljava/security/InvalidKeyException;

    const-string/jumbo v9, "No provider can be initialized with given key"

    invoke-direct {v8, v9, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 2597
    :cond_13e
    if-eqz p0, :cond_144

    iget-object v8, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    if-nez v8, :cond_146

    .line 2598
    :cond_144
    const/4 v8, 0x0

    return-object v8

    .line 2602
    :cond_146
    new-instance v8, Ljava/security/InvalidKeyException;

    .line 2603
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "No provider offers "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2604
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-interface {v10}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v10

    .line 2603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2604
    const-string/jumbo v10, " key of class "

    .line 2603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2605
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 2603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2605
    const-string/jumbo v10, " and export format "

    .line 2603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2606
    iget-object v10, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    invoke-interface {v10}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v10

    .line 2603
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2602
    invoke-direct {v8, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method static tryTransformWithProvider(Ljavax/crypto/Cipher$InitParams;[Ljava/lang/String;Ljavax/crypto/Cipher$NeedToSet;Ljava/security/Provider$Service;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .registers 13
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

    .prologue
    const/4 v8, 0x0

    .line 2637
    :try_start_1
    const-string/jumbo v4, "SupportedModes"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2638
    const-string/jumbo v4, "SupportedPaddings"

    const/4 v5, 0x2

    aget-object v5, p1, v5

    invoke-static {p3, v4, v5}, Ljavax/crypto/Cipher;->matchAttribute(Ljava/security/Provider$Service;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 2637
    if-eqz v4, :cond_1c

    .line 2639
    :cond_1b
    return-object v8

    .line 2642
    :cond_1c
    new-instance v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    .line 2643
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Ljava/security/Provider$Service;->newInstance(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/crypto/CipherSpi;

    invoke-virtual {p3}, Ljava/security/Provider$Service;->getProvider()Ljava/security/Provider;

    move-result-object v5

    .line 2642
    invoke-direct {v2, v4, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    .line 2644
    .local v2, "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    if-eqz v4, :cond_34

    iget-object v4, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    if-nez v4, :cond_35

    .line 2645
    :cond_34
    return-object v8

    .line 2647
    :cond_35
    iget-object v3, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->cipherSpi:Ljavax/crypto/CipherSpi;

    .line 2648
    .local v3, "spi":Ljavax/crypto/CipherSpi;
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->MODE:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v4, :cond_3f

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v4, :cond_4a

    .line 2649
    :cond_3f
    const/4 v4, 0x1

    aget-object v4, p1, v4

    if-eqz v4, :cond_4a

    .line 2650
    const/4 v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 2652
    :cond_4a
    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->PADDING:Ljavax/crypto/Cipher$NeedToSet;

    if-eq p2, v4, :cond_52

    sget-object v4, Ljavax/crypto/Cipher$NeedToSet;->BOTH:Ljavax/crypto/Cipher$NeedToSet;

    if-ne p2, v4, :cond_5d

    .line 2653
    :cond_52
    const/4 v4, 0x2

    aget-object v4, p1, v4

    if-eqz v4, :cond_5d

    .line 2654
    const/4 v4, 0x2

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V

    .line 2657
    :cond_5d
    if-eqz p0, :cond_84

    .line 2658
    invoke-static {}, Ljavax/crypto/Cipher;->-getjavax-crypto-Cipher$InitTypeSwitchesValues()[I

    move-result-object v4

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->initType:Ljavax/crypto/Cipher$InitType;

    invoke-virtual {v5}, Ljavax/crypto/Cipher$InitType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_a4

    .line 2671
    new-instance v4, Ljava/lang/AssertionError;

    const-string/jumbo v5, "This should never be reached"

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    .line 2675
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_77
    move-exception v0

    .line 2678
    :goto_78
    return-object v8

    .line 2660
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_79
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->params:Ljava/security/AlgorithmParameters;

    .line 2661
    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    .line 2660
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 2674
    :cond_84
    :goto_84
    new-instance v4, Ljavax/crypto/Cipher$CipherSpiAndProvider;

    iget-object v5, v2, Ljavax/crypto/Cipher$CipherSpiAndProvider;->provider:Ljava/security/Provider;

    invoke-direct {v4, v3, v5}, Ljavax/crypto/Cipher$CipherSpiAndProvider;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;)V

    return-object v4

    .line 2664
    :pswitch_8c
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->spec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 2665
    iget-object v7, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    .line 2664
    invoke-virtual {v3, v4, v5, v6, v7}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    goto :goto_84

    .line 2676
    .end local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .end local v3    # "spi":Ljavax/crypto/CipherSpi;
    :catch_98
    move-exception v1

    .local v1, "ignored":Ljavax/crypto/NoSuchPaddingException;
    goto :goto_78

    .line 2668
    .end local v1    # "ignored":Ljavax/crypto/NoSuchPaddingException;
    .restart local v2    # "sap":Ljavax/crypto/Cipher$CipherSpiAndProvider;
    .restart local v3    # "spi":Ljavax/crypto/CipherSpi;
    :pswitch_9a
    iget v4, p0, Ljavax/crypto/Cipher$InitParams;->opmode:I

    iget-object v5, p0, Ljavax/crypto/Cipher$InitParams;->key:Ljava/security/Key;

    iget-object v6, p0, Ljavax/crypto/Cipher$InitParams;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v4, v5, v6}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    :try_end_a3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_a3} :catch_77
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1 .. :try_end_a3} :catch_98

    goto :goto_84

    .line 2658
    :pswitch_data_a4
    .packed-switch 0x1
        :pswitch_79
        :pswitch_8c
        :pswitch_9a
    .end packed-switch
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
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

    .prologue
    .line 2022
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2024
    if-eqz p1, :cond_7

    if-nez p2, :cond_10

    .line 2025
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2027
    :cond_10
    if-ne p1, p2, :cond_1b

    .line 2028
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2031
    :cond_1b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 2032
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 2035
    :cond_27
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2036
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
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

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1680
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1683
    if-eqz p1, :cond_9

    if-gez p2, :cond_12

    .line 1684
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1687
    :cond_12
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1688
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .registers 11
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

    .prologue
    const/4 v5, 0x0

    .line 1864
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1867
    if-eqz p1, :cond_8

    if-gez p2, :cond_11

    .line 1869
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1868
    :cond_11
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_8

    if-ltz p3, :cond_8

    .line 1872
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1873
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .registers 12
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

    .prologue
    .line 1943
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1946
    if-eqz p1, :cond_7

    if-gez p2, :cond_10

    .line 1949
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1947
    :cond_10
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_7

    if-ltz p3, :cond_7

    .line 1948
    if-ltz p5, :cond_7

    .line 1952
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1953
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1621
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1623
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1624
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .param p1, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1733
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1736
    if-nez p1, :cond_e

    .line 1737
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1740
    :cond_e
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1741
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
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

    .prologue
    .line 1790
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1793
    if-eqz p1, :cond_7

    if-gez p2, :cond_10

    .line 1795
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1794
    :cond_10
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_7

    if-ltz p3, :cond_7

    .line 1798
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1799
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 606
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .registers 2

    .prologue
    .line 616
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 617
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public getCurrentSpi()Ljavax/crypto/CipherSpi;
    .registers 2

    .prologue
    .line 2356
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    return-object v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .registers 2

    .prologue
    .line 692
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 693
    iget-object v0, p0, Ljavax/crypto/Cipher;->exmech:Ljavax/crypto/ExemptionMechanism;

    return-object v0
.end method

.method public final getIV()[B
    .registers 2

    .prologue
    .line 665
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 666
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .prologue
    .line 642
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_13

    instance-of v0, p0, Ljavax/crypto/NullCipher;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_13

    .line 643
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 645
    :cond_13
    if-gez p1, :cond_1e

    .line 646
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input size must be equal to or greater than zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 649
    :cond_1e
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 650
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 681
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 682
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 592
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 593
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .registers 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 772
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 773
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
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

    .prologue
    .line 1051
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1052
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 12
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

    .prologue
    .line 1113
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1114
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1116
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAMS:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 1118
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1119
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1129
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 827
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 828
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 831
    :try_start_6
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_11
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_6 .. :try_end_11} :catch_17

    .line 837
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 838
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 847
    return-void

    .line 832
    :catch_17
    move-exception v7

    .line 834
    .local v7, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
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

    .prologue
    .line 910
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 911
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 12
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

    .prologue
    .line 972
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 973
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 975
    sget-object v1, Ljavax/crypto/Cipher$InitType;->ALGORITHM_PARAM_SPEC:Ljavax/crypto/Cipher$InitType;

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 977
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 978
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 988
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .registers 4
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1197
    sget-object v0, Ljavax/crypto/JceSecurity;->RANDOM:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 1198
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .registers 16
    .param p1, "opmode"    # I
    .param p2, "certificate"    # Ljava/security/cert/Certificate;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v11, 0x1

    const/4 v1, 0x3

    .line 1267
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1268
    invoke-static {p1}, Ljavax/crypto/Cipher;->checkOpmode(I)V

    .line 1272
    instance-of v0, p2, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_48

    move-object v7, p2

    .line 1275
    check-cast v7, Ljava/security/cert/X509Certificate;

    .line 1276
    .local v7, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v8

    .line 1278
    .local v8, "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v8, :cond_48

    invoke-interface {v8}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_48

    .line 1279
    const-string/jumbo v0, "2.5.29.15"

    invoke-interface {v8, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1278
    if-eqz v0, :cond_48

    .line 1280
    invoke-virtual {v7}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v10

    .line 1283
    .local v10, "keyUsageInfo":[Z
    if-eqz v10, :cond_48

    .line 1284
    if-ne p1, v11, :cond_3f

    .line 1285
    array-length v0, v10

    if-le v0, v1, :cond_3f

    .line 1286
    aget-boolean v0, v10, v1

    if-nez v0, :cond_3f

    .line 1290
    :cond_36
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Wrong key usage"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1287
    :cond_3f
    if-ne p1, v1, :cond_48

    .line 1288
    array-length v0, v10

    if-le v0, v2, :cond_48

    .line 1289
    aget-boolean v0, v10, v2

    if-eqz v0, :cond_36

    .line 1296
    .end local v7    # "cert":Ljava/security/cert/X509Certificate;
    .end local v8    # "critSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v10    # "keyUsageInfo":[Z
    :cond_48
    if-nez p2, :cond_5a

    const/4 v3, 0x0

    .line 1299
    :goto_4b
    :try_start_4b
    sget-object v1, Ljavax/crypto/Cipher$InitType;->KEY:Ljavax/crypto/Cipher$InitType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Ljavax/crypto/Cipher;->chooseProvider(Ljavax/crypto/Cipher$InitType;ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    :try_end_55
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_4b .. :try_end_55} :catch_5f

    .line 1305
    iput-boolean v11, p0, Ljavax/crypto/Cipher;->initialized:Z

    .line 1306
    iput p1, p0, Ljavax/crypto/Cipher;->opmode:I

    .line 1316
    return-void

    .line 1296
    :cond_5a
    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .local v3, "publicKey":Ljava/security/PublicKey;
    goto :goto_4b

    .line 1300
    .end local v3    # "publicKey":Ljava/security/PublicKey;
    :catch_5f
    move-exception v9

    .line 1302
    .local v9, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
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

    .prologue
    .line 2110
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1f

    .line 2111
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_11

    .line 2112
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2114
    :cond_11
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1f

    .line 2115
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for unwrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2119
    :cond_1f
    const/4 v0, 0x3

    if-eq p3, v0, :cond_31

    .line 2120
    const/4 v0, 0x2

    if-eq p3, v0, :cond_31

    .line 2121
    const/4 v0, 0x1

    if-eq p3, v0, :cond_31

    .line 2122
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string/jumbo v1, "Invalid key type"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2125
    :cond_31
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2126
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1565
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1567
    if-eqz p1, :cond_7

    if-nez p2, :cond_10

    .line 1568
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffers must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :cond_10
    if-ne p1, p2, :cond_1b

    .line 1571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Input and output buffers must not be the same object, consider using buffer.duplicate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1574
    :cond_1b
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 1575
    new-instance v0, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v0}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v0

    .line 1578
    :cond_27
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1579
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .registers 11
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1450
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1453
    if-eqz p1, :cond_8

    if-gez p2, :cond_11

    .line 1455
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_11
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_8

    if-ltz p3, :cond_8

    .line 1458
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1459
    if-nez p3, :cond_1d

    .line 1460
    return v5

    .line 1462
    :cond_1d
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .registers 12
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

    .prologue
    const/4 v1, 0x0

    .line 1508
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1511
    if-eqz p1, :cond_8

    if-gez p2, :cond_11

    .line 1514
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1512
    :cond_11
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_8

    if-ltz p3, :cond_8

    .line 1513
    if-ltz p5, :cond_8

    .line 1517
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1518
    if-nez p3, :cond_1f

    .line 1519
    return v1

    .line 1521
    :cond_1f
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([B)[B
    .registers 5
    .param p1, "input"    # [B

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1357
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1360
    if-nez p1, :cond_10

    .line 1361
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Null input buffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1364
    :cond_10
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1365
    array-length v0, p1

    if-nez v0, :cond_17

    .line 1366
    return-object v1

    .line 1368
    :cond_17
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    array-length v1, p1

    invoke-virtual {v0, p1, v2, v1}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final update([BII)[B
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v1, 0x0

    .line 1396
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 1399
    if-eqz p1, :cond_8

    if-gez p2, :cond_11

    .line 1401
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1400
    :cond_11
    array-length v0, p1

    sub-int/2addr v0, p2

    if-gt p3, v0, :cond_8

    if-ltz p3, :cond_8

    .line 1404
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 1405
    if-nez p3, :cond_1d

    .line 1406
    return-object v1

    .line 1408
    :cond_1d
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final updateAAD(Ljava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 2335
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2338
    if-nez p1, :cond_e

    .line 2339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src ByteBuffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2342
    :cond_e
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2343
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-nez v0, :cond_18

    .line 2344
    return-void

    .line 2346
    :cond_18
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineUpdateAAD(Ljava/nio/ByteBuffer;)V

    .line 2347
    return-void
.end method

.method public final updateAAD([B)V
    .registers 4
    .param p1, "src"    # [B

    .prologue
    .line 2251
    if-nez p1, :cond_b

    .line 2252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "src buffer is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2255
    :cond_b
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljavax/crypto/Cipher;->updateAAD([BII)V

    .line 2256
    return-void
.end method

.method public final updateAAD([BII)V
    .registers 6
    .param p1, "src"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 2289
    invoke-direct {p0}, Ljavax/crypto/Cipher;->checkCipherState()V

    .line 2292
    if-eqz p1, :cond_7

    if-gez p2, :cond_10

    .line 2294
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Bad arguments"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2292
    :cond_10
    if-ltz p3, :cond_7

    .line 2293
    add-int v0, p3, p2

    array-length v1, p1

    if-gt v0, v1, :cond_7

    .line 2297
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2298
    if-nez p3, :cond_1d

    .line 2299
    return-void

    .line 2301
    :cond_1d
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdateAAD([BII)V

    .line 2302
    return-void
.end method

.method updateProviderIfNeeded()V
    .registers 7

    .prologue
    .line 548
    :try_start_0
    iget-object v2, p0, Ljavax/crypto/Cipher;->spiAndProviderUpdater:Ljavax/crypto/Cipher$SpiAndProviderUpdater;

    iget-object v3, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    iget-object v4, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v3, v4}, Ljavax/crypto/Cipher$SpiAndProviderUpdater;->updateAndGetSpiAndProvider(Ljavax/crypto/Cipher$InitParams;Ljavax/crypto/CipherSpi;Ljava/security/Provider;)Ljavax/crypto/Cipher$CipherSpiAndProvider;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    .line 557
    return-void

    .line 549
    :catch_b
    move-exception v1

    .line 550
    .local v1, "lastException":Ljava/lang/Exception;
    new-instance v0, Ljava/security/ProviderException;

    .line 551
    const-string/jumbo v2, "Could not construct CipherSpi instance"

    .line 550
    invoke-direct {v0, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 552
    .local v0, "e":Ljava/security/ProviderException;
    if-eqz v1, :cond_19

    .line 553
    invoke-virtual {v0, v1}, Ljava/security/ProviderException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 555
    :cond_19
    throw v0
.end method

.method public final wrap(Ljava/security/Key;)[B
    .registers 4
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 2063
    instance-of v0, p0, Ljavax/crypto/NullCipher;

    if-nez v0, :cond_1f

    .line 2064
    iget-boolean v0, p0, Ljavax/crypto/Cipher;->initialized:Z

    if-nez v0, :cond_11

    .line 2065
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2067
    :cond_11
    iget v0, p0, Ljavax/crypto/Cipher;->opmode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1f

    .line 2068
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cipher not initialized for wrapping keys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2073
    :cond_1f
    invoke-virtual {p0}, Ljavax/crypto/Cipher;->updateProviderIfNeeded()V

    .line 2074
    iget-object v0, p0, Ljavax/crypto/Cipher;->spi:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
