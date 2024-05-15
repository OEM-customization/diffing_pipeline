.class public Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist HEADER_LENGTH:I = 0xa

.field public static final blacklist NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.org.bouncycastle.pkcs1.not_strict"

.field public static final blacklist STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "com.android.org.bouncycastle.pkcs1.strict"


# instance fields
.field private blacklist blockBuffer:[B

.field private blacklist engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private blacklist fallback:[B

.field private blacklist forEncryption:Z

.field private blacklist forPrivateKey:Z

.field private blacklist pLen:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist useStrictLength:Z


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 58
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 59
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 60
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 72
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 73
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 74
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 75
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 88
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 89
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 90
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 91
    array-length v0, p2

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 92
    return-void
.end method

.method private static blacklist checkPkcs1Encoding([BI)I
    .registers 7
    .param p0, "encoded"    # [B
    .param p1, "pLen"    # I

    .line 264
    const/4 v0, 0x0

    .line 268
    .local v0, "correct":I
    const/4 v1, 0x0

    aget-byte v1, p0, v1

    xor-int/lit8 v1, v1, 0x2

    or-int/2addr v0, v1

    .line 273
    array-length v1, p0

    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v1, v2

    .line 278
    .local v1, "plen":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_21

    .line 280
    aget-byte v3, p0, v2

    .line 281
    .local v3, "tmp":I
    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 282
    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 283
    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 284
    and-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    .line 278
    .end local v3    # "tmp":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 290
    .end local v2    # "i":I
    :cond_21
    array-length v2, p0

    add-int/lit8 v3, p1, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    or-int/2addr v0, v2

    .line 295
    shr-int/lit8 v2, v0, 0x1

    or-int/2addr v0, v2

    .line 296
    shr-int/lit8 v2, v0, 0x2

    or-int/2addr v0, v2

    .line 297
    shr-int/lit8 v2, v0, 0x4

    or-int/2addr v0, v2

    .line 298
    and-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, -0x1

    not-int v2, v2

    return v2
.end method

.method private blacklist decodeBlock([BII)[B
    .registers 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 367
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 369
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v0

    return-object v0

    .line 372
    :cond_a
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 373
    .local v0, "block":[B
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v2, v0

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_1f

    move v2, v4

    goto :goto_20

    :cond_1f
    move v2, v5

    :goto_20
    and-int/2addr v1, v2

    .line 376
    .local v1, "incorrectLength":Z
    array-length v2, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v3

    if-ge v2, v3, :cond_2b

    .line 378
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .local v2, "data":[B
    goto :goto_2c

    .line 382
    .end local v2    # "data":[B
    :cond_2b
    move-object v2, v0

    .line 385
    .restart local v2    # "data":[B
    :goto_2c
    aget-byte v3, v2, v5

    .line 388
    .local v3, "type":B
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v6, :cond_39

    .line 390
    const/4 v6, 0x2

    if-eq v3, v6, :cond_37

    move v6, v4

    goto :goto_38

    :cond_37
    move v6, v5

    .local v6, "badType":Z
    :goto_38
    goto :goto_3e

    .line 394
    .end local v6    # "badType":Z
    :cond_39
    if-eq v3, v4, :cond_3d

    move v6, v4

    goto :goto_3e

    :cond_3d
    move v6, v5

    .line 400
    .restart local v6    # "badType":Z
    :goto_3e
    invoke-direct {p0, v3, v2}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->findStart(B[B)I

    move-result v7

    .line 402
    .local v7, "start":I
    add-int/2addr v7, v4

    .line 404
    const/16 v8, 0xa

    if-ge v7, v8, :cond_48

    goto :goto_49

    :cond_48
    move v4, v5

    :goto_49
    or-int/2addr v4, v6

    if-nez v4, :cond_62

    .line 411
    if-nez v1, :cond_57

    .line 417
    array-length v4, v2

    sub-int/2addr v4, v7

    new-array v4, v4, [B

    .line 419
    .local v4, "result":[B
    array-length v8, v4

    invoke-static {v2, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 421
    return-object v4

    .line 413
    .end local v4    # "result":[B
    :cond_57
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 414
    new-instance v4, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "block incorrect size"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 406
    :cond_62
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 407
    new-instance v4, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v5, "block incorrect"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private blacklist decodeBlockOrRandom([BII)[B
    .registers 13
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 315
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v0, :cond_54

    .line 320
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 322
    .local v0, "block":[B
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_18

    .line 324
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v1, v1, [B

    .line 325
    .local v1, "random":[B
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1a

    .line 329
    .end local v1    # "random":[B
    :cond_18
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 332
    .restart local v1    # "random":[B
    :goto_1a
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v3, v0

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v4

    const/4 v5, 0x0

    if-eq v3, v4, :cond_28

    const/4 v3, 0x1

    goto :goto_29

    :cond_28
    move v3, v5

    :goto_29
    and-int/2addr v2, v3

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    goto :goto_30

    :cond_2f
    move-object v2, v0

    .line 337
    .local v2, "data":[B
    :goto_30
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v3

    .line 343
    .local v3, "correct":I
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v4, v4, [B

    .line 344
    .local v4, "result":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3b
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v6, v7, :cond_50

    .line 346
    array-length v8, v2

    sub-int/2addr v8, v7

    add-int/2addr v8, v6

    aget-byte v7, v2, v8

    not-int v8, v3

    and-int/2addr v7, v8

    aget-byte v8, v1, v6

    and-int/2addr v8, v3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    .line 344
    add-int/lit8 v6, v6, 0x1

    goto :goto_3b

    .line 349
    .end local v6    # "i":I
    :cond_50
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 351
    return-object v4

    .line 317
    .end local v0    # "block":[B
    .end local v1    # "random":[B
    .end local v2    # "data":[B
    .end local v3    # "correct":I
    .end local v4    # "result":[B
    :cond_54
    new-instance v0, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encodeBlock([BII)[B
    .registers 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 213
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v0

    if-gt p3, v0, :cond_54

    .line 218
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    new-array v0, v0, [B

    .line 220
    .local v0, "block":[B
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_23

    .line 222
    aput-byte v3, v0, v2

    .line 224
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_17
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_22

    .line 226
    const/4 v4, -0x1

    aput-byte v4, v0, v1

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .end local v1    # "i":I
    :cond_22
    goto :goto_42

    .line 231
    :cond_23
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 233
    const/4 v1, 0x2

    aput-byte v1, v0, v2

    .line 239
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_2c
    array-length v4, v0

    sub-int/2addr v4, p3

    sub-int/2addr v4, v3

    if-eq v1, v4, :cond_42

    .line 241
    :goto_31
    aget-byte v4, v0, v1

    if-nez v4, :cond_3f

    .line 243
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4}, Ljava/security/SecureRandom;->nextInt()I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    goto :goto_31

    .line 239
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 248
    .end local v1    # "i":I
    :cond_42
    :goto_42
    array-length v1, v0

    sub-int/2addr v1, p3

    sub-int/2addr v1, v3

    aput-byte v2, v0, v1

    .line 249
    array-length v1, v0

    sub-int/2addr v1, p3

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 251
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    return-object v1

    .line 215
    .end local v0    # "block":[B
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist findStart(B[B)I
    .registers 12
    .param p1, "type"    # B
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 427
    const/4 v0, -0x1

    .line 428
    .local v0, "start":I
    const/4 v1, 0x0

    .line 430
    .local v1, "padErr":Z
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_3
    array-length v3, p2

    const/4 v4, -0x1

    if-eq v2, v3, :cond_2d

    .line 432
    aget-byte v3, p2, v2

    .line 434
    .local v3, "pad":B
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_f

    move v7, v6

    goto :goto_10

    :cond_f
    move v7, v5

    :goto_10
    if-gez v0, :cond_14

    move v8, v6

    goto :goto_15

    :cond_14
    move v8, v5

    :goto_15
    and-int/2addr v7, v8

    if-eqz v7, :cond_19

    .line 436
    move v0, v2

    .line 438
    :cond_19
    if-ne p1, v6, :cond_1d

    move v7, v6

    goto :goto_1e

    :cond_1d
    move v7, v5

    :goto_1e
    if-gez v0, :cond_22

    move v8, v6

    goto :goto_23

    :cond_22
    move v8, v5

    :goto_23
    and-int/2addr v7, v8

    if-eq v3, v4, :cond_27

    move v5, v6

    :cond_27
    and-int v4, v7, v5

    or-int/2addr v1, v4

    .line 430
    .end local v3    # "pad":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 441
    .end local v2    # "i":I
    :cond_2d
    if-eqz v1, :cond_30

    .line 443
    return v4

    .line 446
    :cond_30
    return v0
.end method

.method private blacklist useStrict()Z
    .registers 5

    .line 101
    new-instance v0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "strict":Ljava/lang/String;
    new-instance v1, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$2;

    invoke-direct {v1, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$2;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 116
    .local v1, "notStrict":Ljava/lang/String;
    const/4 v2, 0x1

    const-string v3, "true"

    if-eqz v1, :cond_21

    .line 118
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v2, v3

    return v2

    .line 121
    :cond_21
    if-eqz v0, :cond_2b

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    goto :goto_2b

    :cond_2a
    const/4 v2, 0x0

    :cond_2b
    :goto_2b
    return v2
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .registers 3

    .line 165
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 167
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    .line 169
    add-int/lit8 v1, v0, -0xa

    return v1

    .line 173
    :cond_d
    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 3

    .line 179
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 181
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 183
    return v0

    .line 187
    :cond_b
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public blacklist getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .line 135
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_15

    .line 137
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 139
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 140
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 141
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_26

    .line 144
    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_15
    move-object v0, p2

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 145
    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_26

    if-eqz p1, :cond_26

    .line 147
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 151
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 153
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 154
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 155
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 157
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v1, :cond_52

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v1, :cond_52

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-eqz v1, :cond_4a

    goto :goto_52

    .line 159
    :cond_4a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "encoder requires random"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_52
    :goto_52
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .line 197
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 199
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 203
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
