.class public Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "FixedPointCombMultiplier.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected getWidthForCombSize(I)I
    .registers 3
    .param p1, "combSize"    # I

    .prologue
    .line 55
    const/16 v0, 0x101

    if-le p1, v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x5

    goto :goto_5
.end method

.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 18
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 10
    .local v2, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    move-result v10

    .line 12
    .local v10, "size":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-le v13, v10, :cond_17

    .line 20
    new-instance v13, Ljava/lang/IllegalStateException;

    const-string/jumbo v14, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 23
    :cond_17
    invoke-virtual {p0, v10}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;->getWidthForCombSize(I)I

    move-result v9

    .line 25
    .local v9, "minWidth":I
    move-object/from16 v0, p1

    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v6

    .line 26
    .local v6, "info":Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    .line 27
    .local v8, "lookupTable":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v12

    .line 29
    .local v12, "width":I
    add-int v13, v10, v12

    add-int/lit8 v13, v13, -0x1

    div-int v3, v13, v12

    .line 31
    .local v3, "d":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 33
    .local v1, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    mul-int v13, v3, v12

    add-int/lit8 v11, v13, -0x1

    .line 34
    .local v11, "top":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_38
    if-ge v4, v3, :cond_56

    .line 36
    const/4 v5, 0x0

    .line 38
    .local v5, "index":I
    sub-int v7, v11, v4

    .local v7, "j":I
    :goto_3d
    if-ltz v7, :cond_4d

    .line 40
    shl-int/lit8 v5, v5, 0x1

    .line 41
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v13

    if-eqz v13, :cond_4b

    .line 43
    or-int/lit8 v5, v5, 0x1

    .line 38
    :cond_4b
    sub-int/2addr v7, v3

    goto :goto_3d

    .line 47
    :cond_4d
    aget-object v13, v8, v5

    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 34
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 50
    .end local v5    # "index":I
    .end local v7    # "j":I
    :cond_56
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13
.end method
