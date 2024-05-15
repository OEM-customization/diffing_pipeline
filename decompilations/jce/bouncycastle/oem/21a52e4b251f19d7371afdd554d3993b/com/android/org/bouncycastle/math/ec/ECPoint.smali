.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
    }
.end annotation


# static fields
.field protected static final blacklist EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected blacklist preCompTable:Ljava/util/Hashtable;

.field protected blacklist withCompression:Z

.field protected blacklist x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 13
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 58
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 59
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 63
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 64
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 65
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 66
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 67
    return-void
.end method

.method protected static blacklist getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 18
    const/4 v0, 0x0

    if-nez p0, :cond_5

    move v1, v0

    goto :goto_9

    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 20
    .local v1, "coord":I
    :goto_9
    if-eqz v1, :cond_45

    const/4 v2, 0x5

    if-eq v1, v2, :cond_45

    .line 29
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 31
    .local v2, "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x1

    if-eq v1, v3, :cond_40

    const/4 v4, 0x2

    if-eq v1, v4, :cond_40

    const/4 v5, 0x3

    if-eq v1, v5, :cond_37

    const/4 v5, 0x4

    if-eq v1, v5, :cond_2c

    const/4 v4, 0x6

    if-ne v1, v4, :cond_24

    goto :goto_40

    .line 42
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown coordinate system"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_2c
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v4, v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v4, v3

    return-object v4

    .line 38
    :cond_37
    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v5, v0

    aput-object v2, v5, v3

    aput-object v2, v5, v4

    return-object v5

    .line 36
    :cond_40
    :goto_40
    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v2, v3, v0

    return-object v3

    .line 24
    .end local v2    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_45
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method


# virtual methods
.method public abstract blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected blacklist checkNormalized()V
    .registers 3

    .line 191
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 195
    return-void

    .line 193
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected blacklist createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "sx"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "sy"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 265
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z
    .registers 14
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 353
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 355
    return v0

    .line 358
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .local v1, "c1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 359
    .local v2, "c2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    const/4 v3, 0x1

    if-nez v1, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v0

    .local v4, "n1":Z
    :goto_12
    if-nez v2, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v0

    .line 360
    .local v5, "n2":Z
    :goto_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    .local v6, "i1":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v7

    .line 362
    .local v7, "i2":Z
    if-nez v6, :cond_70

    if-eqz v7, :cond_24

    goto :goto_70

    .line 367
    :cond_24
    move-object v8, p0

    .local v8, "p1":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v9, p1

    .line 368
    .local v9, "p2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_2b

    if-eqz v5, :cond_2b

    goto :goto_52

    .line 372
    :cond_2b
    if-eqz v4, :cond_32

    .line 374
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_52

    .line 376
    :cond_32
    if-eqz v5, :cond_39

    .line 378
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    goto :goto_52

    .line 380
    :cond_39
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v10

    if-nez v10, :cond_40

    .line 382
    return v0

    .line 388
    :cond_40
    const/4 v10, 0x2

    new-array v10, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object p0, v10, v0

    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v10, v3

    .line 391
    .local v10, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 393
    aget-object v8, v10, v0

    .line 394
    aget-object v9, v10, v3

    .line 397
    .end local v10    # "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_52
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6f

    move v0, v3

    :cond_6f
    return v0

    .line 364
    .end local v8    # "p1":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v9    # "p2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_70
    :goto_70
    if-eqz v6, :cond_7f

    if-eqz v7, :cond_7f

    if-nez v4, :cond_7e

    if-nez v5, :cond_7e

    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v8

    if-eqz v8, :cond_7f

    :cond_7e
    move v0, v3

    :cond_7f
    return v0
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 402
    if-ne p1, p0, :cond_4

    .line 404
    const/4 v0, 0x1

    return v0

    .line 407
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_a

    .line 409
    const/4 v0, 0x0

    return v0

    .line 412
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v0

    return v0
.end method

.method public blacklist getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 111
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 112
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 123
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist getCompressionYTilde()Z
.end method

.method public blacklist getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method protected blacklist getCurveCoordinateSystem()I
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    :goto_a
    return v0
.end method

.method public final blacklist getDetachedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded()[B
    .registers 2

    .line 460
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getEncoded(Z)[B
    .registers 9
    .param p1, "compressed"    # Z

    .line 471
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 473
    new-array v0, v1, [B

    return-object v0

    .line 476
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 478
    .local v0, "normed":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v2

    .line 480
    .local v2, "X":[B
    const/4 v3, 0x0

    if-eqz p1, :cond_2e

    .line 482
    array-length v4, v2

    add-int/2addr v4, v1

    new-array v4, v4, [B

    .line 483
    .local v4, "PO":[B
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    move-result v5

    if-eqz v5, :cond_25

    const/4 v5, 0x3

    goto :goto_26

    :cond_25
    const/4 v5, 0x2

    :goto_26
    int-to-byte v5, v5

    aput-byte v5, v4, v3

    .line 484
    array-length v5, v2

    invoke-static {v2, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 485
    return-object v4

    .line 488
    .end local v4    # "PO":[B
    :cond_2e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v4

    .line 490
    .local v4, "Y":[B
    array-length v5, v2

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/2addr v5, v1

    new-array v5, v5, [B

    .line 491
    .local v5, "PO":[B
    const/4 v6, 0x4

    aput-byte v6, v5, v3

    .line 492
    array-length v6, v2

    invoke-static {v2, v3, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 493
    array-length v6, v2

    add-int/2addr v6, v1

    array-length v1, v4

    invoke-static {v4, v3, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 494
    return-object v5
.end method

.method public final blacklist getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public final blacklist getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final blacklist getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 186
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public blacklist getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "index"    # I

    .line 159
    if-ltz p1, :cond_b

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v1, v0

    if-lt p1, v1, :cond_8

    goto :goto_b

    :cond_8
    aget-object v0, v0, p1

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 164
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v1, v0

    .line 165
    .local v1, "zsLen":I
    if-nez v1, :cond_8

    .line 167
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0

    .line 169
    :cond_8
    new-array v2, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 170
    .local v2, "copy":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    return-object v2
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 417
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 418
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_d

    :cond_8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v1

    not-int v1, v1

    .line 420
    .local v1, "hc":I
    :goto_d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 424
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 426
    .local v2, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    xor-int/2addr v1, v3

    .line 427
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int/lit16 v3, v3, 0x101

    xor-int/2addr v1, v3

    .line 430
    .end local v2    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2d
    return v1
.end method

.method blacklist implIsValid(ZZ)Z
    .registers 7
    .param p1, "decompressed"    # Z
    .param p2, "checkOrder"    # Z

    .line 293
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 295
    return v1

    .line 298
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;ZZ)V

    const-string v3, "bc_validity"

    invoke-virtual {v0, p0, v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    .line 334
    .local v0, "validity":Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public blacklist isCompressed()Z
    .registers 2

    .line 278
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return v0
.end method

.method public blacklist isInfinity()Z
    .registers 4

    .line 270
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v2, v0

    if-lez v2, :cond_17

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_16
    const/4 v1, 0x1

    :cond_17
    return v1
.end method

.method public blacklist isNormalized()Z
    .registers 4

    .line 199
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    .line 201
    .local v0, "coord":I
    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1a

    .line 203
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v2, v1

    .line 204
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    .line 201
    :cond_1b
    return v1
.end method

.method public blacklist isValid()Z
    .registers 3

    .line 283
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v0

    return v0
.end method

.method blacklist isValidPartial()Z
    .registers 2

    .line 288
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 539
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 215
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    return-object p0

    .line 220
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x5

    if-eq v0, v1, :cond_25

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 230
    .local v0, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 232
    return-object p0

    .line 235
    :cond_1c
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 225
    .end local v0    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_25
    return-object p0
.end method

.method blacklist normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "zInv"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 242
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    goto :goto_29

    .line 258
    :cond_14
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not a projective coordinate system"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_1c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 254
    .local v1, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 247
    .end local v0    # "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method protected abstract blacklist satisfiesCurveEquation()Z
.end method

.method protected blacklist satisfiesOrder()Z
    .registers 4

    .line 73
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    .line 75
    return v1

    .line 78
    :cond_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 82
    .local v0, "n":Ljava/math/BigInteger;
    if-eqz v0, :cond_24

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_24

    :cond_23
    const/4 v1, 0x0

    :cond_24
    :goto_24
    return v1
.end method

.method public blacklist scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 339
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 340
    move-object v0, p0

    goto :goto_22

    .line 341
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 339
    :goto_22
    return-object v0
.end method

.method public blacklist scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 346
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 347
    move-object v0, p0

    goto :goto_22

    .line 348
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    .line 346
    :goto_22
    return-object v0
.end method

.method public abstract blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 529
    invoke-virtual {p0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "e"    # I

    .line 507
    if-ltz p1, :cond_d

    .line 512
    move-object v0, p0

    .line 513
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_c

    .line 515
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_3

    .line 517
    :cond_c
    return-object v0

    .line 509
    .end local v0    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'e\' cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist core-platform-api test-api toString()Ljava/lang/String;
    .registers 5

    .line 435
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 437
    const-string v0, "INF"

    return-object v0

    .line 440
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 441
    .local v0, "sb":Ljava/lang/StringBuffer;
    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 442
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 443
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 444
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 445
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_27
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_39

    .line 447
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 448
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 445
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    .line 450
    .end local v2    # "i":I
    :cond_39
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 451
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 524
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
