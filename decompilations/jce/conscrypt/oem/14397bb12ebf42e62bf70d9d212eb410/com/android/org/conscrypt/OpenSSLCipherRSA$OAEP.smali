.class Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;
.super Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "OAEP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA1;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA224;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA256;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA384;,
        Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP$SHA512;
    }
.end annotation


# instance fields
.field private label:[B

.field private mgf1Md:J

.field private oaepMd:J

.field private oaepMdSizeBytes:I

.field private pkeyCtx:Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;


# direct methods
.method public constructor <init>(JI)V
    .registers 5
    .param p1, "defaultMd"    # J
    .param p3, "defaultMdSizeBytes"    # I

    .prologue
    .line 416
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 417
    #disallowed odex opcode
    #iput-wide-quick p1, p0, field@0x28
    nop

    #disallowed odex opcode
    #iput-wide-quick p1, p0, field@0x30
    nop

    .line 418
    #disallowed odex opcode
    #iput-quick p3, p0, field@0x24
    nop

    .line 419
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .registers 10
    .param p1, "spec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 535
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@12
    nop

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@61
    nop

    move-result-object v2

    .line 536
    .local v2, "mgfAlgUpper":Ljava/lang/String;
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@13
    nop

    move-result-object v3

    .line 537
    .local v3, "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string/jumbo v6, "MGF1"

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v2}, vtable@1
    nop

    move-result v6

    if-nez v6, :cond_22

    .line 538
    const-string/jumbo v6, "1.2.840.113549.1.1.8"

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v2}, vtable@1
    nop

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 537
    if-nez v6, :cond_28

    .line 539
    :cond_22
    instance-of v6, v3, Ljava/security/spec/MGF1ParameterSpec;

    xor-int/lit8 v6, v6, 0x1

    .line 537
    if-eqz v6, :cond_31

    .line 540
    :cond_28
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    .line 541
    const-string/jumbo v7, "Only MGF1 supported as mask generation function"

    .line 540
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_31
    move-object v1, v3

    .line 544
    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    .line 545
    .local v1, "mgf1spec":Ljava/security/spec/MGF1ParameterSpec;
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@11
    nop

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@61
    nop

    move-result-object v4

    .line 547
    .local v4, "oaepAlgUpper":Ljava/lang/String;
    :try_start_3e
    invoke-static {v4}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v6

    #disallowed odex opcode
    #iput-wide-quick v6, p0, field@0x30
    nop

    .line 549
    invoke-static {v4}, Lcom/android/org/conscrypt/EvpMdRef;->getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I

    move-result v6

    .line 548
    #disallowed odex opcode
    #iput-quick v6, p0, field@0x24
    nop

    .line 551
    #disallowed odex opcode
    #invoke-virtual-quick {v1}, vtable@11
    nop

    move-result-object v6

    .line 550
    invoke-static {v6}, Lcom/android/org/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v6

    #disallowed odex opcode
    #iput-wide-quick v6, p0, field@0x28
    nop
    :try_end_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3e .. :try_end_54} :catch_74

    .line 556
    #disallowed odex opcode
    #invoke-virtual-quick {p1}, vtable@14
    nop

    move-result-object v5

    .line 557
    .local v5, "pSource":Ljavax/crypto/spec/PSource;
    const-string/jumbo v6, "PSpecified"

    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@11
    nop

    move-result-object v7

    #disallowed odex opcode
    #invoke-virtual-quick {v6, v7}, vtable@1
    nop

    move-result v6

    if-eqz v6, :cond_6b

    .line 558
    instance-of v6, v5, Ljavax/crypto/spec/PSource$PSpecified;

    xor-int/lit8 v6, v6, 0x1

    .line 557
    if-eqz v6, :cond_7b

    .line 559
    :cond_6b
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    .line 560
    const-string/jumbo v7, "Only PSpecified accepted for PSource"

    .line 559
    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 552
    .end local v5    # "pSource":Ljavax/crypto/spec/PSource;
    :catch_74
    move-exception v0

    .line 553
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v6, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 562
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "pSource":Ljavax/crypto/spec/PSource;
    :cond_7b
    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    .end local v5    # "pSource":Ljavax/crypto/spec/PSource;
    #disallowed odex opcode
    #invoke-virtual-quick {v5}, vtable@12
    nop

    move-result-object v6

    #disallowed odex opcode
    #iput-object-quick v6, p0, field@0x1c
    nop

    .line 563
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 507
    new-instance v2, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;

    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x18
    nop

    if-eqz v0, :cond_4b

    .line 508
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_encrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    .line 507
    :goto_10
    invoke-direct {v2, v0, v1}, Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;-><init>(J)V

    #disallowed odex opcode
    #iput-object-quick v2, p0, field@0x20
    nop

    .line 511
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_1e

    .line 512
    nop

    nop

    .end local p1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipherRSA$OAEP;->readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 516
    :cond_1e
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    #disallowed odex opcode
    #iget-wide-quick v0, v0, field@0x8
    nop

    const/4 v2, 0x4

    .line 515
    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 517
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    #disallowed odex opcode
    #iget-wide-quick v0, v0, field@0x8
    nop

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x30
    nop

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V

    .line 518
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    #disallowed odex opcode
    #iget-wide-quick v0, v0, field@0x8
    nop

    #disallowed odex opcode
    #iget-wide-quick v2, p0, field@0x28
    nop

    invoke-static {v0, v1, v2, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    .line 519
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x1c
    nop

    if-eqz v0, :cond_4a

    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x1c
    nop

    array-length v0, v0

    if-lez v0, :cond_4a

    .line 520
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    #disallowed odex opcode
    #iget-wide-quick v0, v0, field@0x8
    nop

    #disallowed odex opcode
    #iget-object-quick v2, p0, field@0x1c
    nop

    invoke-static {v0, v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V

    .line 522
    :cond_4a
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 509
    .restart local p1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_4b
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0xc
    nop

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_decrypt_init(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    goto :goto_10
.end method

.method doCryptoOperation([B[B)I
    .registers 9
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 568
    #disallowed odex opcode
    #iget-boolean-quick v0, p0, field@0x18
    nop

    if-eqz v0, :cond_10

    .line 569
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_encrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result v0

    return v0

    .line 571
    :cond_10
    #disallowed odex opcode
    #iget-object-quick v0, p0, field@0x20
    nop

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_PKEY_decrypt(Lcom/android/org/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 423
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@34
    nop

    move-result v3

    if-nez v3, :cond_8

    .line 424
    return-object v4

    .line 428
    :cond_8
    :try_start_8
    const-string/jumbo v3, "OAEP"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 431
    .local v2, "params":Ljava/security/AlgorithmParameters;
    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x1c
    nop

    if-nez v3, :cond_32

    .line 432
    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 437
    .local v1, "pSrc":Ljavax/crypto/spec/PSource;
    :goto_15
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    .line 438
    #disallowed odex opcode
    #iget-wide-quick v4, p0, field@0x30
    nop

    invoke-static {v4, v5}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v4

    .line 439
    const-string/jumbo v5, "MGF1"

    .line 440
    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    .line 441
    #disallowed odex opcode
    #iget-wide-quick v8, p0, field@0x28
    nop

    invoke-static {v8, v9}, Lcom/android/org/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v7

    .line 440
    invoke-direct {v6, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 437
    invoke-direct {v3, v4, v5, v6, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    #disallowed odex opcode
    #invoke-virtual-quick {v2, v3}, vtable@16
    nop

    .line 443
    return-object v2

    .line 434
    .end local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    :cond_32
    new-instance v1, Ljavax/crypto/spec/PSource$PSpecified;

    #disallowed odex opcode
    #iget-object-quick v3, p0, field@0x1c
    nop

    invoke-direct {v1, v3}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V
    :try_end_39
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_39} :catch_3a
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_8 .. :try_end_39} :catch_3a

    .restart local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    goto :goto_15

    .line 444
    .end local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_3a
    move-exception v0

    .line 445
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "No providers of AlgorithmParameters.OAEP available"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 9
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
    .line 476
    const/4 v1, 0x0

    .line 477
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    if-eqz p3, :cond_b

    .line 479
    :try_start_3
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    #disallowed odex opcode
    #invoke-virtual-quick {p3, v2}, vtable@14
    nop

    move-result-object v1

    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_b
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_3 .. :try_end_b} :catch_f

    .line 486
    :cond_b
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, v1}, vtable@33
    nop

    .line 487
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 480
    :catch_f
    move-exception v0

    .line 481
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 482
    const-string/jumbo v3, "Only OAEP parameters are supported"

    .line 481
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 464
    if-eqz p3, :cond_11

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 465
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    .line 466
    const-string/jumbo v1, "Only OAEPParameterSpec accepted in OAEP mode"

    .line 465
    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 469
    :cond_11
    #disallowed odex opcode
    #invoke-virtual-quick {p0, p1, p2, p3}, vtable@33
    nop

    .line 470
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-ne p1, v0, :cond_13

    .line 493
    :cond_6
    instance-of v0, p2, Ljava/security/PublicKey;

    if-nez v0, :cond_26

    .line 494
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Only public keys may be used to encrypt"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 496
    :cond_13
    const/4 v0, 0x2

    if-eq p1, v0, :cond_19

    const/4 v0, 0x4

    if-ne p1, v0, :cond_26

    .line 497
    :cond_19
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_26

    .line 498
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string/jumbo v1, "Only private keys may be used to decrypt"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 501
    :cond_26
    invoke-super {p0, p1, p2, p3}, Lcom/android/org/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 502
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 5
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 451
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    #disallowed odex opcode
    #invoke-virtual-quick {p1, v1}, vtable@61
    nop

    move-result-object v0

    .line 452
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string/jumbo v1, "OAEPPadding"

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@1
    nop

    move-result v1

    if-eqz v1, :cond_13

    .line 453
    const/4 v1, 0x4

    #disallowed odex opcode
    #iput-quick v1, p0, field@0x14
    nop

    .line 454
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 457
    :cond_13
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string/jumbo v2, "Only OAEP padding is supported"

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method paddedBlockSizeBytes()I
    .registers 3

    .prologue
    .line 526
    #disallowed odex opcode
    #invoke-virtual-quick {p0}, vtable@35
    nop

    move-result v0

    .line 530
    .local v0, "paddedBlockSizeBytes":I
    #disallowed odex opcode
    #iget-quick v1, p0, field@0x24
    nop

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    return v1
.end method
