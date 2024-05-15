.class public Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist cleanPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 226
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 227
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 232
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 229
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 237
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValidPartial()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 242
    return-object p0

    .line 239
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 22
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .line 248
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 249
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 252
    .local v3, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 253
    .local v4, "PaddQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 255
    .local v5, "PsubQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v6, 0x4

    new-array v7, v6, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v9, 0x1

    aput-object v5, v7, v9

    const/4 v10, 0x2

    aput-object v0, v7, v10

    const/4 v11, 0x3

    aput-object v4, v7, v11

    .line 256
    .local v7, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 258
    const/16 v12, 0x9

    new-array v12, v12, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aget-object v13, v7, v11

    .line 259
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v8

    aget-object v13, v7, v10

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v9

    aget-object v13, v7, v9

    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v10

    aget-object v13, v7, v8

    .line 260
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    aput-object v13, v12, v11

    aput-object v3, v12, v6

    aget-object v8, v7, v8

    const/4 v13, 0x5

    aput-object v8, v12, v13

    aget-object v8, v7, v9

    const/4 v9, 0x6

    aput-object v8, v12, v9

    aget-object v8, v7, v10

    const/4 v9, 0x7

    aput-object v8, v12, v9

    aget-object v8, v7, v11

    const/16 v9, 0x8

    aput-object v8, v12, v9

    move-object v8, v12

    .line 263
    .local v8, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v9, p1

    move-object/from16 v10, p3

    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v11

    .line 265
    .local v11, "jsf":[B
    move-object v12, v3

    .line 267
    .local v12, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v13, v11

    .line 268
    .local v13, "i":I
    :goto_6c
    add-int/lit8 v13, v13, -0x1

    if-ltz v13, :cond_88

    .line 270
    aget-byte v14, v11, v13

    .line 273
    .local v14, "jsfi":I
    shl-int/lit8 v15, v14, 0x18

    shr-int/lit8 v15, v15, 0x1c

    .local v15, "kDigit":I
    shl-int/lit8 v16, v14, 0x1c

    shr-int/lit8 v16, v16, 0x1c

    .line 275
    .local v16, "lDigit":I
    mul-int/lit8 v17, v15, 0x3

    add-int/lit8 v17, v17, 0x4

    add-int v17, v17, v16

    .line 276
    .local v17, "index":I
    aget-object v6, v8, v17

    invoke-virtual {v12, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 277
    .end local v14    # "jsfi":I
    .end local v15    # "kDigit":I
    .end local v16    # "lDigit":I
    .end local v17    # "index":I
    const/4 v6, 0x4

    goto :goto_6c

    .line 279
    :cond_88
    return-object v12
.end method

.method static blacklist implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 22
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .line 285
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .local v0, "negK":Z
    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_12

    move v1, v2

    .line 287
    .local v1, "negL":Z
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 288
    .end local p1    # "k":Ljava/math/BigInteger;
    .local v3, "k":Ljava/math/BigInteger;
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 290
    .end local p3    # "l":Ljava/math/BigInteger;
    .local v4, "l":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v5

    const/16 v6, 0x10

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x2

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 291
    .local v5, "widthP":I
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    invoke-static {v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v7, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 293
    .local v6, "widthQ":I
    move-object/from16 v7, p0

    invoke-static {v7, v5, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 294
    .local v8, "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    move-object/from16 v9, p2

    invoke-static {v9, v6, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v2

    .line 296
    .local v2, "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-eqz v0, :cond_50

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_54

    :cond_50
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_54
    move-object v11, v10

    .line 297
    .local v11, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_5c

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_60

    :cond_5c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_60
    move-object v14, v10

    .line 298
    .local v14, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v0, :cond_68

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_6c

    :cond_68
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_6c
    move-object v12, v10

    .line 299
    .local v12, "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_74

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_78

    :cond_74
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_78
    move-object v15, v10

    .line 301
    .local v15, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v10

    .line 302
    .local v10, "wnafP":[B
    invoke-static {v6, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v17

    .line 304
    .local v17, "wnafQ":[B
    move-object v13, v10

    move-object/from16 v16, v17

    invoke-static/range {v11 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13
.end method

.method static blacklist implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 22
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "pointMapQ"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .param p3, "l"    # Ljava/math/BigInteger;

    .line 309
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez v0, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    .local v0, "negK":Z
    :goto_b
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_12

    move v1, v2

    .line 311
    .local v1, "negL":Z
    :cond_12
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 312
    .end local p1    # "k":Ljava/math/BigInteger;
    .local v3, "k":Ljava/math/BigInteger;
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v4

    .line 314
    .end local p3    # "l":Ljava/math/BigInteger;
    .local v4, "l":Ljava/math/BigInteger;
    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 316
    .local v5, "width":I
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    invoke-static {v6, v5, v2, v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 317
    .local v2, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 318
    .local v8, "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 320
    .local v9, "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-eqz v0, :cond_4c

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_50

    :cond_4c
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_50
    move-object v11, v10

    .line 321
    .local v11, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_58

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_5c

    :cond_58
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_5c
    move-object v14, v10

    .line 322
    .local v14, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v0, :cond_64

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_68

    :cond_64
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_68
    move-object v12, v10

    .line 323
    .local v12, "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_70

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    goto :goto_74

    :cond_70
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    :goto_74
    move-object v15, v10

    .line 325
    .local v15, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v10

    .line 326
    .local v10, "wnafP":[B
    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v17

    .line 328
    .local v17, "wnafQ":[B
    move-object v13, v10

    move-object/from16 v16, v17

    invoke-static/range {v11 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13
.end method

.method private static blacklist implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 21
    .param p0, "preCompP"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "preCompNegP"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "wnafP"    # [B
    .param p3, "preCompQ"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "preCompNegQ"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p5, "wnafQ"    # [B

    .line 334
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    array-length v2, v0

    array-length v3, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 336
    .local v2, "len":I
    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 337
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 339
    .local v5, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v6, v5

    .line 340
    .local v6, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .line 342
    .local v7, "zeroes":I
    add-int/lit8 v8, v2, -0x1

    .local v8, "i":I
    :goto_19
    if-ltz v8, :cond_68

    .line 344
    array-length v9, v0

    if-ge v8, v9, :cond_21

    aget-byte v9, v0, v8

    goto :goto_22

    :cond_21
    move v9, v3

    .line 345
    .local v9, "wiP":I
    :goto_22
    array-length v10, v1

    if-ge v8, v10, :cond_28

    aget-byte v10, v1, v8

    goto :goto_29

    :cond_28
    move v10, v3

    .line 347
    .local v10, "wiQ":I
    :goto_29
    or-int v11, v9, v10

    if-nez v11, :cond_30

    .line 349
    add-int/lit8 v7, v7, 0x1

    .line 350
    goto :goto_65

    .line 353
    :cond_30
    move-object v11, v5

    .line 354
    .local v11, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v9, :cond_45

    .line 356
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 357
    .local v12, "nP":I
    if-gez v9, :cond_3c

    move-object/from16 v13, p1

    goto :goto_3d

    :cond_3c
    move-object v13, p0

    .line 358
    .local v13, "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_3d
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 360
    .end local v12    # "nP":I
    .end local v13    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_45
    if-eqz v10, :cond_5a

    .line 362
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 363
    .local v12, "nQ":I
    if-gez v10, :cond_50

    move-object/from16 v13, p4

    goto :goto_52

    :cond_50
    move-object/from16 v13, p3

    .line 364
    .local v13, "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_52
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    invoke-virtual {v11, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 367
    .end local v12    # "nQ":I
    .end local v13    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_5a
    if-lez v7, :cond_61

    .line 369
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 370
    const/4 v7, 0x0

    .line 373
    :cond_61
    invoke-virtual {v6, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 342
    .end local v9    # "wiP":I
    .end local v10    # "wiQ":I
    .end local v11    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_65
    add-int/lit8 v8, v8, -0x1

    goto :goto_19

    .line 376
    .end local v8    # "i":I
    :cond_68
    if-lez v7, :cond_6e

    .line 378
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 381
    :cond_6e
    return-object v6
.end method

.method static blacklist implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .param p2, "ks"    # [Ljava/math/BigInteger;

    .line 437
    move-object/from16 v0, p0

    array-length v1, v0

    .local v1, "halfCount":I
    shl-int/lit8 v2, v1, 0x1

    .line 439
    .local v2, "fullCount":I
    new-array v3, v2, [Z

    .line 440
    .local v3, "negs":[Z
    new-array v4, v2, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 441
    .local v4, "infos":[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v5, v2, [[B

    .line 443
    .local v5, "wnafs":[[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_c
    if-ge v6, v1, :cond_72

    .line 445
    shl-int/lit8 v7, v6, 0x1

    .local v7, "j0":I
    add-int/lit8 v8, v7, 0x1

    .line 447
    .local v8, "j1":I
    aget-object v9, p2, v7

    .local v9, "kj0":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gez v10, :cond_1e

    move v10, v12

    goto :goto_1f

    :cond_1e
    move v10, v11

    :goto_1f
    aput-boolean v10, v3, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 448
    aget-object v10, p2, v8

    .local v10, "kj1":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_2e

    move v11, v12

    :cond_2e
    aput-boolean v11, v3, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 450
    const/4 v11, 0x2

    const/16 v13, 0x10

    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 452
    .local v11, "width":I
    aget-object v13, v0, v6

    move-object/from16 v14, p1

    .local v13, "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v13, v11, v12, v14}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 453
    .local v12, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v15

    aput-object v15, v4, v7

    .line 454
    invoke-static {v12}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v15

    aput-object v15, v4, v8

    .line 455
    invoke-static {v11, v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v15

    aput-object v15, v5, v7

    .line 456
    invoke-static {v11, v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v15

    aput-object v15, v5, v8

    .line 443
    .end local v7    # "j0":I
    .end local v8    # "j1":I
    .end local v9    # "kj0":Ljava/math/BigInteger;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    .end local v11    # "width":I
    .end local v12    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v13    # "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_72
    move-object/from16 v14, p1

    .line 459
    .end local v6    # "i":I
    invoke-static {v3, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6
.end method

.method static blacklist implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .line 386
    array-length v0, p0

    .line 387
    .local v0, "count":I
    new-array v1, v0, [Z

    .line 388
    .local v1, "negs":[Z
    new-array v2, v0, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 389
    .local v2, "infos":[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v3, v0, [[B

    .line 391
    .local v3, "wnafs":[[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_8
    if-ge v4, v0, :cond_40

    .line 393
    aget-object v5, p1, v4

    .local v5, "ki":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->signum()I

    move-result v6

    const/4 v7, 0x1

    if-gez v6, :cond_15

    move v6, v7

    goto :goto_16

    :cond_15
    const/4 v6, 0x0

    :goto_16
    aput-boolean v6, v1, v4

    invoke-virtual {v5}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    .line 395
    const/4 v6, 0x2

    const/16 v8, 0x10

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    invoke-static {v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 396
    .local v6, "width":I
    aget-object v8, p0, v4

    invoke-static {v8, v6, v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    aput-object v7, v2, v4

    .line 397
    invoke-static {v6, v5}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    aput-object v7, v3, v4

    .line 391
    .end local v5    # "ki":Ljava/math/BigInteger;
    .end local v6    # "width":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 400
    .end local v4    # "i":I
    :cond_40
    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4
.end method

.method private static blacklist implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19
    .param p0, "negs"    # [Z
    .param p1, "infos"    # [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "wnafs"    # [[B

    .line 464
    move-object/from16 v0, p2

    const/4 v1, 0x0

    .local v1, "len":I
    array-length v2, v0

    .line 465
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    if-ge v3, v2, :cond_11

    .line 467
    aget-object v4, v0, v3

    array-length v4, v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 465
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 470
    .end local v3    # "i":I
    :cond_11
    const/4 v3, 0x0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 471
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 473
    .local v5, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v6, v5

    .line 474
    .local v6, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .line 476
    .local v7, "zeroes":I
    add-int/lit8 v8, v1, -0x1

    .local v8, "i":I
    :goto_26
    if-ltz v8, :cond_70

    .line 478
    move-object v9, v5

    .line 480
    .local v9, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2a
    if-ge v10, v2, :cond_5b

    .line 482
    aget-object v11, v0, v10

    .line 483
    .local v11, "wnaf":[B
    array-length v12, v11

    if-ge v8, v12, :cond_34

    aget-byte v12, v11, v8

    goto :goto_35

    :cond_34
    move v12, v3

    .line 484
    .local v12, "wi":I
    :goto_35
    if-eqz v12, :cond_57

    .line 486
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 487
    .local v13, "n":I
    aget-object v14, p1, v10

    .line 488
    .local v14, "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-gez v12, :cond_41

    const/4 v15, 0x1

    goto :goto_42

    :cond_41
    move v15, v3

    :goto_42
    aget-boolean v3, p0, v10

    if-ne v15, v3, :cond_4b

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_4f

    :cond_4b
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 489
    .local v3, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4f
    ushr-int/lit8 v15, v13, 0x1

    aget-object v15, v3, v15

    invoke-virtual {v9, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 480
    .end local v3    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v11    # "wnaf":[B
    .end local v12    # "wi":I
    .end local v13    # "n":I
    .end local v14    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    :cond_57
    add-int/lit8 v10, v10, 0x1

    const/4 v3, 0x0

    goto :goto_2a

    .line 493
    .end local v10    # "j":I
    :cond_5b
    if-ne v9, v5, :cond_60

    .line 495
    add-int/lit8 v7, v7, 0x1

    .line 496
    goto :goto_6c

    .line 499
    :cond_60
    if-lez v7, :cond_67

    .line 501
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 502
    const/4 v7, 0x0

    .line 505
    :cond_67
    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v6, v3

    .line 476
    .end local v9    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_6c
    add-int/lit8 v8, v8, -0x1

    const/4 v3, 0x0

    goto :goto_26

    .line 508
    .end local v8    # "i":I
    :cond_70
    if-lez v7, :cond_76

    .line 510
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 513
    :cond_76
    return-object v6
.end method

.method static blacklist implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .param p2, "glvEndomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 405
    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    .line 407
    .local v1, "n":Ljava/math/BigInteger;
    array-length v2, p0

    .line 409
    .local v2, "len":I
    shl-int/lit8 v3, v2, 0x1

    new-array v3, v3, [Ljava/math/BigInteger;

    .line 410
    .local v3, "abs":[Ljava/math/BigInteger;
    const/4 v4, 0x0

    .local v4, "i":I
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_12
    if-ge v4, v2, :cond_2e

    .line 412
    aget-object v6, p1, v4

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p2, v6}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v6

    .line 413
    .local v6, "ab":[Ljava/math/BigInteger;
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "j":I
    .local v7, "j":I
    aget-object v8, v6, v0

    aput-object v8, v3, v5

    .line 414
    add-int/lit8 v5, v7, 0x1

    .end local v7    # "j":I
    .restart local v5    # "j":I
    const/4 v8, 0x1

    aget-object v8, v6, v8

    aput-object v8, v3, v7

    .line 410
    .end local v6    # "ab":[Ljava/math/BigInteger;
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    .line 417
    .end local v4    # "i":I
    .end local v5    # "j":I
    :cond_2e
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v0

    .line 418
    .local v0, "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 420
    invoke-static {p0, v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 423
    :cond_3d
    shl-int/lit8 v4, v2, 0x1

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 424
    .local v4, "pqs":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_43
    if-ge v5, v2, :cond_56

    .line 426
    aget-object v7, p0, v5

    .local v7, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-interface {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 427
    .local v8, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v9, v6, 0x1

    .end local v6    # "j":I
    .local v9, "j":I
    aput-object v7, v4, v6

    .line 428
    add-int/lit8 v6, v9, 0x1

    .end local v9    # "j":I
    .restart local v6    # "j":I
    aput-object v8, v4, v9

    .line 424
    .end local v7    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v8    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v5, v5, 0x1

    goto :goto_43

    .line 431
    .end local v5    # "i":I
    .end local v6    # "j":I
    :cond_56
    invoke-static {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5
.end method

.method public static blacklist importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 130
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 131
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 133
    :cond_f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 18
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isF2mField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z
    .registers 4
    .param p0, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 23
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    instance-of v0, p0, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return v1
.end method

.method public static blacklist isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static blacklist isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z
    .registers 3
    .param p0, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 34
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method public static blacklist montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;II)V
    .registers 4
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 141
    return-void
.end method

.method public static blacklist montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 10
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 152
    new-array v0, p2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 153
    .local v0, "c":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v1, p0, p1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 155
    const/4 v1, 0x0

    .line 156
    .local v1, "i":I
    :goto_8
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1b

    .line 158
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    add-int v3, p1, v1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_8

    .line 161
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    .line 163
    if-eqz p3, :cond_27

    .line 165
    aget-object v2, v0, v1

    invoke-virtual {v2, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 168
    :cond_27
    aget-object v2, v0, v1

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 170
    .local v2, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_2d
    if-lez v1, :cond_42

    .line 172
    add-int/lit8 v3, v1, -0x1

    .end local v1    # "i":I
    .local v3, "i":I
    add-int/2addr v1, p1

    .line 173
    .local v1, "j":I
    aget-object v4, p0, v1

    .line 174
    .local v4, "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v5, v0, v3

    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, p0, v1

    .line 175
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 176
    .end local v1    # "j":I
    .end local v4    # "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v1, v3

    goto :goto_2d

    .line 178
    .end local v3    # "i":I
    .local v1, "i":I
    :cond_42
    aput-object v2, p0, p1

    .line 179
    return-void
.end method

.method public static blacklist referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 193
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    .line 194
    .local v0, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 195
    .local v1, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 196
    .local v2, "t":I
    if-lez v2, :cond_2e

    .line 198
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 200
    move-object v1, p0

    .line 202
    :cond_1a
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1b
    if-ge v3, v2, :cond_2e

    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 205
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 207
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 202
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 211
    .end local v3    # "i":I
    :cond_2e
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_39

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_3a

    :cond_39
    move-object v3, v1

    :goto_3a
    return-object v3
.end method

.method public static blacklist shamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .line 122
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 123
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 125
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist sumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .line 39
    if-eqz p0, :cond_5e

    if-eqz p1, :cond_5e

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_5e

    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_5e

    .line 44
    array-length v0, p0

    .line 45
    .local v0, "count":I
    const/4 v2, 0x0

    if-eq v0, v1, :cond_55

    const/4 v3, 0x2

    if-eq v0, v3, :cond_48

    .line 55
    aget-object v1, p0, v2

    .line 56
    .local v1, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 58
    .local v3, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-array v4, v0, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 59
    .local v4, "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aput-object v1, v4, v2

    .line 60
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1e
    if-ge v2, v0, :cond_2b

    .line 62
    aget-object v5, p0, v2

    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v4, v2

    .line 60
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 65
    .end local v2    # "i":I
    :cond_2b
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v2

    .line 66
    .local v2, "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v5, v2, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v5, :cond_3f

    .line 68
    move-object v5, v2

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v5}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 71
    :cond_3f
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 50
    .end local v1    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    .end local v3    # "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v4    # "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_48
    aget-object v3, p0, v2

    aget-object v2, p1, v2

    aget-object v4, p0, v1

    aget-object v1, p1, v1

    invoke-static {v3, v2, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 48
    :cond_55
    aget-object v1, p0, v2

    aget-object v2, p1, v2

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 41
    .end local v0    # "count":I
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 10
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;

    .line 77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 78
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 81
    instance-of v1, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v1, :cond_26

    .line 83
    move-object v1, v0

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 84
    .local v1, "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 90
    .end local v1    # "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    :cond_26
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v1

    .line 91
    .local v1, "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v2, v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v2, :cond_49

    .line 93
    const/4 v2, 0x2

    new-array v3, v2, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v5, 0x1

    aput-object p2, v3, v5

    new-array v2, v2, [Ljava/math/BigInteger;

    aput-object p1, v2, v4

    aput-object p3, v2, v5

    move-object v4, v1

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 94
    invoke-static {v3, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 93
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 97
    :cond_49
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2
.end method

.method public static blacklist validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 221
    return-object p0

    .line 218
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
