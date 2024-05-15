.class public Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;
.super Ljava/lang/Object;
.source "OAEPEncoding.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private defHash:[B

.field private engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

.field private forEncryption:Z

.field private mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .prologue
    .line 37
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/digests/AndroidDigestFactory;->getSHA1()Lcom/android/org/bouncycastle/crypto/Digest;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .registers 7
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p3, "mgf1Hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p4, "encodingParams"    # [B

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    .line 63
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    .line 64
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    .line 66
    invoke-interface {p2}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 68
    if-eqz p4, :cond_19

    .line 70
    array-length v0, p4

    invoke-interface {p2, p4, v1, v0}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 73
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    invoke-interface {p2, v0, v1}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 74
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;[B)V
    .registers 4
    .param p1, "cipher"    # Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .param p2, "hash"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p3, "encodingParams"    # [B

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;-><init>(Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/Digest;[B)V

    .line 54
    return-void
.end method

.method private ItoOSP(I[B)V
    .registers 5
    .param p1, "i"    # I
    .param p2, "sp"    # [B

    .prologue
    .line 311
    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    const/4 v1, 0x0

    aput-byte v0, p2, v1

    .line 312
    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    const/4 v1, 0x1

    aput-byte v0, p2, v1

    .line 313
    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    const/4 v1, 0x2

    aput-byte v0, p2, v1

    .line 314
    ushr-int/lit8 v0, p1, 0x0

    int-to-byte v0, v0

    const/4 v1, 0x3

    aput-byte v0, p2, v1

    .line 315
    return-void
.end method

.method private maskGeneratorFunction1([BIII)[B
    .registers 13
    .param p1, "Z"    # [B
    .param p2, "zOff"    # I
    .param p3, "zLen"    # I
    .param p4, "length"    # I

    .prologue
    const/4 v7, 0x0

    .line 326
    new-array v3, p4, [B

    .line 327
    .local v3, "mask":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    new-array v2, v4, [B

    .line 328
    .local v2, "hashBuf":[B
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 329
    .local v0, "C":[B
    const/4 v1, 0x0

    .line 331
    .local v1, "counter":I
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    .line 333
    :goto_14
    array-length v4, v2

    div-int v4, p4, v4

    if-ge v1, v4, :cond_35

    .line 335
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 337
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 338
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 339
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 341
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v2

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 346
    :cond_35
    array-length v4, v2

    mul-int/2addr v4, v1

    if-ge v4, p4, :cond_55

    .line 348
    invoke-direct {p0, v1, v0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->ItoOSP(I[B)V

    .line 350
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 351
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 352
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->mgf1Hash:Lcom/android/org/bouncycastle/crypto/Digest;

    invoke-interface {v4, v2, v7}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 354
    array-length v4, v2

    mul-int/2addr v4, v1

    array-length v5, v3

    array-length v6, v2

    mul-int/2addr v6, v1

    sub-int/2addr v5, v6

    invoke-static {v2, v7, v3, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 357
    :cond_55
    return-object v3
.end method


# virtual methods
.method public decodeBlock([BII)[B
    .registers 20
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    .prologue
    .line 223
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v13, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    .line 224
    .local v4, "data":[B
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v13}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v13

    new-array v3, v13, [B

    .line 232
    .local v3, "block":[B
    array-length v13, v3

    array-length v14, v4

    sub-int/2addr v13, v14

    array-length v14, v4

    const/4 v15, 0x0

    invoke-static {v4, v15, v3, v13, v14}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 234
    array-length v13, v3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    if-ge v13, v14, :cond_57

    const/4 v11, 0x1

    .line 240
    .local v11, "shortData":Z
    :goto_2d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    array-length v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v15, v15

    sub-int/2addr v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v15, v15

    .line 239
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v13, v14, v15}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v9

    .line 242
    .local v9, "mask":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_45
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    if-eq v7, v13, :cond_59

    .line 244
    aget-byte v13, v3, v7

    aget-byte v14, v9, v7

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v3, v7

    .line 242
    add-int/lit8 v7, v7, 0x1

    goto :goto_45

    .line 234
    .end local v7    # "i":I
    .end local v9    # "mask":[B
    .end local v11    # "shortData":Z
    :cond_57
    const/4 v11, 0x0

    .restart local v11    # "shortData":Z
    goto :goto_2d

    .line 250
    .restart local v7    # "i":I
    .restart local v9    # "mask":[B
    :cond_59
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    array-length v14, v3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v15, v15

    sub-int/2addr v14, v15

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v13, v14}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v9

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v7, v13

    :goto_71
    array-length v13, v3

    if-eq v7, v13, :cond_86

    .line 254
    aget-byte v13, v3, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    sub-int v14, v7, v14

    aget-byte v14, v9, v14

    xor-int/2addr v13, v14

    int-to-byte v13, v13

    aput-byte v13, v3, v7

    .line 252
    add-int/lit8 v7, v7, 0x1

    goto :goto_71

    .line 261
    :cond_86
    const/4 v6, 0x0

    .line 263
    .local v6, "defHashWrong":Z
    const/4 v7, 0x0

    :goto_88
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    if-eq v7, v13, :cond_a3

    .line 265
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    aget-byte v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v14, v14

    add-int/2addr v14, v7

    aget-byte v14, v3, v14

    if-eq v13, v14, :cond_a0

    .line 267
    const/4 v6, 0x1

    .line 263
    :cond_a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_88

    .line 274
    :cond_a3
    array-length v12, v3

    .line 276
    .local v12, "start":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v13, v13

    mul-int/lit8 v8, v13, 0x2

    .local v8, "index":I
    :goto_ab
    array-length v13, v3

    if-eq v8, v13, :cond_c2

    .line 278
    aget-byte v13, v3, v8

    if-eqz v13, :cond_be

    const/4 v13, 0x1

    :goto_b3
    array-length v14, v3

    if-ne v12, v14, :cond_c0

    const/4 v14, 0x1

    :goto_b7
    and-int/2addr v13, v14

    if-eqz v13, :cond_bb

    .line 280
    move v12, v8

    .line 276
    :cond_bb
    add-int/lit8 v8, v8, 0x1

    goto :goto_ab

    .line 278
    :cond_be
    const/4 v13, 0x0

    goto :goto_b3

    :cond_c0
    const/4 v14, 0x0

    goto :goto_b7

    .line 284
    :cond_c2
    array-length v13, v3

    add-int/lit8 v13, v13, -0x1

    if-le v12, v13, :cond_e4

    const/4 v13, 0x1

    :goto_c8
    aget-byte v14, v3, v12

    const/4 v15, 0x1

    if-eq v14, v15, :cond_e6

    const/4 v14, 0x1

    :goto_ce
    or-int v5, v13, v14

    .line 286
    .local v5, "dataStartWrong":Z
    add-int/lit8 v12, v12, 0x1

    .line 288
    or-int v13, v6, v11

    or-int/2addr v13, v5

    if-eqz v13, :cond_e8

    .line 290
    const/4 v13, 0x0

    invoke-static {v3, v13}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 291
    new-instance v13, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;

    const-string/jumbo v14, "data wrong"

    invoke-direct {v13, v14}, Lcom/android/org/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 284
    .end local v5    # "dataStartWrong":Z
    :cond_e4
    const/4 v13, 0x0

    goto :goto_c8

    :cond_e6
    const/4 v14, 0x0

    goto :goto_ce

    .line 297
    .restart local v5    # "dataStartWrong":Z
    :cond_e8
    array-length v13, v3

    sub-int/2addr v13, v12

    new-array v10, v13, [B

    .line 299
    .local v10, "output":[B
    array-length v13, v10

    const/4 v14, 0x0

    invoke-static {v3, v12, v10, v14, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 301
    return-object v10
.end method

.method public encodeBlock([BII)[B
    .registers 12
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

    .line 151
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    if-le p3, v4, :cond_10

    .line 153
    new-instance v4, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string/jumbo v5, "input data too long"

    invoke-direct {v4, v5}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 156
    :cond_10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->getInputBlockSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    new-array v0, v4, [B

    .line 161
    .local v0, "block":[B
    array-length v4, v0

    sub-int/2addr v4, p3

    invoke-static {p1, p2, v0, v4, p3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 166
    array-length v4, v0

    sub-int/2addr v4, p3

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 175
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 180
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    new-array v3, v4, [B

    .line 182
    .local v3, "seed":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 187
    array-length v4, v3

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    invoke-direct {p0, v3, v7, v4, v5}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 189
    .local v2, "mask":[B
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v1, v4

    .local v1, "i":I
    :goto_4c
    array-length v4, v0

    if-eq v1, v4, :cond_5f

    .line 191
    aget-byte v4, v0, v1

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v5, v5

    sub-int v5, v1, v5

    aget-byte v5, v2, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_4c

    .line 197
    :cond_5f
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    invoke-static {v3, v7, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 203
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    array-length v5, v0

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v6, v6

    .line 202
    invoke-direct {p0, v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->maskGeneratorFunction1([BIII)[B

    move-result-object v2

    .line 205
    const/4 v1, 0x0

    :goto_75
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v4, v4

    if-eq v1, v4, :cond_85

    .line 207
    aget-byte v4, v0, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_75

    .line 210
    :cond_85
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    array-length v5, v0

    invoke-interface {v4, v0, v7, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->processBlock([BII)[B

    move-result-object v4

    return-object v4
.end method

.method public getInputBlockSize()I
    .registers 4

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getInputBlockSize()I

    move-result v0

    .line 105
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_13

    .line 107
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1

    .line 111
    :cond_13
    return v0
.end method

.method public getOutputBlockSize()I
    .registers 4

    .prologue
    .line 117
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->getOutputBlockSize()I

    move-result v0

    .line 119
    .local v0, "baseBlockSize":I
    iget-boolean v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v1, :cond_b

    .line 121
    return v0

    .line 125
    :cond_b
    add-int/lit8 v1, v0, -0x1

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->defHash:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    return v1
.end method

.method public getUnderlyingCipher()Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    return-object v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    .prologue
    .line 85
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_15

    move-object v0, p2

    .line 87
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 89
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    .line 96
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->engine:Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;

    invoke-interface {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 98
    iput-boolean p1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    .line 99
    return-void

    .line 93
    :cond_15
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->random:Ljava/security/SecureRandom;

    goto :goto_d
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
    .line 135
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->forEncryption:Z

    if-eqz v0, :cond_9

    .line 137
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->encodeBlock([BII)[B

    move-result-object v0

    return-object v0

    .line 141
    :cond_9
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/encodings/OAEPEncoding;->decodeBlock([BII)[B

    move-result-object v0

    return-object v0
.end method
