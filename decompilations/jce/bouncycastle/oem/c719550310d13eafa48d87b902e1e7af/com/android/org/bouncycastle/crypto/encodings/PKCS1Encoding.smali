.class public Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;
.super Ljava/lang/Object;
.source "PKCS1Encoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final HEADER_LENGTH:I = 0xa

.field public static final NOT_STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.not_strict"

.field public static final STRICT_LENGTH_ENABLED_PROPERTY:Ljava/lang/String; = "org.bouncycastle.pkcs1.strict"


# instance fields
.field private blockBuffer:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private fallback:[B

.field private forEncryption:Z

.field private forPrivateKey:Z

.field private pLen:I

.field private random:Ljava/security/SecureRandom;

.field private useStrictLength:Z


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 3
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 55
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 56
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;I)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "pLen"    # I

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 69
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 70
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 71
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 72
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;[B)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "fallback"    # [B

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 85
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 86
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrict()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    .line 87
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .line 88
    array-length v0, p2

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    .line 89
    return-void
.end method

.method private static checkPkcs1Encoding([BI)I
    .registers 8
    .param p0, "encoded"    # [B
    .param p1, "pLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 261
    const/4 v0, 0x0

    .line 265
    .local v0, "correct":I
    aget-byte v4, p0, v4

    xor-int/lit8 v4, v4, 0x2

    or-int/lit8 v0, v4, 0x0

    .line 270
    array-length v4, p0

    add-int/lit8 v5, p1, 0x1

    sub-int v2, v4, v5

    .line 275
    .local v2, "plen":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_e
    if-ge v1, v2, :cond_23

    .line 277
    aget-byte v3, p0, v1

    .line 278
    .local v3, "tmp":I
    shr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 279
    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 280
    shr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 281
    and-int/lit8 v4, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    or-int/2addr v0, v4

    .line 275
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 287
    .end local v3    # "tmp":I
    :cond_23
    array-length v4, p0

    add-int/lit8 v5, p1, 0x1

    sub-int/2addr v4, v5

    aget-byte v4, p0, v4

    or-int/2addr v0, v4

    .line 292
    shr-int/lit8 v4, v0, 0x1

    or-int/2addr v0, v4

    .line 293
    shr-int/lit8 v4, v0, 0x2

    or-int/2addr v0, v4

    .line 294
    shr-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    .line 295
    and-int/lit8 v4, v0, 0x1

    add-int/lit8 v4, v4, -0x1

    not-int v4, v4

    return v4
.end method

.method private decodeBlock([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 364
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    const/4 v8, -0x1

    if-eq v7, v8, :cond_a

    .line 366
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlockOrRandom([BII)[B

    move-result-object v7

    return-object v7

    .line 369
    :cond_a
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v7, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v1

    .line 370
    .local v1, "block":[B
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v7, v1

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v9

    if-eq v7, v9, :cond_5c

    const/4 v7, 0x1

    :goto_1c
    and-int v3, v8, v7

    .line 373
    .local v3, "incorrectLength":Z
    array-length v7, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getOutputBlockSize()I

    move-result v8

    if-ge v7, v8, :cond_5e

    .line 375
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 382
    .local v2, "data":[B
    :goto_27
    const/4 v7, 0x0

    aget-byte v6, v2, v7

    .line 385
    .local v6, "type":B
    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v7, :cond_62

    .line 387
    const/4 v7, 0x2

    if-eq v6, v7, :cond_60

    const/4 v0, 0x1

    .line 394
    .local v0, "badType":Z
    :goto_32
    const/4 v7, 0x1

    if-ne v6, v7, :cond_39

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v7, :cond_42

    :cond_39
    const/4 v7, 0x2

    if-ne v6, v7, :cond_69

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_69

    .line 396
    :cond_42
    new-instance v7, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid block type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 370
    .end local v0    # "badType":Z
    .end local v2    # "data":[B
    .end local v3    # "incorrectLength":Z
    .end local v6    # "type":B
    :cond_5c
    const/4 v7, 0x0

    goto :goto_1c

    .line 379
    .restart local v3    # "incorrectLength":Z
    :cond_5e
    move-object v2, v1

    .restart local v2    # "data":[B
    goto :goto_27

    .line 387
    .restart local v6    # "type":B
    :cond_60
    const/4 v0, 0x0

    .restart local v0    # "badType":Z
    goto :goto_32

    .line 391
    .end local v0    # "badType":Z
    :cond_62
    const/4 v7, 0x1

    if-eq v6, v7, :cond_67

    const/4 v0, 0x1

    .restart local v0    # "badType":Z
    goto :goto_32

    .end local v0    # "badType":Z
    :cond_67
    const/4 v0, 0x0

    .restart local v0    # "badType":Z
    goto :goto_32

    .line 403
    :cond_69
    invoke-direct {p0, v6, v2}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->findStart(B[B)I

    move-result v5

    .line 405
    .local v5, "start":I
    add-int/lit8 v5, v5, 0x1

    .line 407
    const/16 v7, 0xa

    if-ge v5, v7, :cond_84

    const/4 v7, 0x1

    :goto_74
    or-int/2addr v7, v0

    if-eqz v7, :cond_86

    .line 409
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 410
    new-instance v7, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v8, "block incorrect"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 407
    :cond_84
    const/4 v7, 0x0

    goto :goto_74

    .line 414
    :cond_86
    if-eqz v3, :cond_95

    .line 416
    const/4 v7, 0x0

    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 417
    new-instance v7, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v8, "block incorrect size"

    invoke-direct {v7, v8}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 420
    :cond_95
    array-length v7, v2

    sub-int/2addr v7, v5

    new-array v4, v7, [B

    .line 422
    .local v4, "result":[B
    array-length v7, v4

    const/4 v8, 0x0

    invoke-static {v2, v5, v4, v8, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 424
    return-object v4
.end method

.method private decodeBlockOrRandom([BII)[B
    .registers 14
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 312
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-nez v6, :cond_e

    .line 314
    new-instance v6, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v7, "sorry, this method is only for decryption, not for signing"

    invoke-direct {v6, v7}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 317
    :cond_e
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v6, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v0

    .line 319
    .local v0, "block":[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v6, :cond_54

    .line 321
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v4, v6, [B

    .line 322
    .local v4, "random":[B
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 329
    :goto_21
    iget-boolean v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->useStrictLength:Z

    array-length v6, v0

    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v9

    if-eq v6, v9, :cond_57

    const/4 v6, 0x1

    :goto_2d
    and-int/2addr v6, v8

    if-eqz v6, :cond_59

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 334
    .local v2, "data":[B
    :goto_32
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    invoke-static {v2, v6}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->checkPkcs1Encoding([BI)I

    move-result v1

    .line 340
    .local v1, "correct":I
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    new-array v5, v6, [B

    .line 341
    .local v5, "result":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3d
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-ge v3, v6, :cond_5b

    .line 343
    array-length v6, v2

    iget v8, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    sub-int/2addr v6, v8

    add-int/2addr v6, v3

    aget-byte v6, v2, v6

    not-int v8, v1

    and-int/2addr v6, v8

    aget-byte v8, v4, v3

    and-int/2addr v8, v1

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v5, v3

    .line 341
    add-int/lit8 v3, v3, 0x1

    goto :goto_3d

    .line 326
    .end local v1    # "correct":I
    .end local v2    # "data":[B
    .end local v3    # "i":I
    .end local v4    # "random":[B
    .end local v5    # "result":[B
    :cond_54
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    .restart local v4    # "random":[B
    goto :goto_21

    :cond_57
    move v6, v7

    .line 329
    goto :goto_2d

    :cond_59
    move-object v2, v0

    .restart local v2    # "data":[B
    goto :goto_32

    .line 346
    .restart local v1    # "correct":I
    .restart local v3    # "i":I
    .restart local v5    # "result":[B
    :cond_5b
    invoke-static {v2, v7}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 348
    return-object v5
.end method

.method private encodeBlock([BII)[B
    .registers 9
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->getInputBlockSize()I

    move-result v2

    if-le p3, v2, :cond_10

    .line 212
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "input data too large"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 215
    :cond_10
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v2

    new-array v0, v2, [B

    .line 217
    .local v0, "block":[B
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    if-eqz v2, :cond_2c

    .line 219
    const/4 v2, 0x1

    aput-byte v2, v0, v4

    .line 221
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_20
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4c

    .line 223
    const/4 v2, -0x1

    aput-byte v2, v0, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 228
    .end local v1    # "i":I
    :cond_2c
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 230
    const/4 v2, 0x2

    aput-byte v2, v0, v4

    .line 236
    const/4 v1, 0x1

    .restart local v1    # "i":I
    :goto_35
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4c

    .line 238
    :goto_3b
    aget-byte v2, v0, v1

    if-nez v2, :cond_49

    .line 240
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_3b

    .line 236
    :cond_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_35

    .line 245
    :cond_4c
    array-length v2, v0

    sub-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    aput-byte v4, v0, v2

    .line 246
    array-length v2, v0

    sub-int/2addr v2, p3

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 248
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v2

    return-object v2
.end method

.method private findStart(B[B)I
    .registers 12
    .param p1, "type"    # B
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 430
    const/4 v3, -0x1

    .line 431
    .local v3, "start":I
    const/4 v2, 0x0

    .line 433
    .local v2, "padErr":Z
    const/4 v0, 0x1

    .end local v2    # "padErr":Z
    .local v0, "i":I
    :goto_6
    array-length v4, p2

    if-eq v0, v4, :cond_2e

    .line 435
    aget-byte v1, p2, v0

    .line 437
    .local v1, "pad":B
    if-nez v1, :cond_24

    move v7, v5

    :goto_e
    if-gez v3, :cond_26

    move v4, v5

    :goto_11
    and-int/2addr v4, v7

    if-eqz v4, :cond_15

    .line 439
    move v3, v0

    .line 441
    :cond_15
    if-ne p1, v5, :cond_28

    move v7, v5

    :goto_18
    if-gez v3, :cond_2a

    move v4, v5

    :goto_1b
    and-int/2addr v7, v4

    if-eq v1, v8, :cond_2c

    move v4, v5

    :goto_1f
    and-int/2addr v4, v7

    or-int/2addr v2, v4

    .line 433
    .local v2, "padErr":Z
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .end local v2    # "padErr":Z
    :cond_24
    move v7, v6

    .line 437
    goto :goto_e

    :cond_26
    move v4, v6

    goto :goto_11

    :cond_28
    move v7, v6

    .line 441
    goto :goto_18

    :cond_2a
    move v4, v6

    goto :goto_1b

    :cond_2c
    move v4, v6

    goto :goto_1f

    .line 444
    .end local v1    # "pad":B
    :cond_2e
    if-eqz v2, :cond_31

    .line 446
    return v8

    .line 449
    :cond_31
    return v3
.end method

.method private useStrict()Z
    .registers 4

    .prologue
    .line 98
    new-instance v2, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$1;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 105
    .local v1, "strict":Ljava/lang/String;
    new-instance v2, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$2;

    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding$2;-><init>(Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;)V

    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 113
    .local v0, "notStrict":Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 115
    const-string/jumbo v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2

    .line 118
    :cond_22
    if-eqz v1, :cond_2c

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_2b
    return v2

    :cond_2c
    const/4 v2, 0x1

    goto :goto_2b
.end method


# virtual methods
.method public getInputBlockSize()I
    .registers 3

    .prologue
    .line 162
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 164
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_d

    .line 166
    add-int/lit8 v1, v0, -0xa

    return v1

    .line 170
    :cond_d
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 178
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 180
    return v0

    .line 184
    :cond_b
    add-int/lit8 v1, v0, -0xa

    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 7
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 132
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v2, :cond_3f

    move-object v1, p2

    .line 134
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 136
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    .line 137
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 148
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .local v0, "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_13
    :goto_13
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 150
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forPrivateKey:Z

    .line 151
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    .line 152
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->blockBuffer:[B

    .line 154
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->pLen:I

    if-lez v2, :cond_52

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->fallback:[B

    if-nez v2, :cond_52

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    if-nez v2, :cond_52

    .line 156
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "encoder requires random"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_3f
    move-object v0, p2

    .line 141
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 142
    .restart local v0    # "kParam":Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v2

    if-nez v2, :cond_13

    if-eqz p1, :cond_13

    .line 144
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->random:Ljava/security/SecureRandom;

    goto :goto_13

    .line 158
    :cond_52
    return-void
.end method

.method public processBlock([BII)[B
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 196
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 200
    :cond_9
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/PKCS1Encoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
