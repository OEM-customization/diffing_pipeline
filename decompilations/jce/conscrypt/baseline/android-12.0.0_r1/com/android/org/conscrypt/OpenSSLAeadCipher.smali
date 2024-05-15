.class public abstract Lcom/android/org/conscrypt/OpenSSLAeadCipher;
.super Lcom/android/org/conscrypt/OpenSSLCipher;
.source "OpenSSLAeadCipher.java"


# static fields
.field static final blacklist DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static final blacklist ENABLE_BYTEBUFFER_OPTIMIZATIONS:Z = true

.field private static blacklist lastGlobalMessageSize:I


# instance fields
.field private blacklist aad:[B

.field blacklist buf:[B

.field blacklist bufCount:I

.field blacklist evpAead:J

.field private blacklist mustInitialize:Z

.field private blacklist previousIv:[B

.field private blacklist previousKey:[B

.field blacklist tagLengthInBytes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    const/16 v0, 0x20

    sput v0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;)V
    .registers 3
    .param p1, "mode"    # Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    .line 97
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLCipher;-><init>(Lcom/android/org/conscrypt/OpenSSLCipher$Mode;Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V

    .line 98
    return-void
.end method

.method private blacklist arraysAreEqual([B[B)Z
    .registers 8
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .line 110
    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_6

    .line 111
    return v2

    .line 114
    :cond_6
    const/4 v0, 0x0

    .line 115
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v3, p1

    if-ge v1, v3, :cond_14

    .line 116
    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 118
    .end local v1    # "i":I
    :cond_14
    if-nez v0, :cond_17

    const/4 v2, 0x1

    :cond_17
    return v2
.end method

.method private blacklist checkInitialization()V
    .registers 3

    .line 101
    iget-boolean v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    if-nez v0, :cond_5

    .line 105
    return-void

    .line 102
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-use same key and IV for multiple encryptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist expand(I)V
    .registers 6
    .param p1, "i"    # I

    .line 123
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int v1, v0, p1

    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    array-length v3, v2

    if-gt v1, v3, :cond_a

    .line 124
    return-void

    .line 127
    :cond_a
    add-int v1, v0, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [B

    .line 128
    .local v1, "newbuf":[B
    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    .line 130
    return-void
.end method

.method private blacklist reset()V
    .registers 4

    .line 133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 134
    sget v0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 135
    .local v0, "lastBufSize":I
    iget-object v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-nez v1, :cond_e

    .line 136
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    goto :goto_1d

    .line 137
    :cond_e
    iget v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-lez v2, :cond_1d

    if-eq v2, v0, :cond_1d

    .line 138
    sput v2, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 139
    array-length v1, v1

    if-eq v1, v2, :cond_1d

    .line 140
    new-array v1, v2, [B

    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    .line 143
    :cond_1d
    :goto_1d
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    .line 144
    return-void
.end method

.method private blacklist throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 8
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 312
    :try_start_0
    const-string v0, "javax.crypto.AEADBadTagException"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 313
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_3c

    .line 316
    .local v0, "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    nop

    .line 318
    const/4 v2, 0x0

    .line 320
    .local v2, "badTagException":Ljavax/crypto/BadPaddingException;
    :try_start_14
    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/BadPaddingException;

    move-object v2, v1

    .line 321
    invoke-virtual {v2, p2}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_22
    .catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_22} :catch_36
    .catch Ljava/lang/InstantiationException; {:try_start_14 .. :try_end_22} :catch_34
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_22} :catch_23

    goto :goto_37

    .line 326
    :catch_23
    move-exception v1

    .line 327
    .local v1, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljavax/crypto/BadPaddingException;

    invoke-direct {v3}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 328
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v4

    .line 327
    invoke-virtual {v3, v4}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljavax/crypto/BadPaddingException;

    throw v3

    .line 324
    .end local v1    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :catch_34
    move-exception v1

    goto :goto_37

    .line 322
    :catch_36
    move-exception v1

    .line 329
    :goto_37
    nop

    .line 330
    if-nez v2, :cond_3b

    .line 333
    return-void

    .line 331
    :cond_3b
    throw v2

    .line 314
    .end local v0    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "badTagException":Ljavax/crypto/BadPaddingException;
    :catch_3c
    move-exception v0

    .line 315
    .local v0, "ignored":Ljava/lang/Exception;
    return-void
.end method


# virtual methods
.method blacklist allowsNonceReuse()Z
    .registers 2

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method blacklist checkSupportedPadding(Lcom/android/org/conscrypt/OpenSSLCipher$Padding;)V
    .registers 4
    .param p1, "padding"    # Lcom/android/org/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .line 383
    sget-object v0, Lcom/android/org/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lcom/android/org/conscrypt/OpenSSLCipher$Padding;

    if-ne p1, v0, :cond_5

    .line 386
    return-void

    .line 384
    :cond_5
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding for AEAD ciphers"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist checkSupportedTagLength(I)V
    .registers 5
    .param p1, "tagLenBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 217
    rem-int/lit8 v0, p1, 0x8

    if-nez v0, :cond_5

    .line 221
    return-void

    .line 218
    :cond_5
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag length must be a multiple of 8; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 12
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 337
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 340
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 341
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I

    move-result v0

    .local v0, "bytesWritten":I
    goto :goto_2a

    .line 344
    .end local v0    # "bytesWritten":I
    :cond_1a
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v5, p2

    move-object v7, p1

    invoke-static/range {v1 .. v8}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I

    move-result v0
    :try_end_2a
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_2a} :catch_35

    .line 350
    .restart local v0    # "bytesWritten":I
    :goto_2a
    nop

    .line 351
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 352
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 354
    :cond_34
    return v0

    .line 347
    .end local v0    # "bytesWritten":I
    :catch_35
    move-exception v0

    .line 348
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 349
    throw v0
.end method

.method blacklist doFinalInternal([BII)I
    .registers 16
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 360
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 363
    :try_start_3
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 364
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v11, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v11}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I

    move-result v0

    .local v0, "bytesWritten":I
    goto :goto_34

    .line 367
    .end local v0    # "bytesWritten":I
    :cond_1f
    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v3, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v8, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v11, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v5, p1

    move v6, p2

    invoke-static/range {v1 .. v11}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I

    move-result v0
    :try_end_34
    .catch Ljavax/crypto/BadPaddingException; {:try_start_3 .. :try_end_34} :catch_42

    .line 373
    .restart local v0    # "bytesWritten":I
    :goto_34
    nop

    .line 374
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 375
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 377
    :cond_3e
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->reset()V

    .line 378
    return v0

    .line 370
    .end local v0    # "bytesWritten":I
    :catch_42
    move-exception v0

    .line 371
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 372
    throw v0
.end method

.method protected whitelist test-api engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .line 238
    if-eqz p1, :cond_7f

    if-eqz p2, :cond_7f

    .line 241
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_77

    .line 244
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 247
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eqz v0, :cond_21

    .line 248
    invoke-super {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 251
    :cond_21
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_39

    .line 252
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 253
    .local v0, "incap":I
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 254
    .local v1, "inputClone":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 255
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 256
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 257
    move-object p1, v1

    .line 259
    .end local v0    # "incap":I
    .end local v1    # "inputClone":Ljava/nio/ByteBuffer;
    :cond_39
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_5b

    .line 260
    nop

    .line 261
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 262
    .local v0, "outputClone":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 263
    .local v1, "bytesWritten":I
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 264
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    .end local v0    # "outputClone":Ljava/nio/ByteBuffer;
    goto :goto_6e

    .line 266
    .end local v1    # "bytesWritten":I
    :cond_5b
    invoke-virtual {p0, p1, p2}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 267
    .restart local v1    # "bytesWritten":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 268
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 271
    :goto_6e
    return v1

    .line 245
    .end local v1    # "bytesWritten":I
    :cond_6f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot write to Read Only ByteBuffer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_77
    new-instance v0, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v1, "Insufficient Bytes for Output Buffer"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 239
    :cond_7f
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null ByteBuffer Error"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineDoFinal([BII[BI)I
    .registers 8
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

    .line 282
    if-eqz p4, :cond_13

    .line 283
    invoke-virtual {p0, p3}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    array-length v1, p4

    sub-int/2addr v1, p5

    if-gt v0, v1, :cond_b

    goto :goto_13

    .line 284
    :cond_b
    new-instance v0, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v1, "Insufficient output space"

    invoke-direct {v0, v1}, Lcom/android/org/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 287
    :cond_13
    :goto_13
    invoke-super/range {p0 .. p5}, Lcom/android/org/conscrypt/OpenSSLCipher;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method blacklist engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 12
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 152
    if-nez p2, :cond_6

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "iv":[B
    const/16 v1, 0x80

    .local v1, "tagLenBits":I
    goto :goto_2b

    .line 156
    .end local v0    # "iv":[B
    .end local v1    # "tagLenBits":I
    :cond_6
    invoke-static {p2}, Lcom/android/org/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lcom/android/org/conscrypt/GCMParameters;

    move-result-object v0

    .line 157
    .local v0, "gcmParams":Lcom/android/org/conscrypt/GCMParameters;
    if-eqz v0, :cond_17

    .line 158
    invoke-virtual {v0}, Lcom/android/org/conscrypt/GCMParameters;->getIV()[B

    move-result-object v1

    .line 159
    .local v1, "iv":[B
    invoke-virtual {v0}, Lcom/android/org/conscrypt/GCMParameters;->getTLen()I

    move-result v2

    move-object v0, v1

    move v1, v2

    .local v2, "tagLenBits":I
    goto :goto_2b

    .line 160
    .end local v1    # "iv":[B
    .end local v2    # "tagLenBits":I
    :cond_17
    instance-of v1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_26

    .line 161
    move-object v1, p2

    check-cast v1, Ljavax/crypto/spec/IvParameterSpec;

    .line 162
    .local v1, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v2

    .line 163
    .local v2, "iv":[B
    const/16 v1, 0x80

    .line 164
    .local v1, "tagLenBits":I
    move-object v0, v2

    goto :goto_2b

    .line 165
    .end local v1    # "tagLenBits":I
    .end local v2    # "iv":[B
    :cond_26
    const/4 v1, 0x0

    .line 166
    .local v1, "iv":[B
    const/16 v2, 0x80

    move-object v0, v1

    move v1, v2

    .line 170
    .local v0, "iv":[B
    .local v1, "tagLenBits":I
    :goto_2b
    invoke-virtual {p0, v1}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->checkSupportedTagLength(I)V

    .line 172
    div-int/lit8 v2, v1, 0x8

    iput v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    .line 174
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v2

    .line 176
    .local v2, "encrypting":Z
    array-length v3, p1

    invoke-virtual {p0, v3}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->getEVP_AEAD(I)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->evpAead:J

    .line 178
    invoke-static {v3, v4}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    move-result v3

    .line 179
    .local v3, "expectedIvLength":I
    const-string v4, " mode"

    if-nez v0, :cond_71

    if-eqz v3, :cond_71

    .line 180
    if-eqz v2, :cond_55

    .line 185
    new-array v0, v3, [B

    .line 186
    if-eqz p3, :cond_51

    .line 187
    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_b8

    .line 189
    :cond_51
    invoke-static {v0}, Lcom/android/org/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_b8

    .line 181
    :cond_55
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IV must be specified in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 191
    :cond_71
    if-nez v3, :cond_92

    if-nez v0, :cond_76

    goto :goto_92

    .line 192
    :cond_76
    new-instance v5, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IV not used in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mode:Lcom/android/org/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 193
    :cond_92
    :goto_92
    if-eqz v0, :cond_b8

    array-length v4, v0

    if-ne v4, v3, :cond_98

    goto :goto_b8

    .line 194
    :cond_98
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Expected IV length of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " but was "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 198
    :cond_b8
    :goto_b8
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v4

    if-eqz v4, :cond_ec

    if-eqz v0, :cond_ec

    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->allowsNonceReuse()Z

    move-result v4

    if-nez v4, :cond_ec

    .line 199
    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    if-eqz v4, :cond_e8

    iget-object v5, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    if-eqz v5, :cond_e8

    .line 200
    invoke-direct {p0, v4, p1}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_e8

    iget-object v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 201
    invoke-direct {p0, v4, v0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result v4

    if-nez v4, :cond_dd

    goto :goto_e8

    .line 202
    :cond_dd
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 203
    new-instance v4, Ljava/security/InvalidAlgorithmParameterException;

    const-string v5, "When using AEAD key and IV must not be re-used"

    invoke-direct {v4, v5}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 207
    :cond_e8
    :goto_e8
    iput-object p1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    .line 208
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 210
    :cond_ec
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 211
    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->iv:[B

    .line 212
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->reset()V

    .line 213
    return-void
.end method

.method protected whitelist test-api engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .line 420
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 421
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v0, :cond_13

    .line 422
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 423
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    goto :goto_2e

    .line 425
    :cond_13
    array-length v0, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    .line 426
    .local v0, "newSize":I
    new-array v1, v0, [B

    .line 427
    .local v1, "newaad":[B
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    iget-object v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 429
    iput-object v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 431
    .end local v0    # "newSize":I
    .end local v1    # "newaad":[B
    :goto_2e
    return-void
.end method

.method protected whitelist test-api engineUpdateAAD([BII)V
    .registers 9
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .line 405
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 406
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v0, :cond_10

    .line 407
    add-int v0, p2, p3

    invoke-static {p1, p2, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    goto :goto_21

    .line 409
    :cond_10
    array-length v1, v0

    add-int/2addr v1, p3

    .line 410
    .local v1, "newSize":I
    new-array v2, v1, [B

    .line 411
    .local v2, "newaad":[B
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 412
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v0, v0

    invoke-static {p1, p2, v2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    iput-object v2, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 415
    .end local v1    # "newSize":I
    .end local v2    # "newaad":[B
    :goto_21
    return-void
.end method

.method abstract blacklist getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method blacklist getOutputSizeForFinal(I)I
    .registers 5
    .param p1, "inputLen"    # I

    .line 398
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p1

    .line 399
    invoke-virtual {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v1

    if-eqz v1, :cond_10

    iget-wide v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->evpAead:J

    invoke-static {v1, v2}, Lcom/android/org/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    add-int/2addr v0, v1

    .line 398
    return v0
.end method

.method blacklist getOutputSizeForUpdate(I)I
    .registers 3
    .param p1, "inputLen"    # I

    .line 393
    const/4 v0, 0x0

    return v0
.end method

.method blacklist updateInternal([BII[BII)I
    .registers 9
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

    .line 293
    invoke-direct {p0}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 294
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-eqz v0, :cond_1e

    .line 298
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lcom/android/org/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 299
    if-lez p3, :cond_1c

    .line 300
    invoke-direct {p0, p3}, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->expand(I)V

    .line 301
    iget-object v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v1, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    iget v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/android/org/conscrypt/OpenSSLAeadCipher;->bufCount:I

    .line 304
    :cond_1c
    const/4 v0, 0x0

    return v0

    .line 295
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
