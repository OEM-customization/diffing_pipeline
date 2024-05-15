.class public Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist getWindowSize(I)I
    .registers 3
    .param p1, "bits"    # I

    .line 96
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    return v0
.end method

.method protected blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 25
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 23
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    move-object/from16 v1, p0

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;->getWindowSize(I)I

    move-result v0

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25
    .local v0, "width":I
    const/4 v2, 0x1

    move-object/from16 v3, p1

    invoke-static {v3, v0, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v4

    .line 26
    .local v4, "wnafPreCompInfo":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 27
    .local v5, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 29
    .local v6, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v7, p2

    invoke-static {v0, v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object v8

    .line 31
    .local v8, "wnaf":[I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 33
    .local v9, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v10, v8

    .line 39
    .local v10, "i":I
    const v11, 0xffff

    if-le v10, v2, :cond_82

    .line 41
    add-int/lit8 v10, v10, -0x1

    aget v12, v8, v10

    .line 42
    .local v12, "wi":I
    shr-int/lit8 v13, v12, 0x10

    .local v13, "digit":I
    and-int v14, v12, v11

    .line 44
    .local v14, "zeroes":I
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v15

    .line 45
    .local v15, "n":I
    if-gez v13, :cond_49

    move-object/from16 v16, v6

    goto :goto_4b

    :cond_49
    move-object/from16 v16, v5

    .line 48
    .local v16, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4b
    shl-int/lit8 v11, v15, 0x2

    shl-int v1, v2, v0

    if-ge v11, v1, :cond_77

    .line 50
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v1, v1, v15

    .line 53
    .local v1, "highest":I
    sub-int v11, v0, v1

    .line 54
    .local v11, "scale":I
    add-int/lit8 v17, v1, -0x1

    shl-int v17, v2, v17

    xor-int v17, v15, v17

    .line 56
    .local v17, "lowBits":I
    add-int/lit8 v18, v0, -0x1

    shl-int v18, v2, v18

    add-int/lit8 v18, v18, -0x1

    .line 57
    .local v18, "i1":I
    shl-int v19, v17, v11

    add-int/lit8 v19, v19, 0x1

    .line 58
    .local v19, "i2":I
    ushr-int/lit8 v2, v18, 0x1

    aget-object v2, v16, v2

    ushr-int/lit8 v20, v19, 0x1

    move/from16 v21, v0

    .end local v0    # "width":I
    .local v21, "width":I
    aget-object v0, v16, v20

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 60
    .end local v9    # "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .local v0, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    sub-int/2addr v14, v11

    .line 63
    .end local v1    # "highest":I
    .end local v11    # "scale":I
    .end local v17    # "lowBits":I
    .end local v18    # "i1":I
    .end local v19    # "i2":I
    goto :goto_7d

    .line 66
    .end local v21    # "width":I
    .local v0, "width":I
    .restart local v9    # "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_77
    move/from16 v21, v0

    .end local v0    # "width":I
    .restart local v21    # "width":I
    ushr-int/lit8 v0, v15, 0x1

    aget-object v0, v16, v0

    .line 69
    .end local v9    # "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .local v0, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_7d
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .end local v0    # "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v9    # "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_84

    .line 39
    .end local v12    # "wi":I
    .end local v13    # "digit":I
    .end local v14    # "zeroes":I
    .end local v15    # "n":I
    .end local v16    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v21    # "width":I
    .local v0, "width":I
    :cond_82
    move/from16 v21, v0

    .line 72
    .end local v0    # "width":I
    .restart local v21    # "width":I
    :goto_84
    if-lez v10, :cond_a7

    .line 74
    add-int/lit8 v10, v10, -0x1

    aget v0, v8, v10

    .line 75
    .local v0, "wi":I
    shr-int/lit8 v1, v0, 0x10

    const v2, 0xffff

    .local v1, "digit":I
    and-int v11, v0, v2

    .line 77
    .local v11, "zeroes":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 78
    .local v12, "n":I
    if-gez v1, :cond_99

    move-object v13, v6

    goto :goto_9a

    :cond_99
    move-object v13, v5

    .line 79
    .local v13, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_9a
    ushr-int/lit8 v14, v12, 0x1

    aget-object v14, v13, v14

    .line 81
    .local v14, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v9, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 82
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 83
    .end local v0    # "wi":I
    .end local v1    # "digit":I
    .end local v11    # "zeroes":I
    .end local v12    # "n":I
    .end local v13    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v14    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_84

    .line 85
    :cond_a7
    return-object v9
.end method
