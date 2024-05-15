.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "EVP_CIPHER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_128;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_256;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$AES_BASE;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$ARC4;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER$DESEDE;
    }
.end annotation


# instance fields
.field calledUpdate:Z

.field private final cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private modeBlockSize:I


# direct methods
.method public constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 7
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 472
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 456
    new-instance v0, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 457
    invoke-static {}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    .line 456
    invoke-direct {v0, v2, v3}, Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 473
    return-void
.end method

.method private reset()V
    .registers 8

    .prologue
    .line 627
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->encodedKey:[B

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->iv:[B

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    .line 629
    return-void
.end method


# virtual methods
.method doFinalInternal([BII)I
    .registers 11
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 556
    move v1, p2

    .line 562
    .local v1, "initialOutputOffset":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v4

    if-nez v4, :cond_f

    iget-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_f

    .line 563
    return v5

    .line 567
    :cond_f
    array-length v4, p1

    sub-int v0, v4, p2

    .line 569
    .local v0, "bytesLeft":I
    if-lt v0, p3, :cond_21

    .line 570
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, p1, p2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v3

    .line 581
    .local v3, "writtenBytes":I
    :cond_1a
    :goto_1a
    add-int/2addr p2, v3

    .line 583
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->reset()V

    .line 585
    sub-int v4, p2, v1

    return v4

    .line 572
    .end local v3    # "writtenBytes":I
    :cond_21
    new-array v2, p3, [B

    .line 573
    .local v2, "lastBlock":[B
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, v2, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v3

    .line 574
    .restart local v3    # "writtenBytes":I
    if-le v3, v0, :cond_50

    .line 575
    new-instance v4, Ljavax/crypto/ShortBufferException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "buffer is too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 577
    :cond_50
    if-lez v3, :cond_1a

    .line 578
    invoke-static {v2, v5, p1, p2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    goto :goto_1a
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 20
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 480
    move-object/from16 v0, p2

    instance-of v3, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v3, :cond_53

    move-object/from16 v15, p2

    .line 481
    check-cast v15, Ljavax/crypto/spec/IvParameterSpec;

    .line 482
    .local v15, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v15}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v13

    .line 488
    .end local v15    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :goto_e
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 487
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v4

    .line 489
    .local v4, "cipherType":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_55

    .line 490
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Cannot find name for key length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 491
    move-object/from16 v0, p1

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x8

    .line 490
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 491
    const-string/jumbo v7, " and mode = "

    .line 490
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 491
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 490
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 484
    .end local v4    # "cipherType":J
    :cond_53
    const/4 v13, 0x0

    .local v13, "iv":[B
    goto :goto_e

    .line 494
    .end local v13    # "iv":[B
    .restart local v4    # "cipherType":J
    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v8

    .line 496
    .local v8, "encrypting":Z
    invoke-static {v4, v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v2

    .line 497
    .local v2, "expectedIvLength":I
    if-nez v13, :cond_e3

    if-eqz v2, :cond_e3

    .line 498
    if-nez v8, :cond_88

    .line 499
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IV must be specified in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 500
    const-string/jumbo v7, " mode"

    .line 499
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 503
    :cond_88
    new-array v13, v2, [B

    .line 504
    .local v13, "iv":[B
    if-eqz p3, :cond_df

    .line 505
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 516
    .end local v13    # "iv":[B
    :cond_91
    :goto_91
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->iv:[B

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->supportsVariableSizeKey()Z

    move-result v3

    if-eqz v3, :cond_137

    .line 519
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 520
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v3, v6}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    .line 521
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v14

    move-object/from16 v12, p1

    invoke-static/range {v9 .. v14}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 528
    :goto_bd
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v3

    sget-object v7, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v3, v7, :cond_143

    const/4 v3, 0x1

    .line 527
    :goto_ca
    invoke-static {v6, v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    .line 529
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    .line 530
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    .line 531
    return-void

    .line 507
    .restart local v13    # "iv":[B
    :cond_df
    invoke-static {v13}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_91

    .line 509
    .end local v13    # "iv":[B
    :cond_e3
    if-nez v2, :cond_10c

    if-eqz v13, :cond_10c

    .line 510
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "IV not used in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 511
    :cond_10c
    if-eqz v13, :cond_91

    array-length v3, v13

    if-eq v3, v2, :cond_91

    .line 512
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "expected IV length of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    const-string/jumbo v7, " but was "

    .line 512
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    array-length v7, v13

    .line 512
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 523
    :cond_137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-static/range {v3 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    goto/16 :goto_bd

    .line 528
    :cond_143
    const/4 v3, 0x0

    goto :goto_ca
.end method

.method abstract getCipherName(ILcom/android/org/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method getOutputSizeForFinal(I)I
    .registers 8
    .param p1, "inputLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 590
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_7

    .line 591
    return p1

    .line 593
    :cond_7
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    .line 595
    .local v0, "buffered":I
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v3

    sget-object v5, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne v3, v5, :cond_18

    .line 596
    add-int v3, v0, p1

    return v3

    .line 598
    :cond_18
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lcom/android/org/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    .line 600
    .local v1, "finalUsed":Z
    add-int v5, p1, v0

    if-eqz v1, :cond_3c

    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    :goto_24
    add-int v2, v5, v3

    .line 604
    .local v2, "totalLen":I
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    rem-int v3, v2, v3

    if-nez v3, :cond_32

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->isEncrypting()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 605
    :cond_32
    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    .line 604
    :cond_34
    add-int/2addr v2, v4

    .line 607
    iget v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->modeBlockSize:I

    rem-int v3, v2, v3

    sub-int v3, v2, v3

    return v3

    .end local v2    # "totalLen":I
    :cond_3c
    move v3, v4

    .line 600
    goto :goto_24
.end method

.method getOutputSizeForUpdate(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .prologue
    .line 614
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method updateInternal([BII[BII)I
    .registers 15
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 536
    move v7, p5

    .line 538
    .local v7, "intialOutputOffset":I
    array-length v0, p4

    sub-int v6, v0, p5

    .line 539
    .local v6, "bytesLeft":I
    if-ge v6, p6, :cond_2b

    .line 540
    new-instance v0, Ljavax/crypto/ShortBufferException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output buffer too small during update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 541
    const-string/jumbo v2, " < "

    .line 540
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/crypto/ShortBufferException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 544
    :cond_2b
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->cipherCtx:Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v1, p4

    move v2, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lcom/android/org/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result v0

    add-int/2addr p5, v0

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;->calledUpdate:Z

    .line 549
    sub-int v0, p5, v7

    return v0
.end method
