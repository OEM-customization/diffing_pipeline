.class public Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# static fields
.field static final PRECOMP_NAME:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 14
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "u"    # [B
    .param p2, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 77
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->byteValue()B

    move-result v0

    .line 80
    .local v0, "a":B
    if-eqz p2, :cond_1a

    instance-of v10, p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_40

    .line 82
    :cond_1a
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    .line 84
    .local v4, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-direct {v3}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    .line 85
    .local v3, "pre":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    .line 86
    const-string/jumbo v10, "bc_wtnaf"

    invoke-virtual {v1, p0, v10, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    .line 94
    .end local v3    # "pre":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :goto_2c
    array-length v10, v4

    new-array v5, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 95
    .local v5, "puNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_30
    array-length v10, v4

    if-ge v2, v10, :cond_47

    .line 97
    aget-object v10, v4, v2

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    aput-object v10, v5, v2

    .line 95
    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    .line 90
    .end local v2    # "i":I
    .end local v4    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .end local v5    # "puNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .restart local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_40
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    .restart local v4    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    goto :goto_2c

    .line 102
    .restart local v2    # "i":I
    .restart local v5    # "puNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_47
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 104
    .local v6, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v7, 0x0

    .line 105
    .local v7, "tauCount":I
    array-length v10, p1

    add-int/lit8 v2, v10, -0x1

    :goto_55
    if-ltz v2, :cond_77

    .line 107
    add-int/lit8 v7, v7, 0x1

    .line 108
    aget-byte v8, p1, v2

    .line 109
    .local v8, "ui":I
    if-eqz v8, :cond_6e

    .line 111
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v6

    .line 112
    const/4 v7, 0x0

    .line 114
    if-lez v8, :cond_71

    ushr-int/lit8 v10, v8, 0x1

    aget-object v9, v4, v10

    .line 115
    .local v9, "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_68
    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .end local v6    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 105
    .end local v9    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v6    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_6e
    add-int/lit8 v2, v2, -0x1

    goto :goto_55

    .line 114
    :cond_71
    neg-int v10, v8

    ushr-int/lit8 v10, v10, 0x1

    aget-object v9, v5, v10

    .restart local v9    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_68

    .line 118
    .end local v8    # "ui":I
    .end local v9    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_77
    if-lez v7, :cond_7d

    .line 120
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v6

    .line 122
    :cond_7d
    return-object v6
.end method

.method private multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 13
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p2, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .param p3, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .param p4, "a"    # B
    .param p5, "mu"    # B

    .prologue
    const/4 v2, 0x4

    .line 55
    if-nez p4, :cond_1a

    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 57
    .local v5, "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    :goto_5
    invoke-static {p5, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v4

    .line 60
    .local v4, "tw":Ljava/math/BigInteger;
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    move v0, p5

    move-object v1, p2

    .line 59
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v6

    .line 62
    .local v6, "u":[B
    invoke-static {p1, v6, p3}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0

    .line 55
    .end local v4    # "tw":Ljava/math/BigInteger;
    .end local v5    # "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v6    # "u":[B
    :cond_1a
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .restart local v5    # "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    goto :goto_5
.end method


# virtual methods
.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 15
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 24
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-nez v0, :cond_d

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    move-object v6, p1

    .line 30
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 31
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v11

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 32
    .local v11, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v1

    .line 33
    .local v1, "m":I
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    move-result v2

    .line 34
    .local v2, "a":B
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v4

    .line 35
    .local v4, "mu":B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v3

    .line 37
    .local v3, "s":[Ljava/math/BigInteger;
    const/16 v5, 0xa

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v7

    .line 39
    .local v7, "rho":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    const-string/jumbo v0, "bc_wtnaf"

    invoke-virtual {v11, v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v8

    move-object v5, p0

    move v9, v2

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method
