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
.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1350
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1351
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1355
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1356
    return-void
.end method


# virtual methods
.method protected satisfiesCurveEquation()Z
    .registers 19

    .prologue
    .line 1360
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v13

    .line 1361
    .local v13, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v4, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1363
    .local v2, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    .line 1364
    .local v12, "coord":I
    const/16 v16, 0x6

    move/from16 v0, v16

    if-ne v12, v0, :cond_8c

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 1367
    .local v7, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v11

    .line 1369
    .local v11, "ZIsOne":Z
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_48

    .line 1372
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1373
    .local v6, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .local v14, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v2

    .line 1374
    .local v15, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v11, :cond_43

    .line 1376
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1378
    :cond_43
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v16

    return v16

    .line 1381
    .end local v6    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v3, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1383
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v11, :cond_75

    .line 1385
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1386
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1395
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_6c
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1396
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v16

    return v16

    .line 1390
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_75
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1391
    .local v10, "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1393
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v2, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_6c

    .line 1399
    .end local v3    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "ZIsOne":Z
    .end local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1400
    .restart local v6    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1402
    .restart local v14    # "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v12, :pswitch_data_e2

    .line 1419
    new-instance v16, Ljava/lang/IllegalStateException;

    const-string/jumbo v17, "unsupported coordinate system"

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 1408
    :pswitch_a6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget-object v7, v16, v17

    .line 1409
    .restart local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    if-nez v16, :cond_ca

    .line 1411
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .restart local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1412
    .local v9, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1413
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1414
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1422
    .end local v7    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ca
    :pswitch_ca
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1423
    .restart local v15    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v16

    return v16

    .line 1402
    nop

    :pswitch_data_e2
    .packed-switch 0x0
        :pswitch_ca
        :pswitch_a6
    .end packed-switch
.end method

.method public scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    const/4 v9, 0x0

    .line 1428
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1430
    return-object p0

    .line 1433
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v6

    .line 1435
    .local v6, "coord":I
    packed-switch v6, :pswitch_data_6e

    .line 1461
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 1440
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1442
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1443
    .local v3, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1445
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v7, v2, v1, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 1450
    .end local v0    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_3b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .restart local v2    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .restart local v0    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    aget-object v4, v7, v9

    .line 1453
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1454
    .restart local v3    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1455
    .restart local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1457
    .local v5, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v5, v8, v9

    iget-boolean v9, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v7, v3, v1, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 1435
    nop

    :pswitch_data_6e
    .packed-switch 0x5
        :pswitch_14
        :pswitch_3b
    .end packed-switch
.end method

.method public scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1468
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1470
    return-object p0

    .line 1473
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurveCoordinateSystem()I

    move-result v3

    .line 1475
    .local v3, "coord":I
    packed-switch v3, :pswitch_data_36

    .line 1489
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1480
    :pswitch_13
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1483
    .local v0, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1485
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v2, v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1475
    :pswitch_data_36
    .packed-switch 0x5
        :pswitch_13
        :pswitch_13
    .end packed-switch
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1496
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1498
    return-object p0

    .line 1502
    :cond_7
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public tau()Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 1507
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1509
    return-object p0

    .line 1512
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 1513
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1515
    .local v3, "coord":I
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1517
    .local v0, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v3, :pswitch_data_52

    .line 1534
    :pswitch_15
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1522
    :pswitch_1e
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1523
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1528
    .end local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_31
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .restart local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v5, v9

    .line 1529
    .local v2, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1530
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    .line 1529
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1517
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_31
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1e
        :pswitch_31
    .end packed-switch
.end method

.method public tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 12
    .param p1, "pow"    # I

    .prologue
    const/4 v9, 0x0

    .line 1541
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->isInfinity()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1543
    return-object p0

    .line 1546
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 1547
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1549
    .local v3, "coord":I
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1551
    .local v0, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v3, :pswitch_data_52

    .line 1568
    :pswitch_15
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1556
    :pswitch_1e
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1557
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1562
    .end local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_31
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .restart local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v2, v5, v9

    .line 1563
    .local v2, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1564
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    aput-object v8, v7, v9

    iget-boolean v8, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->withCompression:Z

    .line 1563
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    return-object v5

    .line 1551
    nop

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_31
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_1e
        :pswitch_31
    .end packed-switch
.end method
