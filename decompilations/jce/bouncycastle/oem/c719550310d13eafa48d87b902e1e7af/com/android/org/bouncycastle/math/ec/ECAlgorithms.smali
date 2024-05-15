.class public Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 21
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    .line 224
    .local v5, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 227
    .local v8, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 228
    .local v2, "PaddQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 230
    .local v3, "PsubQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v15, 0x4

    new-array v13, v15, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v15, 0x0

    aput-object p2, v13, v15

    const/4 v15, 0x1

    aput-object v3, v13, v15

    const/4 v15, 0x2

    aput-object p0, v13, v15

    const/4 v15, 0x3

    aput-object v2, v13, v15

    .line 231
    .local v13, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 233
    const/16 v15, 0x9

    new-array v14, v15, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 234
    const/4 v15, 0x3

    aget-object v15, v13, v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x2

    aget-object v15, v13, v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    const/4 v15, 0x1

    aget-object v15, v13, v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    .line 235
    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    const/4 v15, 0x4

    aput-object v8, v14, v15

    const/4 v15, 0x0

    aget-object v15, v13, v15

    const/16 v16, 0x5

    aput-object v15, v14, v16

    .line 236
    const/4 v15, 0x1

    aget-object v15, v13, v15

    const/16 v16, 0x6

    aput-object v15, v14, v16

    const/4 v15, 0x2

    aget-object v15, v13, v15

    const/16 v16, 0x7

    aput-object v15, v14, v16

    const/4 v15, 0x3

    aget-object v15, v13, v15

    const/16 v16, 0x8

    aput-object v15, v14, v16

    .line 238
    .local v14, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v9

    .line 240
    .local v9, "jsf":[B
    move-object v4, v8

    .line 242
    .local v4, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v6, v9

    .line 243
    .local v6, "i":I
    :goto_83
    add-int/lit8 v6, v6, -0x1

    if-ltz v6, :cond_9e

    .line 245
    aget-byte v10, v9, v6

    .line 248
    .local v10, "jsfi":I
    shl-int/lit8 v15, v10, 0x18

    shr-int/lit8 v11, v15, 0x1c

    .local v11, "kDigit":I
    shl-int/lit8 v15, v10, 0x1c

    shr-int/lit8 v12, v15, 0x1c

    .line 250
    .local v12, "lDigit":I
    mul-int/lit8 v15, v11, 0x3

    add-int/lit8 v15, v15, 0x4

    add-int v7, v15, v12

    .line 251
    .local v7, "index":I
    aget-object v15, v14, v7

    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_83

    .line 254
    .end local v7    # "index":I
    .end local v10    # "jsfi":I
    .end local v11    # "kDigit":I
    .end local v12    # "lDigit":I
    :cond_9e
    return-object v4
.end method

.method static implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 260
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_71

    const/4 v9, 0x1

    .local v9, "negK":Z
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_73

    const/4 v10, 0x1

    .line 262
    .local v10, "negL":Z
    :goto_e
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 263
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 265
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v13

    const/16 v14, 0x10

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x2

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 266
    .local v11, "widthP":I
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v13

    const/16 v14, 0x10

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x2

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 268
    .local v12, "widthQ":I
    const/4 v13, 0x1

    invoke-static {p0, v11, v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    .line 269
    .local v7, "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 271
    .local v8, "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-eqz v9, :cond_75

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 272
    .local v1, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4e
    if-eqz v10, :cond_7a

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 273
    .local v4, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_54
    if-eqz v9, :cond_7f

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 274
    .local v2, "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_5a
    if-eqz v10, :cond_84

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 276
    .local v5, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_60
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v3

    .line 277
    .local v3, "wnafP":[B
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    .line 279
    .local v6, "wnafQ":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 260
    .end local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v3    # "wnafP":[B
    .end local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v6    # "wnafQ":[B
    .end local v7    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v8    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "negK":Z
    .end local v10    # "negL":Z
    .end local v11    # "widthP":I
    .end local v12    # "widthQ":I
    :cond_71
    const/4 v9, 0x0

    .restart local v9    # "negK":Z
    goto :goto_7

    :cond_73
    const/4 v10, 0x0

    .restart local v10    # "negL":Z
    goto :goto_e

    .line 271
    .restart local v7    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v8    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v11    # "widthP":I
    .restart local v12    # "widthQ":I
    :cond_75
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .restart local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_4e

    .line 272
    :cond_7a
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .restart local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_54

    .line 273
    :cond_7f
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .restart local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_5a

    .line 274
    :cond_84
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .restart local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_60
.end method

.method static implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "pointMapQ"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 284
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_69

    const/4 v10, 0x1

    .local v10, "negK":Z
    :goto_7
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    move-result v13

    if-gez v13, :cond_6b

    const/4 v11, 0x1

    .line 286
    .local v11, "negL":Z
    :goto_e
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .line 287
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p3

    .line 289
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v13

    const/16 v14, 0x10

    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/4 v14, 0x2

    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 291
    .local v12, "width":I
    const/4 v13, 0x1

    move-object/from16 v0, p2

    invoke-static {p0, v12, v13, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 292
    .local v7, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    .line 293
    .local v8, "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v9

    .line 295
    .local v9, "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-eqz v10, :cond_6d

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 296
    .local v1, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_46
    if-eqz v11, :cond_72

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 297
    .local v4, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4c
    if-eqz v10, :cond_77

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 298
    .local v2, "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_52
    if-eqz v11, :cond_7c

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 300
    .local v5, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_58
    move-object/from16 v0, p1

    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v3

    .line 301
    .local v3, "wnafP":[B
    move-object/from16 v0, p3

    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v6

    .line 303
    .local v6, "wnafQ":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 284
    .end local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v3    # "wnafP":[B
    .end local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v6    # "wnafQ":[B
    .end local v7    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v8    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v10    # "negK":Z
    .end local v11    # "negL":Z
    .end local v12    # "width":I
    :cond_69
    const/4 v10, 0x0

    .restart local v10    # "negK":Z
    goto :goto_7

    :cond_6b
    const/4 v11, 0x0

    .restart local v11    # "negL":Z
    goto :goto_e

    .line 295
    .restart local v7    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v8    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v9    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v12    # "width":I
    :cond_6d
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .restart local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_46

    .line 296
    :cond_72
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .restart local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_4c

    .line 297
    :cond_77
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .restart local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_52

    .line 298
    :cond_7c
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .restart local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_58
.end method

.method private static implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 22
    .param p0, "preCompP"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "preCompNegP"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "wnafP"    # [B
    .param p3, "preCompQ"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "preCompNegQ"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p5, "wnafQ"    # [B

    .prologue
    .line 309
    move-object/from16 v0, p2

    array-length v14, v0

    move-object/from16 v0, p5

    array-length v15, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 311
    .local v5, "len":I
    const/4 v14, 0x0

    aget-object v14, p0, v14

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 312
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 314
    .local v4, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v1, v4

    .line 315
    .local v1, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v13, 0x0

    .line 317
    .local v13, "zeroes":I
    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_19
    if-ltz v3, :cond_6d

    .line 319
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v3, v14, :cond_32

    aget-byte v11, p2, v3

    .line 320
    .local v11, "wiP":I
    :goto_22
    move-object/from16 v0, p5

    array-length v14, v0

    if-ge v3, v14, :cond_34

    aget-byte v12, p5, v3

    .line 322
    .local v12, "wiQ":I
    :goto_29
    or-int v14, v11, v12

    if-nez v14, :cond_36

    .line 324
    add-int/lit8 v13, v13, 0x1

    .line 317
    :goto_2f
    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 319
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_32
    const/4 v11, 0x0

    goto :goto_22

    .line 320
    .restart local v11    # "wiP":I
    :cond_34
    const/4 v12, 0x0

    goto :goto_29

    .line 328
    .restart local v12    # "wiQ":I
    :cond_36
    move-object v8, v4

    .line 329
    .local v8, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v11, :cond_49

    .line 331
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v6

    .line 332
    .local v6, "nP":I
    if-gez v11, :cond_67

    move-object/from16 v9, p1

    .line 333
    .local v9, "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_41
    ushr-int/lit8 v14, v6, 0x1

    aget-object v14, v9, v14

    invoke-virtual {v4, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 335
    .end local v6    # "nP":I
    .end local v9    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_49
    if-eqz v12, :cond_5b

    .line 337
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 338
    .local v7, "nQ":I
    if-gez v12, :cond_6a

    move-object/from16 v10, p4

    .line 339
    .local v10, "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_53
    ushr-int/lit8 v14, v7, 0x1

    aget-object v14, v10, v14

    invoke-virtual {v8, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 342
    .end local v7    # "nQ":I
    .end local v10    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_5b
    if-lez v13, :cond_62

    .line 344
    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 345
    const/4 v13, 0x0

    .line 348
    :cond_62
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_2f

    .line 332
    .restart local v6    # "nP":I
    :cond_67
    move-object/from16 v9, p0

    .restart local v9    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_41

    .line 338
    .end local v6    # "nP":I
    .end local v9    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v7    # "nQ":I
    :cond_6a
    move-object/from16 v10, p3

    .restart local v10    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_53

    .line 351
    .end local v7    # "nQ":I
    .end local v8    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_6d
    if-lez v13, :cond_73

    .line 353
    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 356
    :cond_73
    return-object v1
.end method

.method static implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .param p2, "ks"    # [Ljava/math/BigInteger;

    .prologue
    .line 412
    move-object/from16 v0, p0

    array-length v4, v0

    .local v4, "halfCount":I
    shl-int/lit8 v3, v4, 0x1

    .line 414
    .local v3, "fullCount":I
    new-array v11, v3, [Z

    .line 415
    .local v11, "negs":[Z
    new-array v6, v3, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 416
    .local v6, "infos":[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v13, v3, [[B

    .line 418
    .local v13, "wnafs":[[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_c
    if-ge v5, v4, :cond_73

    .line 420
    shl-int/lit8 v7, v5, 0x1

    .local v7, "j0":I
    add-int/lit8 v8, v7, 0x1

    .line 422
    .local v8, "j1":I
    aget-object v9, p2, v7

    .local v9, "kj0":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_6f

    const/4 v14, 0x1

    :goto_1b
    aput-boolean v14, v11, v7

    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 423
    aget-object v10, p2, v8

    .local v10, "kj1":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v14

    if-gez v14, :cond_71

    const/4 v14, 0x1

    :goto_2a
    aput-boolean v14, v11, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    .line 425
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v14

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-static {v14}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v14

    const/16 v15, 0x10

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    const/4 v15, 0x2

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 427
    .local v12, "width":I
    aget-object v1, p0, v5

    .local v1, "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-static {v1, v12, v14, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 428
    .local v2, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    aput-object v14, v6, v7

    .line 429
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v14

    aput-object v14, v6, v8

    .line 430
    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    aput-object v14, v13, v7

    .line 431
    invoke-static {v12, v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v14

    aput-object v14, v13, v8

    .line 418
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 422
    .end local v1    # "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    .end local v12    # "width":I
    :cond_6f
    const/4 v14, 0x0

    goto :goto_1b

    .line 423
    .restart local v10    # "kj1":Ljava/math/BigInteger;
    :cond_71
    const/4 v14, 0x0

    goto :goto_2a

    .line 434
    .end local v7    # "j0":I
    .end local v8    # "j1":I
    .end local v9    # "kj0":Ljava/math/BigInteger;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    :cond_73
    invoke-static {v11, v6, v13}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v14

    return-object v14
.end method

.method static implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 13
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 361
    array-length v0, p0

    .line 362
    .local v0, "count":I
    new-array v4, v0, [Z

    .line 363
    .local v4, "negs":[Z
    new-array v2, v0, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    .line 364
    .local v2, "infos":[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v6, v0, [[B

    .line 366
    .local v6, "wnafs":[[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_41

    .line 368
    aget-object v3, p1, v1

    .local v3, "ki":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    move-result v7

    if-gez v7, :cond_3f

    move v7, v8

    :goto_15
    aput-boolean v7, v4, v1

    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 370
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v7

    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v7

    const/16 v10, 0x10

    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    const/4 v10, 0x2

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 371
    .local v5, "width":I
    aget-object v7, p0, v1

    invoke-static {v7, v5, v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    aput-object v7, v2, v1

    .line 372
    invoke-static {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v7

    aput-object v7, v6, v1

    .line 366
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .end local v5    # "width":I
    :cond_3f
    move v7, v9

    .line 368
    goto :goto_15

    .line 375
    .end local v3    # "ki":Ljava/math/BigInteger;
    :cond_41
    invoke-static {v4, v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7
.end method

.method private static implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 20
    .param p0, "negs"    # [Z
    .param p1, "infos"    # [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "wnafs"    # [[B

    .prologue
    .line 439
    const/4 v8, 0x0

    .local v8, "len":I
    move-object/from16 v0, p2

    array-length v2, v0

    .line 440
    .local v2, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v2, :cond_11

    .line 442
    aget-object v15, p2, v4

    array-length v15, v15

    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 440
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 445
    :cond_11
    const/4 v15, 0x0

    aget-object v15, p1, v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v15, v15, v16

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 446
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 448
    .local v5, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v1, v5

    .line 449
    .local v1, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v14, 0x0

    .line 451
    .local v14, "zeroes":I
    add-int/lit8 v4, v8, -0x1

    :goto_28
    if-ltz v4, :cond_71

    .line 453
    move-object v10, v5

    .line 455
    .local v10, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2c
    if-ge v7, v2, :cond_5e

    .line 457
    aget-object v13, p2, v7

    .line 458
    .local v13, "wnaf":[B
    array-length v15, v13

    if-ge v4, v15, :cond_55

    aget-byte v12, v13, v4

    .line 459
    .local v12, "wi":I
    :goto_35
    if-eqz v12, :cond_52

    .line 461
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 462
    .local v9, "n":I
    aget-object v6, p1, v7

    .line 463
    .local v6, "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-gez v12, :cond_57

    const/4 v15, 0x1

    :goto_40
    aget-boolean v16, p0, v7

    move/from16 v0, v16

    if-ne v15, v0, :cond_59

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 464
    .local v11, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4a
    ushr-int/lit8 v15, v9, 0x1

    aget-object v15, v11, v15

    invoke-virtual {v10, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 455
    .end local v6    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v11    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 458
    .end local v12    # "wi":I
    :cond_55
    const/4 v12, 0x0

    goto :goto_35

    .line 463
    .restart local v6    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v9    # "n":I
    .restart local v12    # "wi":I
    :cond_57
    const/4 v15, 0x0

    goto :goto_40

    :cond_59
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .restart local v11    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_4a

    .line 468
    .end local v6    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v11    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v12    # "wi":I
    .end local v13    # "wnaf":[B
    :cond_5e
    if-ne v10, v5, :cond_65

    .line 470
    add-int/lit8 v14, v14, 0x1

    .line 451
    :goto_62
    add-int/lit8 v4, v4, -0x1

    goto :goto_28

    .line 474
    :cond_65
    if-lez v14, :cond_6c

    .line 476
    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 477
    const/4 v14, 0x0

    .line 480
    :cond_6c
    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_62

    .line 483
    .end local v7    # "j":I
    .end local v10    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_71
    if-lez v14, :cond_77

    .line 485
    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 488
    :cond_77
    return-object v1
.end method

.method static implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 16
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .param p2, "glvEndomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .prologue
    const/4 v12, 0x0

    .line 380
    aget-object v11, p0, v12

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v6

    .line 382
    .local v6, "n":Ljava/math/BigInteger;
    array-length v5, p0

    .line 384
    .local v5, "len":I
    shl-int/lit8 v11, v5, 0x1

    new-array v1, v11, [Ljava/math/BigInteger;

    .line 385
    .local v1, "abs":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v3, 0x0

    .local v3, "j":I
    move v4, v3

    .end local v3    # "j":I
    .local v4, "j":I
    :goto_13
    if-ge v2, v5, :cond_2f

    .line 387
    aget-object v11, p1, v2

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface {p2, v11}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 388
    .local v0, "ab":[Ljava/math/BigInteger;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v11, v0, v12

    aput-object v11, v1, v4

    .line 389
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/4 v11, 0x1

    aget-object v11, v0, v11

    aput-object v11, v1, v3

    .line 385
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 392
    .end local v0    # "ab":[Ljava/math/BigInteger;
    :cond_2f
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v8

    .line 393
    .local v8, "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v11

    if-eqz v11, :cond_3e

    .line 395
    invoke-static {p0, v8, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    return-object v11

    .line 398
    :cond_3e
    shl-int/lit8 v11, v5, 0x1

    new-array v9, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 399
    .local v9, "pqs":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v2, 0x0

    const/4 v3, 0x0

    .end local v4    # "j":I
    .restart local v3    # "j":I
    move v4, v3

    .end local v3    # "j":I
    .restart local v4    # "j":I
    :goto_45
    if-ge v2, v5, :cond_58

    .line 401
    aget-object v7, p0, v2

    .local v7, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-interface {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 402
    .local v10, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-object v7, v9, v4

    .line 403
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-object v10, v9, v3

    .line 399
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    .line 406
    .end local v7    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_58
    invoke-static {v9, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    return-object v11
.end method

.method public static importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 126
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 127
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Point must be on the same curve"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_13
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isF2mField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z
    .registers 3
    .param p0, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    .prologue
    .line 19
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_16

    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 20
    instance-of v0, p0, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    .line 19
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .registers 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isFpField(Lcom/android/org/bouncycastle/math/field/FiniteField;)Z
    .registers 3
    .param p0, "field"    # Lcom/android/org/bouncycastle/math/field/FiniteField;

    .prologue
    const/4 v0, 0x1

    .line 30
    invoke-interface {p0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_8

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public static montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;II)V
    .registers 4
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I

    .prologue
    .line 136
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 137
    return-void
.end method

.method public static montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 12
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v7, 0x0

    .line 148
    new-array v0, p2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 149
    .local v0, "c":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v6, p0, p1

    aput-object v6, v0, v7

    .line 151
    const/4 v1, 0x0

    .line 152
    .local v1, "i":I
    :goto_8
    add-int/lit8 v1, v1, 0x1

    if-ge v1, p2, :cond_1b

    .line 154
    add-int/lit8 v6, v1, -0x1

    aget-object v6, v0, v6

    add-int v7, p1, v1

    aget-object v7, p0, v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v1

    goto :goto_8

    .line 157
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    .line 159
    if-eqz p3, :cond_27

    .line 161
    aget-object v6, v0, v1

    invoke-virtual {v6, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, v0, v1

    .line 164
    :cond_27
    aget-object v6, v0, v1

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .local v5, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v2, v1

    .line 166
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_2e
    if-lez v2, :cond_44

    .line 168
    add-int/lit8 v1, v2, -0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v3, p1, v2

    .line 169
    .local v3, "j":I
    aget-object v4, p0, v3

    .line 170
    .local v4, "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v6, v0, v1

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    aput-object v6, p0, v3

    .line 171
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_2e

    .line 174
    .end local v3    # "j":I
    .end local v4    # "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_44
    aput-object v5, p0, p1

    .line 175
    return-void
.end method

.method public static referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    const/4 v5, 0x0

    .line 189
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v3

    .line 190
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 191
    .local v1, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 192
    .local v2, "t":I
    if-lez v2, :cond_2e

    .line 194
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 196
    move-object v1, p0

    .line 198
    :cond_1a
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1b
    if-ge v0, v2, :cond_2e

    .line 200
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 201
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 203
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 198
    :cond_2b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 207
    .end local v0    # "i":I
    :cond_2e
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-gez v4, :cond_38

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .end local v1    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_38
    return-object v1
.end method

.method public static shamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 119
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 121
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method public static sumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 35
    if-eqz p0, :cond_6

    if-nez p1, :cond_f

    .line 37
    :cond_6
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 35
    :cond_f
    array-length v6, p0

    array-length v7, p1

    if-ne v6, v7, :cond_6

    array-length v6, p0

    if-lt v6, v9, :cond_6

    .line 40
    array-length v1, p0

    .line 41
    .local v1, "count":I
    packed-switch v1, :pswitch_data_64

    .line 51
    aget-object v5, p0, v8

    .line 52
    .local v5, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 54
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-array v4, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 55
    .local v4, "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aput-object v5, v4, v8

    .line 56
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_25
    if-ge v3, v1, :cond_48

    .line 58
    aget-object v6, p0, v3

    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, v4, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 44
    .end local v0    # "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v3    # "i":I
    .end local v4    # "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_32
    aget-object v6, p0, v8

    aget-object v7, p1, v8

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 46
    :pswitch_3b
    aget-object v6, p0, v8

    aget-object v7, p1, v8

    aget-object v8, p0, v9

    aget-object v9, p1, v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 61
    .restart local v0    # "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .restart local v3    # "i":I
    .restart local v4    # "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v5    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_48
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v2

    .line 62
    .local v2, "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v6, v2, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v6, :cond_5b

    .line 64
    check-cast v2, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .end local v2    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v4, p1, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 67
    .restart local v2    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    :cond_5b
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 41
    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_32
        :pswitch_3b
    .end packed-switch
.end method

.method public static sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 11
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 74
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    .line 77
    instance-of v3, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v3, :cond_29

    move-object v2, v0

    .line 79
    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 80
    .local v2, "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v3

    if-eqz v3, :cond_29

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 86
    .end local v2    # "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    :cond_29
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v1

    .line 87
    .local v1, "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v3, v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v3, :cond_48

    .line 90
    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object p0, v3, v5

    aput-object p2, v3, v6

    new-array v4, v4, [Ljava/math/BigInteger;

    aput-object p1, v4, v5

    aput-object p3, v4, v6

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .end local v1    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 89
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 93
    .restart local v1    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    :cond_48
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method

.method public static validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_f

    .line 214
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_f
    return-object p0
.end method
