.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$Padding;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    }
.end annotation


# instance fields
.field private blacklist blockSize:I

.field blacklist encodedKey:[B

.field private blacklist encrypting:Z

.field blacklist iv:[B

.field blacklist mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field private blacklist padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method constructor blacklist <init>()V
    .registers 2

    .line 128
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 100
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 105
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 129
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 131
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 100
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 105
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 132
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 133
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 134
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    .line 135
    return-void
.end method

.method private blacklist checkAndSetEncodedKey(ILjava/security/Key;)[B
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x1

    if-eq p1, v0, :cond_29

    const/4 v1, 0x3

    if-ne p1, v1, :cond_7

    goto :goto_29

    .line 466
    :cond_7
    const/4 v0, 0x2

    if-eq p1, v0, :cond_25

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    goto :goto_25

    .line 469
    :cond_e
    new-instance v0, Ljava/security/InvalidParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opmode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 467
    :cond_25
    :goto_25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_2b

    .line 465
    :cond_29
    :goto_29
    iput-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    .line 472
    :goto_2b
    instance-of v0, p2, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_44

    .line 476
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 477
    .local v0, "encodedKey":[B
    if-eqz v0, :cond_3c

    .line 480
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 481
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 482
    return-object v0

    .line 478
    :cond_3c
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 473
    .end local v0    # "encodedKey":[B
    :cond_44
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only SecretKey is supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method abstract blacklist checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method abstract blacklist checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method abstract blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method abstract blacklist doFinalInternal([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 14
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

    .line 393
    if-eqz p4, :cond_1d

    .line 397
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v7

    .line 400
    .local v7, "maximumLen":I
    if-lez p3, :cond_16

    .line 401
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    .line 403
    .local v0, "bytesWritten":I
    add-int/2addr p5, v0

    .line 404
    sub-int/2addr v7, v0

    goto :goto_17

    .line 406
    .end local v0    # "bytesWritten":I
    :cond_16
    const/4 v0, 0x0

    .line 409
    .restart local v0    # "bytesWritten":I
    :goto_17
    invoke-virtual {p0, p4, p5, v7}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I

    move-result v1

    add-int/2addr v1, v0

    return v1

    .line 394
    .end local v0    # "bytesWritten":I
    .end local v7    # "maximumLen":I
    :cond_1d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineDoFinal([BII)[B
    .registers 14
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 357
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v7

    .line 359
    .local v7, "maximumLen":I
    new-array v8, v7, [B

    .line 362
    .local v8, "output":[B
    const-string v9, "our calculated buffer was too small"

    if-lez p3, :cond_1d

    .line 364
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v8

    move v6, v7

    :try_start_11
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0
    :try_end_15
    .catch Ljavax/crypto/ShortBufferException; {:try_start_11 .. :try_end_15} :catch_16

    .line 368
    .local v0, "bytesWritten":I
    goto :goto_1e

    .line 365
    .end local v0    # "bytesWritten":I
    :catch_16
    move-exception v0

    .line 367
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 370
    .end local v0    # "e":Ljavax/crypto/ShortBufferException;
    :cond_1d
    const/4 v0, 0x0

    .line 374
    .local v0, "bytesWritten":I
    :goto_1e
    sub-int v1, v7, v0

    :try_start_20
    invoke-virtual {p0, v8, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I

    move-result v1
    :try_end_24
    .catch Ljavax/crypto/ShortBufferException; {:try_start_20 .. :try_end_24} :catch_35

    add-int/2addr v0, v1

    .line 378
    nop

    .line 380
    array-length v1, v8

    if-ne v0, v1, :cond_2a

    .line 381
    return-object v8

    .line 382
    :cond_2a
    if-nez v0, :cond_2f

    .line 383
    sget-object v1, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v1

    .line 385
    :cond_2f
    const/4 v1, 0x0

    invoke-static {v8, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 375
    :catch_35
    move-exception v1

    .line 377
    .local v1, "e":Ljavax/crypto/ShortBufferException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v9, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected whitelist test-api engineGetBlockSize()I
    .registers 2

    .line 237
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected whitelist test-api engineGetIV()[B
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected whitelist test-api engineGetKeySize(Ljava/security/Key;)I
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 451
    instance-of v0, p1, Ljavax/crypto/SecretKey;

    if-eqz v0, :cond_1a

    .line 454
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 455
    .local v0, "encodedKey":[B
    if-eqz v0, :cond_12

    .line 458
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 460
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    return v1

    .line 456
    :cond_12
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    .end local v0    # "encodedKey":[B
    :cond_1a
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only SecretKey is supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineGetOutputSize(I)I
    .registers 4
    .param p1, "inputLen"    # I

    .line 256
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 5

    .line 266
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    array-length v0, v0

    if-lez v0, :cond_1f

    .line 268
    :try_start_8
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v0

    .line 269
    .local v0, "params":Ljava/security/AlgorithmParameters;
    new-instance v2, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    invoke-direct {v2, v3}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v0, v2}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_1a} :catch_1d
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 270
    return-object v0

    .line 273
    .end local v0    # "params":Ljava/security/AlgorithmParameters;
    :catch_1b
    move-exception v0

    .line 274
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    return-object v1

    .line 271
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :catch_1d
    move-exception v0

    .line 272
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v1

    .line 277
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1f
    return-object v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 6
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

    .line 314
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 315
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 316
    return-void
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 295
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 297
    :try_start_3
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_9} :catch_b

    .line 301
    nop

    .line 302
    return-void

    .line 298
    :catch_b
    move-exception v0

    .line 300
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 6
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

    .line 307
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 308
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 309
    return-void
.end method

.method abstract blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected whitelist test-api engineSetMode(Ljava/lang/String;)V
    .registers 6
    .param p1, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 203
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->getNormalized(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_b

    .line 208
    .local v0, "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    nop

    .line 209
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 210
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 211
    return-void

    .line 204
    .end local v0    # "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :catch_b
    move-exception v0

    .line 205
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/security/NoSuchAlgorithmException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "newE":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v1, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 207
    throw v1
.end method

.method protected whitelist test-api engineSetPadding(Ljava/lang/String;)V
    .registers 6
    .param p1, "paddingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 217
    :try_start_0
    invoke-static {p1}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->getNormalized(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_b

    .line 223
    .local v0, "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    nop

    .line 224
    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 225
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 226
    return-void

    .line 218
    .end local v0    # "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :catch_b
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No such padding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 221
    .local v1, "newE":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 222
    throw v1
.end method

.method protected whitelist test-api engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 8
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 428
    const/4 v0, 0x0

    :try_start_1
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v0

    .line 429
    .local v0, "encoded":[B
    const/4 v1, 0x1

    if-ne p3, v1, :cond_17

    .line 430
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 431
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    return-object v2

    .line 432
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :cond_17
    const/4 v1, 0x2

    if-ne p3, v1, :cond_28

    .line 433
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 434
    .restart local v1    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    return-object v2

    .line 435
    .end local v1    # "keyFactory":Ljava/security/KeyFactory;
    :cond_28
    const/4 v1, 0x3

    if-ne p3, v1, :cond_31

    .line 436
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v1, v0, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v1

    .line 438
    :cond_31
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrappedKeyType == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/org/conscrypt/OpenSSLCipher;
    .end local p1    # "wrappedKey":[B
    .end local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .end local p3    # "wrappedKeyType":I
    throw v1
    :try_end_48
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_48} :catch_56
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_48} :catch_4f
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_48} :catch_48

    .line 444
    .end local v0    # "encoded":[B
    .restart local p0    # "this":Lcom/android/org/conscrypt/OpenSSLCipher;
    .restart local p1    # "wrappedKey":[B
    .restart local p2    # "wrappedKeyAlgorithm":Ljava/lang/String;
    .restart local p3    # "wrappedKeyType":I
    :catch_48
    move-exception v0

    .line 445
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 442
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_4f
    move-exception v0

    .line 443
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 440
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_56
    move-exception v0

    .line 441
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v1, Ljava/security/InvalidKeyException;

    invoke-direct {v1, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected whitelist test-api engineUpdate([BII[BI)I
    .registers 14
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

    .line 350
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v7

    .line 351
    .local v7, "maximumLen":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api engineUpdate([BII)[B
    .registers 13
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 320
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v7

    .line 324
    .local v7, "maximumLen":I
    if-lez v7, :cond_a

    .line 325
    new-array v0, v7, [B

    move-object v8, v0

    .local v0, "output":[B
    goto :goto_d

    .line 327
    .end local v0    # "output":[B
    :cond_a
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    move-object v8, v0

    .line 332
    .local v8, "output":[B
    :goto_d
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, v8

    move v6, v7

    :try_start_14
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0
    :try_end_18
    .catch Ljavax/crypto/ShortBufferException; {:try_start_14 .. :try_end_18} :catch_28

    .line 336
    .local v0, "bytesWritten":I
    nop

    .line 338
    array-length v1, v8

    if-ne v1, v0, :cond_1d

    .line 339
    return-object v8

    .line 340
    :cond_1d
    if-nez v0, :cond_22

    .line 341
    sget-object v1, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v1

    .line 343
    :cond_22
    const/4 v1, 0x0

    invoke-static {v8, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    return-object v1

    .line 333
    .end local v0    # "bytesWritten":I
    :catch_28
    move-exception v0

    .line 335
    .local v0, "e":Ljavax/crypto/ShortBufferException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calculated buffer size was wrong: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api engineWrap(Ljava/security/Key;)[B
    .registers 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 415
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 416
    .local v0, "encoded":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v1
    :try_end_a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_a} :catch_b

    return-object v1

    .line 417
    .end local v0    # "encoded":[B
    :catch_b
    move-exception v0

    .line 418
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v1}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 419
    .local v1, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v1, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 420
    throw v1
.end method

.method abstract blacklist getBaseCipherName()Ljava/lang/String;
.end method

.method abstract blacklist getCipherBlockSize()I
.end method

.method abstract blacklist getOutputSizeForFinal(I)I
.end method

.method abstract blacklist getOutputSizeForUpdate(I)I
.end method

.method blacklist getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .registers 2

    .line 232
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method protected blacklist getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 282
    if-eqz p1, :cond_12

    .line 284
    :try_start_2
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v0}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0
    :try_end_8
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_8} :catch_9

    return-object v0

    .line 285
    :catch_9
    move-exception v0

    .line 286
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Params must be convertible to IvParameterSpec"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 290
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_12
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist isEncrypting()Z
    .registers 2

    .line 486
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    return v0
.end method

.method blacklist supportsVariableSizeIv()Z
    .registers 2

    .line 196
    const/4 v0, 0x0

    return v0
.end method

.method blacklist supportsVariableSizeKey()Z
    .registers 2

    .line 192
    const/4 v0, 0x0

    return v0
.end method

.method abstract blacklist updateInternal([BII[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method
