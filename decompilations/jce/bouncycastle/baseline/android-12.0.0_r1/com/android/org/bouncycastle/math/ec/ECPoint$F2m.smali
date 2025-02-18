.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "F2m"
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1647
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1650
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1654
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1657
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 32
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 1726
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1728
    return-object v1

    .line 1730
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1732
    return-object v0

    .line 1735
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1736
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1738
    .local v3, "coord":I
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1739
    .local v4, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1741
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_282

    .line 1900
    move/from16 v17, v3

    move-object v12, v5

    move-object v5, v1

    .end local v3    # "coord":I
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "coord":I
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "unsupported coordinate system"

    invoke-direct {v1, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1805
    .end local v12    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    .restart local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_2e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_44

    .line 1807
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-eqz v6, :cond_3f

    .line 1809
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 1812
    :cond_3f
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    return-object v6

    .line 1815
    :cond_44
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v8, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v9, v9, v7

    .line 1816
    .local v9, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v10, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v11, v7

    .line 1818
    .local v11, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 1819
    .local v12, "Z1IsOne":Z
    move-object v13, v5

    .local v13, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v14, v10

    .line 1820
    .local v14, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_60

    .line 1822
    invoke-virtual {v13, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1823
    invoke-virtual {v14, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1826
    :cond_60
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v15

    .line 1827
    .local v15, "Z2IsOne":Z
    move-object/from16 v16, v4

    .local v16, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v8

    .line 1828
    .local v17, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v15, :cond_7b

    .line 1830
    move-object/from16 v7, v16

    .end local v16    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1831
    .end local v7    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v7, v17

    .end local v17    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    .end local v7    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_81

    .line 1828
    :cond_7b
    move-object/from16 v7, v16

    move-object/from16 v16, v17

    .end local v17    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v16

    .line 1834
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_81
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    invoke-virtual {v6, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1835
    .local v3, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1837
    .local v19, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_a1

    .line 1839
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_9c

    .line 1841
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1844
    :cond_9c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1848
    :cond_a1
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_110

    .line 1851
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    .line 1852
    .local v20, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1853
    move-object/from16 v21, v6

    .end local v6    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1855
    .local v6, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v10

    .line 1856
    .local v22, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v10

    move-object/from16 v22, v14

    .end local v14    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1858
    .local v14, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v10

    .end local v10    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v25, v5

    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v10, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1859
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_ef

    .line 1861
    new-instance v10, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v10, v2, v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v10

    .line 1864
    :cond_ef
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1865
    .local v1, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1866
    .local v10, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v1

    .end local v1    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1867
    .end local v6    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v24    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_16a

    .line 1870
    .end local v1    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v14, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_110
    move-object/from16 v25, v5

    move-object/from16 v21, v6

    move-object/from16 v23, v10

    move-object/from16 v22, v14

    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1872
    .end local v19    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1873
    .local v5, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1875
    .local v6, "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1876
    .local v10, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_13e

    .line 1878
    new-instance v14, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v19, v5

    .end local v5    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-direct {v14, v2, v10, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v14

    .line 1881
    .end local v19    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_13e
    move-object/from16 v19, v5

    .end local v5    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1882
    .local v5, "ABZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v15, :cond_14a

    .line 1884
    invoke-virtual {v5, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1887
    :cond_14a
    invoke-virtual {v6, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move-object/from16 v20, v1

    .end local v1    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v14, v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1889
    .local v1, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v14, v5

    .line 1890
    .local v14, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_165

    .line 1892
    invoke-virtual {v14, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move-object v5, v10

    move-object/from16 v19, v20

    move-object v10, v1

    move-object v1, v14

    goto :goto_16a

    .line 1890
    :cond_165
    move-object v5, v10

    move-object/from16 v19, v20

    move-object v10, v1

    move-object v1, v14

    .line 1896
    .end local v6    # "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_16a
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v14, 0x1

    new-array v14, v14, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v18, 0x0

    aput-object v1, v14, v18

    invoke-direct {v6, v2, v5, v10, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6

    .line 1768
    .end local v1    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z2IsOne":Z
    .end local v17    # "coord":I
    .end local v19    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_177
    move/from16 v17, v3

    move-object/from16 v25, v5

    move/from16 v18, v7

    .end local v3    # "coord":I
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "coord":I
    .restart local v25    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v18

    .line 1769
    .local v3, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v5, p1

    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v18

    .line 1771
    .local v7, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 1773
    .local v8, "Z2IsOne":Z
    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1774
    .local v9, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_197

    move-object v10, v1

    goto :goto_19b

    :cond_197
    invoke-virtual {v1, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1775
    .local v10, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_19b
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1776
    .local v11, "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v12, v25

    .end local v25    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1777
    .local v13, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_1a9

    move-object v14, v4

    goto :goto_1ad

    :cond_1a9
    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1778
    .local v14, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_1ad
    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1780
    .local v15, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_1c7

    .line 1782
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1c2

    .line 1784
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1787
    :cond_1c2
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1790
    :cond_1c7
    move-object/from16 v19, v6

    .end local v6    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1791
    .local v6, "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v9

    .end local v9    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1792
    .local v9, "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_1d8

    move-object/from16 v21, v3

    goto :goto_1dc

    :cond_1d8
    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    :goto_1dc
    move-object/from16 v22, v21

    .line 1793
    .local v22, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v3

    .end local v3    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1794
    .local v3, "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v10

    .end local v10    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v3, v11, v6, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    move-object/from16 v24, v13

    move-object/from16 v13, v22

    .end local v22    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v13, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1796
    .local v10, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v14

    .end local v14    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1797
    .local v14, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_205

    move-object/from16 v25, v6

    goto :goto_209

    :cond_205
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    :goto_209
    move-object/from16 v26, v25

    .line 1798
    .local v26, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v6

    .end local v6    # "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v4, v15, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v27, v1

    move-object/from16 v1, v26

    .end local v26    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v1, v3, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1799
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 1801
    .local v26, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v28, v1

    .end local v1    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v28, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v29, v3

    const/4 v3, 0x1

    .end local v3    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v26, v3, v16

    invoke-direct {v1, v2, v14, v6, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v1

    .line 1745
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z2IsOne":Z
    .end local v9    # "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v19    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    .restart local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_22e
    move/from16 v17, v3

    move-object v12, v5

    move-object v5, v1

    .end local v3    # "coord":I
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v12    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "coord":I
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1746
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1748
    .local v3, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1749
    .local v7, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_254

    .line 1751
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-eqz v8, :cond_24f

    .line 1753
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 1756
    :cond_24f
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    return-object v8

    .line 1759
    :cond_254
    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1761
    .local v8, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1762
    .local v9, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1764
    .local v10, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v11, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v11, v2, v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v11

    :sswitch_data_282
    .sparse-switch
        0x0 -> :sswitch_22e
        0x1 -> :sswitch_177
        0x6 -> :sswitch_2e
    .end sparse-switch
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 1661
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist getCompressionYTilde()Z
    .registers 6

    .line 1701
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1702
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1704
    return v2

    .line 1707
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1709
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    packed-switch v3, :pswitch_data_2c

    .line 1719
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    return v2

    .line 1715
    :pswitch_20
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_2b

    const/4 v2, 0x1

    :cond_2b
    return v2

    :pswitch_data_2c
    .packed-switch 0x5
        :pswitch_20
        :pswitch_20
    .end packed-switch
.end method

.method public blacklist getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 1666
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1668
    .local v0, "coord":I
    packed-switch v0, :pswitch_data_38

    .line 1694
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v1

    .line 1673
    :pswitch_a
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1675
    .local v2, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v3

    if-nez v3, :cond_36

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b

    goto :goto_36

    .line 1681
    :cond_1b
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1682
    .local v3, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x6

    if-ne v4, v0, :cond_35

    .line 1684
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    .line 1685
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_35

    .line 1687
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1690
    .end local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_35
    return-object v3

    .line 1677
    .end local v3    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_36
    :goto_36
    return-object v2

    nop

    :pswitch_data_38
    .packed-switch 0x5
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9

    .line 2092
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2094
    return-object p0

    .line 2097
    :cond_7
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2098
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2100
    return-object p0

    .line 2103
    :cond_10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_6a

    .line 2128
    :pswitch_19
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2123
    :pswitch_21
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v3

    .line 2124
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v3

    invoke-direct {v5, v6, v0, v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2117
    .end local v1    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_37
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2118
    .restart local v1    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    .line 2112
    .end local v1    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_45
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v3

    .line 2113
    .restart local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v4, v2, v3

    invoke-direct {v5, v6, v0, v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2107
    .end local v1    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_5b
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2108
    .restart local v1    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2

    nop

    :pswitch_data_6a
    .packed-switch 0x0
        :pswitch_5b
        :pswitch_45
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_37
        :pswitch_21
    .end packed-switch
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 23

    .line 1907
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1909
    return-object v0

    .line 1912
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1914
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1915
    .local v2, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 1918
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1921
    :cond_1a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1923
    .local v3, "coord":I
    const/4 v4, 0x1

    const/4 v5, 0x0

    sparse-switch v3, :sswitch_data_18c

    .line 2010
    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1959
    .end local v17    # "coord":I
    .restart local v3    # "coord":I
    :sswitch_2d
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v7, v7, v5

    .line 1961
    .local v7, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    .line 1962
    .local v8, "Z1IsOne":Z
    if-eqz v8, :cond_3b

    move-object v9, v6

    goto :goto_3f

    :cond_3b
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1963
    .local v9, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_3f
    if-eqz v8, :cond_43

    move-object v10, v7

    goto :goto_47

    :cond_43
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1964
    .local v10, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_47
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1965
    .local v11, "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_4f

    move-object v12, v11

    goto :goto_53

    :cond_4f
    invoke-virtual {v11, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1966
    .local v12, "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_53
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1967
    .local v13, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v14

    if-eqz v14, :cond_73

    .line 1969
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-direct {v4, v1, v13, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v4

    .line 1972
    :cond_73
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1973
    .local v14, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_7b

    move-object v15, v13

    goto :goto_7f

    :cond_7b
    invoke-virtual {v13, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1975
    .local v15, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7f
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1977
    .local v5, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v18

    shr-int/lit8 v0, v18, 0x1

    if-ge v3, v0, :cond_e7

    .line 1979
    invoke-virtual {v6, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1981
    .local v0, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_a8

    .line 1983
    invoke-virtual {v12, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .local v3, "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_b0

    .line 1988
    .end local v3    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a8
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v12, v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1990
    .restart local v3    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_b0
    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1991
    .local v4, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_cf

    .line 1993
    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_e6

    .line 1995
    :cond_cf
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v19

    if-nez v19, :cond_e4

    .line 1997
    move-object/from16 v19, v0

    .end local v0    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_e6

    .line 1995
    .end local v19    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v0    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_e4
    move-object/from16 v19, v0

    .line 1999
    .end local v0    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_e6
    goto :goto_fb

    .line 2002
    .end local v4    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_e7
    if-eqz v8, :cond_eb

    move-object v0, v2

    goto :goto_ef

    :cond_eb
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2003
    .local v0, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_ef
    invoke-virtual {v0, v13, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2006
    .end local v0    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v4    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_fb
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v15, v3, v16

    invoke-direct {v0, v1, v14, v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0

    .line 1938
    .end local v4    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z1IsOne":Z
    .end local v9    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .local v3, "coord":I
    :sswitch_108
    move/from16 v17, v3

    move/from16 v16, v5

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v3, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v4, v4, v16

    .line 1940
    .local v4, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    .line 1941
    .local v5, "Z1IsOne":Z
    if-eqz v5, :cond_11c

    move-object v6, v2

    goto :goto_120

    :cond_11c
    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1942
    .local v6, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_120
    if-eqz v5, :cond_124

    move-object v7, v3

    goto :goto_128

    :cond_124
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1944
    .local v7, "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_128
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1945
    .local v8, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1946
    .local v9, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v10, v6

    .line 1947
    .local v10, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1948
    .local v11, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1949
    .local v12, "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v12, v9, v11, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1951
    .local v13, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1952
    .restart local v14    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v10, v13, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1953
    .local v15, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1955
    .local v19, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v20, v3

    .end local v3    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v19, v4, v16

    invoke-direct {v3, v1, v14, v15, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 1927
    .end local v5    # "Z1IsOne":Z
    .end local v6    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v19    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "coord":I
    :sswitch_162
    move/from16 v17, v3

    .end local v3    # "coord":I
    .restart local v17    # "coord":I
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1929
    .local v3, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1931
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1932
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1934
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v7, v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v7

    :sswitch_data_18c
    .sparse-switch
        0x0 -> :sswitch_162
        0x1 -> :sswitch_108
        0x6 -> :sswitch_2d
    .end sparse-switch
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 26
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 2017
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2019
    return-object v1

    .line 2021
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2023
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 2026
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 2028
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2029
    .local v3, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 2032
    return-object v1

    .line 2035
    :cond_23
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 2037
    .local v4, "coord":I
    packed-switch v4, :pswitch_data_112

    .line 2085
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 2042
    :pswitch_33
    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    .line 2043
    .local v6, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v8

    if-nez v8, :cond_101

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    if-nez v8, :cond_50

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    goto/16 :goto_109

    .line 2048
    :cond_50
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v8, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v9, v9, v7

    .line 2049
    .local v9, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2051
    .local v10, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 2052
    .local v11, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 2053
    .local v12, "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 2054
    .local v13, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 2056
    .local v14, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 2057
    .local v15, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 2058
    .local v7, "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15, v11, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2059
    .local v0, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v3

    .end local v3    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 2060
    .local v3, "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    move/from16 v19, v4

    .end local v4    # "coord":I
    .local v19, "coord":I
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2062
    .local v4, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_b6

    .line 2064
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_b1

    .line 2066
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2069
    :cond_b1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2072
    :cond_b6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_ce

    .line 2074
    move-object/from16 v18, v5

    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v20, v6

    .end local v6    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-direct {v5, v2, v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v5

    .line 2077
    .end local v18    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ce
    move-object/from16 v18, v5

    move-object/from16 v20, v6

    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v20    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2078
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 2079
    .local v6, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    move-object/from16 v22, v0

    .end local v0    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v15, v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 2081
    .local v0, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v3

    .end local v3    # "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    move-object/from16 v23, v4

    .end local v4    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v6, v4, v16

    invoke-direct {v3, v2, v5, v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v3

    .line 2043
    .end local v0    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "coord":I
    .end local v20    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v4, "coord":I
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_101
    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v18, v5

    move-object/from16 v20, v6

    .line 2045
    .end local v3    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "coord":I
    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v17    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "coord":I
    .restart local v20    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_109
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :pswitch_data_112
    .packed-switch 0x6
        :pswitch_33
    .end packed-switch
.end method
