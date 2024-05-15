.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;,
        Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    }
.end annotation


# static fields
.field protected static EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected preCompTable:Ljava/util/Hashtable;

.field protected withCompression:Z

.field protected x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 9
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 56
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 57
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 61
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 62
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 63
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 64
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 65
    return-void
.end method

.method protected static getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7
    .param p0, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    if-nez p0, :cond_1b

    const/4 v0, 0x0

    .line 18
    .local v0, "coord":I
    :goto_6
    sparse-switch v0, :sswitch_data_3e

    .line 27
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 29
    .local v1, "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v0, :pswitch_data_48

    .line 40
    :pswitch_12
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "unknown coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 16
    .end local v0    # "coord":I
    .end local v1    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    .restart local v0    # "coord":I
    goto :goto_6

    .line 22
    :sswitch_20
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v2

    .line 34
    .restart local v1    # "one":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_23
    new-array v2, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    return-object v2

    .line 36
    :pswitch_28
    const/4 v2, 0x3

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    aput-object v1, v2, v4

    aput-object v1, v2, v5

    return-object v2

    .line 38
    :pswitch_32
    new-array v2, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v1, v2, v3

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    aput-object v3, v2, v4

    return-object v2

    .line 18
    nop

    :sswitch_data_3e
    .sparse-switch
        0x0 -> :sswitch_20
        0x5 -> :sswitch_20
    .end sparse-switch

    .line 29
    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_23
        :pswitch_23
        :pswitch_28
        :pswitch_32
        :pswitch_12
        :pswitch_23
    .end packed-switch
.end method


# virtual methods
.method public abstract add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected checkNormalized()V
    .registers 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_f

    .line 210
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "point not in normal form"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 212
    :cond_f
    return-void
.end method

.method protected createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "sx"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "sy"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 282
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

.method protected abstract detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z
    .registers 14
    .param p1, "other"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 340
    if-nez p1, :cond_5

    .line 342
    return v10

    .line 345
    :cond_5
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .local v0, "c1":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 346
    .local v1, "c2":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_2c

    const/4 v4, 0x1

    .local v4, "n1":Z
    :goto_10
    if-nez v1, :cond_2e

    const/4 v5, 0x1

    .line 347
    .local v5, "n2":Z
    :goto_13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    .local v2, "i1":Z
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    .line 349
    .local v3, "i2":Z
    if-nez v2, :cond_1f

    if-eqz v3, :cond_32

    .line 351
    :cond_1f
    if-eqz v2, :cond_30

    if-eqz v3, :cond_30

    if-nez v4, :cond_2b

    if-nez v5, :cond_2b

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v9

    :cond_2b
    :goto_2b
    return v9

    .line 346
    .end local v2    # "i1":Z
    .end local v3    # "i2":Z
    .end local v4    # "n1":Z
    .end local v5    # "n2":Z
    :cond_2c
    const/4 v4, 0x0

    .restart local v4    # "n1":Z
    goto :goto_10

    :cond_2e
    const/4 v5, 0x0

    .restart local v5    # "n2":Z
    goto :goto_13

    .restart local v2    # "i1":Z
    .restart local v3    # "i2":Z
    :cond_30
    move v9, v10

    .line 351
    goto :goto_2b

    .line 354
    :cond_32
    move-object v6, p0

    .local v6, "p1":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v7, p1

    .line 355
    .local v7, "p2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v4, :cond_53

    if-eqz v5, :cond_53

    .line 384
    :goto_38
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v10

    :cond_52
    return v10

    .line 359
    :cond_53
    if-eqz v4, :cond_5a

    .line 361
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    goto :goto_38

    .line 363
    :cond_5a
    if-eqz v5, :cond_61

    .line 365
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    goto :goto_38

    .line 367
    :cond_61
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v11

    if-nez v11, :cond_68

    .line 369
    return v10

    .line 375
    :cond_68
    const/4 v11, 0x2

    new-array v8, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object p0, v8, v10

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    aput-object v11, v8, v9

    .line 378
    .local v8, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 380
    aget-object v6, v8, v10

    .line 381
    aget-object v7, v8, v9

    goto :goto_38
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 389
    if-ne p1, p0, :cond_4

    .line 391
    const/4 v0, 0x1

    return v0

    .line 394
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_a

    .line 396
    const/4 v0, 0x0

    return v0

    .line 399
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result v0

    return v0
.end method

.method public getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 141
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getCompressionYTilde()Z
.end method

.method public getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object v0
.end method

.method protected getCurveCoordinateSystem()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    goto :goto_5
.end method

.method public final getDetachedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 446
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Z)[B
    .registers 10
    .param p1, "compressed"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 457
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 459
    new-array v4, v7, [B

    return-object v4

    .line 462
    :cond_b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 464
    .local v3, "normed":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v1

    .line 466
    .local v1, "X":[B
    if-eqz p1, :cond_2f

    .line 468
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 469
    .local v0, "PO":[B
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v4, 0x3

    :goto_25
    int-to-byte v4, v4

    aput-byte v4, v0, v6

    .line 470
    array-length v4, v1

    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 471
    return-object v0

    .line 469
    :cond_2d
    const/4 v4, 0x2

    goto :goto_25

    .line 474
    .end local v0    # "PO":[B
    :cond_2f
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v2

    .line 476
    .local v2, "Y":[B
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v0, v4, [B

    .line 477
    .restart local v0    # "PO":[B
    const/4 v4, 0x4

    aput-byte v4, v0, v6

    .line 478
    array-length v4, v1

    invoke-static {v1, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 479
    array-length v4, v1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v2

    invoke-static {v2, v6, v0, v4, v5}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 480
    return-object v0
.end method

.method public final getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public final getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method protected final getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getX()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getY()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v0
.end method

.method public getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 176
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, v0

    if-lt p1, v0, :cond_9

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v0, p1

    goto :goto_8
.end method

.method public getZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v1, v2

    .line 182
    .local v1, "zsLen":I
    if-nez v1, :cond_9

    .line 184
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v2

    .line 186
    :cond_9
    new-array v0, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 187
    .local v0, "copy":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 188
    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 404
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 405
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-nez v0, :cond_28

    const/4 v1, 0x0

    .line 407
    .local v1, "hc":I
    :goto_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_27

    .line 411
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 413
    .local v2, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->hashCode()I

    move-result v3

    mul-int/lit8 v3, v3, 0x11

    xor-int/2addr v1, v3

    .line 414
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->hashCode()I

    move-result v3

    mul-int/lit16 v3, v3, 0x101

    xor-int/2addr v1, v3

    .line 417
    .end local v2    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_27
    return v1

    .line 405
    .end local v1    # "hc":I
    :cond_28
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v3

    not-int v1, v3

    .restart local v1    # "hc":I
    goto :goto_7
.end method

.method public isCompressed()Z
    .registers 2

    .prologue
    .line 295
    iget-boolean v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    return v0
.end method

.method public isInfinity()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-nez v1, :cond_b

    :cond_9
    const/4 v0, 0x1

    :cond_a
    :goto_a
    return v0

    :cond_b
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v1, v1

    if-lez v1, :cond_a

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    goto :goto_a
.end method

.method public isNormalized()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    .line 218
    .local v0, "coord":I
    if-eqz v0, :cond_a

    .line 219
    const/4 v1, 0x5

    if-ne v0, v1, :cond_c

    .line 218
    :cond_a
    const/4 v1, 0x1

    :goto_b
    return v1

    .line 220
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    .line 218
    if-nez v1, :cond_a

    .line 221
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    goto :goto_b
.end method

.method public isValid()Z
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 302
    return v3

    .line 307
    :cond_9
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 308
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-eqz v0, :cond_1d

    .line 310
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v1

    if-nez v1, :cond_16

    .line 312
    return v2

    .line 315
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesCofactor()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 317
    return v2

    .line 321
    :cond_1d
    return v3
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 525
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public abstract negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 234
    return-object p0

    .line 237
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    .line 246
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 247
    .local v0, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 249
    return-object p0

    .line 242
    .end local v0    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_1a
    return-object p0

    .line 252
    .restart local v0    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1b
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 237
    :sswitch_data_24
    .sparse-switch
        0x0 -> :sswitch_1a
        0x5 -> :sswitch_1a
    .end sparse-switch
.end method

.method normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6
    .param p1, "zInv"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v2

    packed-switch v2, :pswitch_data_22

    .line 275
    :pswitch_7
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "not a projective coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 264
    :pswitch_10
    invoke-virtual {p0, p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 270
    :pswitch_15
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .local v0, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 271
    .local v1, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 259
    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_10
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_7
        :pswitch_10
    .end packed-switch
.end method

.method protected satisfiesCofactor()Z
    .registers 3

    .prologue
    .line 69
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    .line 70
    .local v0, "h":Ljava/math/BigInteger;
    if-eqz v0, :cond_1b

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :goto_1a
    return v1

    :cond_1b
    const/4 v1, 0x1

    goto :goto_1a
.end method

.method protected abstract satisfiesCurveEquation()Z
.end method

.method public scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_6
    return-object p0

    .line 328
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_7
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

    move-result-object p0

    goto :goto_6
.end method

.method public scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 333
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .end local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_6
    return-object p0

    .line 335
    .restart local p0    # "this":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_7
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

    move-result-object p0

    goto :goto_6
.end method

.method public abstract subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 515
    invoke-virtual {p0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5
    .param p1, "e"    # I

    .prologue
    .line 493
    if-gez p1, :cond_b

    .line 495
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 498
    :cond_b
    move-object v0, p0

    .line 499
    .local v0, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_15

    .line 501
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_c

    .line 503
    :cond_15
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/16 v3, 0x2c

    .line 422
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 424
    const-string/jumbo v2, "INF"

    return-object v2

    .line 427
    :cond_c
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 429
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 431
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 432
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_28
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v2, v2

    if-ge v0, v2, :cond_3a

    .line 434
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 435
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 432
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 437
    :cond_3a
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 438
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public abstract twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 510
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
