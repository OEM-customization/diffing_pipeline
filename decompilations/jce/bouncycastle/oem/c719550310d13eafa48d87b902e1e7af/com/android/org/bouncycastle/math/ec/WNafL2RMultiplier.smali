.class public Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWindowSize(I)I
    .registers 3
    .param p1, "bits"    # I

    .prologue
    .line 94
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    return v0
.end method

.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 26
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;->getWindowSize(I)I

    move-result v21

    const/16 v22, 0x10

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v22

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 23
    .local v17, "width":I
    const/16 v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v19

    .line 24
    .local v19, "wnafPreCompInfo":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 25
    .local v11, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 27
    .local v12, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move/from16 v0, v17

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    move-result-object v18

    .line 29
    .local v18, "wnaf":[I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 31
    .local v3, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, v18

    array-length v6, v0

    .line 37
    .local v6, "i":I
    const/16 v21, 0x1

    move/from16 v0, v21

    if-le v6, v0, :cond_99

    .line 39
    add-int/lit8 v6, v6, -0x1

    aget v16, v18, v6

    .line 40
    .local v16, "wi":I
    shr-int/lit8 v4, v16, 0x10

    .local v4, "digit":I
    const v21, 0xffff

    and-int v20, v16, v21

    .line 42
    .local v20, "zeroes":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 43
    .local v10, "n":I
    if-gez v4, :cond_bc

    move-object v15, v12

    .line 46
    .local v15, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_5f
    shl-int/lit8 v21, v10, 0x2

    const/16 v22, 0x1

    shl-int v22, v22, v17

    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_be

    .line 48
    sget-object v21, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    aget-byte v5, v21, v10

    .line 51
    .local v5, "highest":I
    sub-int v14, v17, v5

    .line 52
    .local v14, "scale":I
    add-int/lit8 v21, v5, -0x1

    const/16 v22, 0x1

    shl-int v21, v22, v21

    xor-int v9, v10, v21

    .line 54
    .local v9, "lowBits":I
    add-int/lit8 v21, v17, -0x1

    const/16 v22, 0x1

    shl-int v21, v22, v21

    add-int/lit8 v7, v21, -0x1

    .line 55
    .local v7, "i1":I
    shl-int v21, v9, v14

    add-int/lit8 v8, v21, 0x1

    .line 56
    .local v8, "i2":I
    ushr-int/lit8 v21, v7, 0x1

    aget-object v21, v15, v21

    ushr-int/lit8 v22, v8, 0x1

    aget-object v22, v15, v22

    invoke-virtual/range {v21 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 58
    sub-int v20, v20, v14

    .line 67
    .end local v5    # "highest":I
    .end local v7    # "i1":I
    .end local v8    # "i2":I
    .end local v9    # "lowBits":I
    .end local v14    # "scale":I
    :goto_93
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 70
    .end local v4    # "digit":I
    .end local v10    # "n":I
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v16    # "wi":I
    .end local v20    # "zeroes":I
    :cond_99
    :goto_99
    if-lez v6, :cond_c5

    .line 72
    add-int/lit8 v6, v6, -0x1

    aget v16, v18, v6

    .line 73
    .restart local v16    # "wi":I
    shr-int/lit8 v4, v16, 0x10

    .restart local v4    # "digit":I
    const v21, 0xffff

    and-int v20, v16, v21

    .line 75
    .restart local v20    # "zeroes":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 76
    .restart local v10    # "n":I
    if-gez v4, :cond_c3

    move-object v15, v12

    .line 77
    .restart local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_ad
    ushr-int/lit8 v21, v10, 0x1

    aget-object v13, v15, v21

    .line 79
    .local v13, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 80
    move/from16 v0, v20

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_99

    .line 43
    .end local v13    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_bc
    move-object v15, v11

    .restart local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_5f

    .line 64
    :cond_be
    ushr-int/lit8 v21, v10, 0x1

    aget-object v3, v15, v21

    goto :goto_93

    .line 76
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_c3
    move-object v15, v11

    .restart local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_ad

    .line 83
    .end local v4    # "digit":I
    .end local v10    # "n":I
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v16    # "wi":I
    .end local v20    # "zeroes":I
    :cond_c5
    return-object v3
.end method
