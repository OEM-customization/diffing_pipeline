.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1357
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1358
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1362
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1363
    return-void
.end method


# virtual methods
.method protected blacklist satisfiesCurveEquation()Z
    .registers 14

    .line 1367
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1368
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1370
    .local v3, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1371
    .local v4, "coord":I
    const/4 v5, 0x0

    const/4 v6, 0x6

    if-ne v4, v6, :cond_76

    .line 1373
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v6, v5

    .line 1374
    .local v5, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 1376
    .local v6, "ZIsOne":Z
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_3a

    .line 1379
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1380
    .local v7, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v9, v3

    .line 1381
    .local v9, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v6, :cond_35

    .line 1383
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1385
    :cond_35
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    return v10

    .line 1388
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3a
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v7, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1390
    .local v8, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v6, :cond_57

    .line 1392
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1393
    .local v9, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_6d

    .line 1397
    .end local v9    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_57
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .local v9, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1398
    .local v10, "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v7, v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1400
    .local v11, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v3, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    move-object v9, v11

    move-object v10, v12

    .line 1402
    .end local v11    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6d
    invoke-virtual {v9, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1403
    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    return v11

    .line 1406
    .end local v5    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "ZIsOne":Z
    .end local v7    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_76
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1407
    .local v6, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1409
    .local v7, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v4, :cond_ac

    const/4 v8, 0x1

    if-ne v4, v8, :cond_a4

    .line 1415
    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v8, v5

    .line 1416
    .restart local v5    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-nez v8, :cond_ad

    .line 1418
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1419
    .local v9, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1420
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1421
    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1422
    .end local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_ad

    .line 1426
    .end local v5    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a4
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v8, "unsupported coordinate system"

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1412
    :cond_ac
    nop

    .line 1429
    :cond_ad
    :goto_ad
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1430
    .local v5, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8
.end method

.method protected blacklist satisfiesOrder()Z
    .registers 10

    .line 1435
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v0

    .line 1436
    .local v0, "cofactor":Ljava/math/BigInteger;
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2e

    .line 1442
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 1443
    .local v1, "N":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1444
    .local v4, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1445
    .local v5, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v5

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v6

    if-nez v6, :cond_2c

    goto :goto_2d

    :cond_2c
    move v2, v3

    :goto_2d
    return v2

    .line 1447
    .end local v1    # "N":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v4    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2e
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 1457
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 1458
    .restart local v1    # "N":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1459
    .restart local v4    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1460
    .local v5, "lambda":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v5, :cond_53

    .line 1462
    return v3

    .line 1464
    :cond_53
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1465
    .local v6, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1466
    .local v7, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v8, v7

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v8

    if-eqz v8, :cond_81

    .line 1467
    invoke-virtual {v7, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->trace()I

    move-result v8

    if-nez v8, :cond_7f

    goto :goto_81

    :cond_7f
    move v2, v3

    goto :goto_82

    :cond_81
    :goto_81
    nop

    .line 1466
    :goto_82
    return v2

    .line 1470
    .end local v1    # "N":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v4    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "lambda":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_83
    invoke-super {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    return v1
.end method

.method public blacklist scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1475
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1477
    return-object p0

    .line 1480
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1482
    .local v0, "coord":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_49

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    .line 1508
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1497
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .line 1500
    .local v3, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1501
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1502
    .local v6, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1504
    .local v7, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v7, v9, v4

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v8, v5, v6, v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1487
    .end local v1    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .restart local v1    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1489
    .restart local v2    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1490
    .local v3, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1492
    .local v4, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v5, v1, v4, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5
.end method

.method public blacklist scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1515
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1517
    return-object p0

    .line 1520
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1522
    .local v0, "coord":I
    const/4 v1, 0x5

    if-eq v0, v1, :cond_16

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    .line 1536
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 1527
    :cond_16
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1530
    .local v2, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1532
    .local v3, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v1, v3, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 1543
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1545
    return-object p0

    .line 1549
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public blacklist tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 11

    .line 1554
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1556
    return-object p0

    .line 1559
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1560
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1562
    .local v1, "coord":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1564
    .local v2, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v1, :cond_45

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    const/4 v4, 0x5

    if-eq v1, v4, :cond_45

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1d

    goto :goto_25

    .line 1581
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1575
    :cond_25
    :goto_25
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v4, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 1576
    .local v5, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1577
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    aput-object v9, v3, v6

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    .line 1576
    invoke-virtual {v0, v7, v8, v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v3

    .line 1569
    .end local v4    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_45
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1570
    .local v3, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v4
.end method

.method public blacklist tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 12
    .param p1, "pow"    # I

    .line 1588
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1590
    return-object p0

    .line 1593
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1594
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    .line 1596
    .local v1, "coord":I
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1598
    .local v2, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v1, :cond_45

    const/4 v3, 0x1

    if-eq v1, v3, :cond_25

    const/4 v4, 0x5

    if-eq v1, v4, :cond_45

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1d

    goto :goto_25

    .line 1615
    :cond_1d
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1609
    :cond_25
    :goto_25
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v4, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    .line 1610
    .local v5, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1611
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    aput-object v9, v3, v6

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    .line 1610
    invoke-virtual {v0, v7, v8, v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v3

    .line 1603
    .end local v4    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_45
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1604
    .local v3, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v4
.end method
