.class public abstract Lcom/android/org/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_AEAD;,
        Lcom/android/org/conscrypt/OpenSSLCipher$EVP_CIPHER;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Mode;,
        Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    }
.end annotation


# instance fields
.field private blockSize:I

.field encodedKey:[B

.field private encrypting:Z

.field iv:[B

.field mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

.field private padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 106
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 78
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 83
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 107
    return-void
.end method

.method constructor <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 109
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 78
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->ECB:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 83
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 110
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 111
    iput-object p2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 112
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    .line 113
    return-void
.end method

.method private checkAndSetEncodedKey(ILjava/security/Key;)[B
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 427
    if-eq p1, v2, :cond_6

    const/4 v1, 0x3

    if-ne p1, v1, :cond_15

    .line 428
    :cond_6
    iput-boolean v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    .line 435
    :goto_8
    instance-of v1, p2, Ljavax/crypto/SecretKey;

    if-nez v1, :cond_39

    .line 436
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "Only SecretKey is supported"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 429
    :cond_15
    const/4 v1, 0x2

    if-eq p1, v1, :cond_1b

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1f

    .line 430
    :cond_1b
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_8

    .line 432
    :cond_1f
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 439
    :cond_39
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 440
    .local v0, "encodedKey":[B
    if-nez v0, :cond_48

    .line 441
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string/jumbo v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 443
    :cond_48
    array-length v1, v0

    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 444
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 445
    return-object v0
.end method


# virtual methods
.method abstract checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method abstract checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method abstract checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method abstract doFinalInternal([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
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

    .prologue
    .line 370
    if-nez p4, :cond_b

    .line 371
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_b
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v6

    .line 377
    .local v6, "maximumLen":I
    if-lez p3, :cond_23

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 378
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v7

    .line 380
    .local v7, "bytesWritten":I
    add-int/2addr p5, v7

    .line 381
    sub-int/2addr v6, v7

    .line 386
    :goto_1d
    invoke-virtual {p0, p4, p5, v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 383
    .end local v7    # "bytesWritten":I
    :cond_23
    const/4 v7, 0x0

    .restart local v7    # "bytesWritten":I
    goto :goto_1d
.end method

.method protected engineDoFinal([BII)[B
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

    .prologue
    const/4 v9, 0x0

    .line 334
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v6

    .line 336
    .local v6, "maximumLen":I
    new-array v4, v6, [B

    .line 339
    .local v4, "output":[B
    if-lez p3, :cond_27

    .line 341
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_e
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_11
    .catch Ljavax/crypto/ShortBufferException; {:try_start_e .. :try_end_11} :catch_1d

    move-result v7

    .line 351
    .local v7, "bytesWritten":I
    :goto_12
    sub-int v0, v6, v7

    :try_start_14
    invoke-virtual {p0, v4, v7, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I
    :try_end_17
    .catch Ljavax/crypto/ShortBufferException; {:try_start_14 .. :try_end_17} :catch_29

    move-result v0

    add-int/2addr v7, v0

    .line 357
    array-length v0, v4

    if-ne v7, v0, :cond_33

    .line 358
    return-object v4

    .line 342
    .end local v7    # "bytesWritten":I
    :catch_1d
    move-exception v8

    .line 344
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 347
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :cond_27
    const/4 v7, 0x0

    .restart local v7    # "bytesWritten":I
    goto :goto_12

    .line 352
    :catch_29
    move-exception v8

    .line 354
    .restart local v8    # "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 359
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :cond_33
    if-nez v7, :cond_38

    .line 360
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    .line 362
    :cond_38
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetBlockSize()I
    .registers 2

    .prologue
    .line 216
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected engineGetIV()[B
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected engineGetOutputSize(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .prologue
    .line 235
    invoke-virtual {p0, p1}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    array-length v3, v3

    if-lez v3, :cond_1c

    .line 247
    :try_start_a
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 248
    .local v2, "params":Ljava/security/AlgorithmParameters;
    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->iv:[B

    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init([B)V
    :try_end_17
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_17} :catch_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_17} :catch_18

    .line 249
    return-object v2

    .line 252
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_18
    move-exception v0

    .line 253
    .local v0, "e":Ljava/io/IOException;
    return-object v4

    .line 250
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1a
    move-exception v1

    .line 251
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    return-object v4

    .line 256
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_1c
    return-object v4
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
    .line 281
    if-eqz p3, :cond_16

    .line 283
    :try_start_2
    const-class v2, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_7
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_2 .. :try_end_7} :catch_c

    move-result-object v1

    .line 292
    :goto_8
    invoke-virtual {p0, p1, p2, v1, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 293
    return-void

    .line 284
    :catch_c
    move-exception v0

    .line 285
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    .line 286
    const-string/jumbo v3, "Params must be convertible to IvParameterSpec"

    .line 285
    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 289
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_16
    const/4 v1, 0x0

    .local v1, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    goto :goto_8
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 7
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 263
    :try_start_3
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_9
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_3 .. :try_end_9} :catch_a

    .line 268
    return-void

    .line 264
    :catch_a
    move-exception v0

    .line 266
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
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

    .prologue
    .line 273
    invoke-direct {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 274
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encodedKey:[B

    invoke-virtual {p0, v0, p3, p4}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 275
    return-void
.end method

.method abstract engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .registers 7
    .param p1, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 181
    :try_start_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Mode;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_9} :catch_10

    move-result-object v1

    .line 187
    .local v1, "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedMode(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V

    .line 188
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 189
    return-void

    .line 182
    .end local v1    # "mode":Lcom/android/org/conscrypt/OpenSSLCipher$Mode;
    :catch_10
    move-exception v0

    .line 183
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "No such mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 184
    .local v2, "newE":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 185
    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .registers 8
    .param p1, "paddingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 193
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 196
    .local v3, "paddingStrUpper":Ljava/lang/String;
    :try_start_6
    invoke-static {v3}, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_9} :catch_10

    move-result-object v2

    .line 203
    .local v2, "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    invoke-virtual {p0, v2}, Lcom/android/org/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 204
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    .line 205
    return-void

    .line 197
    .end local v2    # "padding":Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    :catch_10
    move-exception v0

    .line 198
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "No such padding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 200
    .local v1, "newE":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 201
    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 12
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
    .line 405
    :try_start_0
    array-length v5, p1

    const/4 v6, 0x0

    invoke-virtual {p0, p1, v6, v5}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v3

    .line 406
    .local v3, "encoded":[B
    const/4 v5, 0x1

    if-ne p3, v5, :cond_17

    .line 407
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 408
    .local v4, "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v5

    return-object v5

    .line 409
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_17
    const/4 v5, 0x2

    if-ne p3, v5, :cond_28

    .line 410
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    .line 411
    .restart local v4    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v3}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v5

    return-object v5

    .line 412
    .end local v4    # "keyFactory":Ljava/security/KeyFactory;
    :cond_28
    const/4 v5, 0x3

    if-ne p3, v5, :cond_31

    .line 413
    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v5, v3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v5

    .line 415
    :cond_31
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "wrappedKeyType == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_4b
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_4b} :catch_4b
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_4b} :catch_59
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_4b} :catch_52

    .line 417
    .end local v3    # "encoded":[B
    :catch_4b
    move-exception v2

    .line 418
    .local v2, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 421
    .end local v2    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_52
    move-exception v0

    .line 422
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 419
    .end local v0    # "e":Ljava/security/spec/InvalidKeySpecException;
    :catch_59
    move-exception v1

    .line 420
    .local v1, "e":Ljavax/crypto/BadPaddingException;
    new-instance v5, Ljava/security/InvalidKeyException;

    invoke-direct {v5, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method protected engineUpdate([BII[BI)I
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

    .prologue
    .line 327
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    .local v6, "maximumLen":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 328
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .registers 14
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v9, 0x0

    .line 297
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    .line 301
    .local v6, "maximumLen":I
    if-lez v6, :cond_16

    .line 302
    new-array v4, v6, [B

    .line 309
    .local v4, "output":[B
    :goto_9
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_e
    invoke-virtual/range {v0 .. v6}, Lcom/android/org/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_11
    .catch Ljavax/crypto/ShortBufferException; {:try_start_e .. :try_end_11} :catch_19

    move-result v7

    .line 315
    .local v7, "bytesWritten":I
    array-length v0, v4

    if-ne v0, v7, :cond_34

    .line 316
    return-object v4

    .line 304
    .end local v4    # "output":[B
    .end local v7    # "bytesWritten":I
    :cond_16
    sget-object v4, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    .restart local v4    # "output":[B
    goto :goto_9

    .line 310
    :catch_19
    move-exception v8

    .line 312
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "calculated buffer size was wrong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 317
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v7    # "bytesWritten":I
    :cond_34
    if-nez v7, :cond_39

    .line 318
    sget-object v0, Lcom/android/org/conscrypt/EmptyArray;->BYTE:[B

    return-object v0

    .line 320
    :cond_39
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .registers 7
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 392
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 393
    .local v1, "encoded":[B
    array-length v3, v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4, v3}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B
    :try_end_9
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v3

    return-object v3

    .line 394
    .end local v1    # "encoded":[B
    :catch_b
    move-exception v0

    .line 395
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 396
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 397
    throw v2
.end method

.method abstract getBaseCipherName()Ljava/lang/String;
.end method

.method abstract getCipherBlockSize()I
.end method

.method abstract getOutputSizeForFinal(I)I
.end method

.method abstract getOutputSizeForUpdate(I)I
.end method

.method getPadding()Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .registers 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->padding:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method isEncrypting()Z
    .registers 2

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLCipher;->encrypting:Z

    return v0
.end method

.method supportsVariableSizeIv()Z
    .registers 2

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method supportsVariableSizeKey()Z
    .registers 2

    .prologue
    .line 170
    const/4 v0, 0x0

    return v0
.end method

.method abstract updateInternal([BII[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method
