.class public Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# static fields
.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I
    .registers 3
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 12
    .local v0, "order":Ljava/math/BigInteger;
    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    :goto_c
    return v1

    :cond_d
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    goto :goto_c
.end method

.method public static getFixedPointPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .registers 2
    .param p0, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 17
    if-eqz p0, :cond_9

    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_9

    .line 19
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    .end local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    return-object p0

    .line 22
    .restart local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_9
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    return-object v0
.end method

.method public static precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .registers 15
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "minWidth"    # I

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 29
    .local v2, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const/4 v11, 0x1

    shl-int v7, v11, p1

    .line 30
    .local v7, "n":I
    const-string/jumbo v11, "bc_fixed_point"

    invoke-virtual {v2, p0, v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v11

    invoke-static {v11}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getFixedPointPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    .line 31
    .local v5, "info":Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 33
    .local v6, "lookupTable":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_1b

    array-length v11, v6

    if-ge v11, v7, :cond_84

    .line 35
    :cond_1b
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    .line 36
    .local v1, "bits":I
    add-int v11, v1, p1

    add-int/lit8 v11, v11, -0x1

    div-int v3, v11, p1

    .line 38
    .local v3, "d":I
    add-int/lit8 v11, p1, 0x1

    new-array v9, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 39
    .local v9, "pow2Table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v11, 0x0

    aput-object p0, v9, v11

    .line 40
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_2d
    if-ge v4, p1, :cond_3c

    .line 42
    add-int/lit8 v11, v4, -0x1

    aget-object v11, v9, v11

    invoke-virtual {v11, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v9, v4

    .line 40
    add-int/lit8 v4, v4, 0x1

    goto :goto_2d

    .line 46
    :cond_3c
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v12, v9, v12

    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v9, p1

    .line 48
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 50
    new-array v6, v7, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 51
    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x0

    aput-object v11, v6, v12

    .line 53
    add-int/lit8 v0, p1, -0x1

    .local v0, "bit":I
    :goto_55
    if-ltz v0, :cond_70

    .line 55
    aget-object v8, v9, v0

    .line 57
    .local v8, "pow2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v11, 0x1

    shl-int v10, v11, v0

    .line 58
    .local v10, "step":I
    move v4, v10

    :goto_5d
    if-ge v4, v7, :cond_6d

    .line 60
    sub-int v11, v4, v10

    aget-object v11, v6, v11

    invoke-virtual {v11, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v6, v4

    .line 58
    shl-int/lit8 v11, v10, 0x1

    add-int/2addr v4, v11

    goto :goto_5d

    .line 53
    :cond_6d
    add-int/lit8 v0, v0, -0x1

    goto :goto_55

    .line 64
    .end local v8    # "pow2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "step":I
    :cond_70
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 66
    aget-object v11, v9, p1

    invoke-virtual {v5, v11}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 67
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 68
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    .line 70
    const-string/jumbo v11, "bc_fixed_point"

    invoke-virtual {v2, p0, v11, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 73
    .end local v0    # "bit":I
    .end local v1    # "bits":I
    .end local v3    # "d":I
    .end local v4    # "i":I
    .end local v9    # "pow2Table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_84
    return-object v5
.end method
