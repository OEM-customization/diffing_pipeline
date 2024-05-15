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
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 8
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .line 1637
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1639
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_9

    move v2, v0

    goto :goto_a

    :cond_9
    move v2, v1

    :goto_a
    if-nez p3, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    if-ne v2, v0, :cond_29

    .line 1644
    if-eqz p2, :cond_26

    .line 1647
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1650
    if-eqz p1, :cond_26

    .line 1652
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->checkFieldElements(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1656
    :cond_26
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1659
    return-void

    .line 1641
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    .line 1663
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 1665
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    .line 1668
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 36
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 1737
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1739
    return-object v1

    .line 1741
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1743
    return-object v0

    .line 1746
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1747
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    .line 1749
    .local v9, "coord":I
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1750
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1752
    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_256

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v9, v3, :cond_18d

    const/4 v5, 0x6

    if-ne v9, v5, :cond_185

    .line 1816
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 1818
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_38

    .line 1820
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1823
    :cond_38
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1826
    :cond_3d
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v12, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v13, v5, v4

    .line 1827
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v14, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v14, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v15, v5, v4

    .line 1829
    .local v15, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    .line 1830
    .local v16, "Z1IsOne":Z
    move-object v5, v11

    .local v5, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v14

    .line 1831
    .local v6, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v16, :cond_5c

    .line 1833
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1834
    invoke-virtual {v6, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object v8, v5

    move-object v7, v6

    goto :goto_5e

    .line 1831
    :cond_5c
    move-object v8, v5

    move-object v7, v6

    .line 1837
    .end local v5    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v8, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_5e
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 1838
    .local v17, "Z2IsOne":Z
    move-object v5, v10

    .local v5, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v12

    .line 1839
    .local v6, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_74

    .line 1841
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1842
    invoke-virtual {v6, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v33, v6

    move-object v6, v5

    move-object/from16 v5, v33

    goto :goto_79

    .line 1839
    :cond_74
    move-object/from16 v33, v6

    move-object v6, v5

    move-object/from16 v5, v33

    .line 1845
    .local v5, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_79
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1846
    .local v4, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1848
    .local v19, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_97

    .line 1850
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 1852
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1855
    :cond_92
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 1859
    :cond_97
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_110

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    .line 1863
    .local v20, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1864
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1866
    .local v3, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v14

    .line 1867
    .local v22, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v5

    move-object/from16 v5, v22

    move-object/from16 v22, v7

    .end local v7    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1869
    .local v7, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v5

    .end local v5    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    move/from16 v25, v9

    .end local v9    # "coord":I
    .local v25, "coord":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1870
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v9

    if-eqz v9, :cond_eb

    .line 1872
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    move-object/from16 v26, v14

    .end local v14    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move-object/from16 v27, v11

    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v9, v2, v5, v14, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    .line 1875
    .end local v26    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_eb
    move-object/from16 v27, v11

    move-object/from16 v26, v14

    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1876
    .local v9, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1877
    .local v11, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    sget-object v14, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1878
    .end local v7    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v24    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v14, v3

    move-object v9, v5

    goto :goto_166

    .line 1881
    .end local v3    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "coord":I
    .end local v26    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "coord":I
    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v14    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_110
    move-object/from16 v23, v5

    move-object/from16 v22, v7

    move/from16 v25, v9

    move-object/from16 v27, v11

    move-object/from16 v26, v14

    .end local v5    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "coord":I
    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "coord":I
    .restart local v26    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1883
    .end local v19    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1884
    .local v5, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1886
    .local v7, "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1887
    .local v9, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v11

    if-eqz v11, :cond_142

    .line 1889
    new-instance v11, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move-object/from16 v19, v5

    .end local v5    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v11, v2, v9, v14, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v11

    .line 1892
    .end local v19    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_142
    move-object/from16 v19, v5

    .end local v5    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "AU1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1893
    .local v5, "ABZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_14e

    .line 1895
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1898
    :cond_14e
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v12, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v11, v5, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1900
    .local v11, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v14, v5

    .line 1901
    .local v14, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v16, :cond_164

    .line 1903
    invoke-virtual {v14, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    move-object/from16 v19, v3

    goto :goto_166

    .line 1901
    :cond_164
    move-object/from16 v19, v3

    .line 1907
    .end local v3    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "ABZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "AU2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_166
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v3, 0x1

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v14, v7, v3

    iget-boolean v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v3, v20

    move-object/from16 v18, v4

    .end local v4    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, v2

    move-object/from16 v21, v23

    move/from16 v23, v5

    .end local v23    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, v9

    move-object/from16 v24, v6

    .end local v6    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v11

    move-object/from16 v28, v8

    .end local v8    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v28, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v8, v23

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v20

    .line 1911
    .end local v12    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1IsOne":Z
    .end local v17    # "Z2IsOne":Z
    .end local v18    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "coord":I
    .end local v26    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "coord":I
    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_185
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1779
    :cond_18d
    move/from16 v25, v9

    move-object/from16 v27, v11

    .end local v9    # "coord":I
    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "coord":I
    .restart local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v9, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v11, v3, v4

    .line 1780
    .local v11, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v12, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v13, v3, v4

    .line 1782
    .local v13, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v14

    .line 1784
    .local v14, "Z2IsOne":Z
    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1785
    .local v15, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v14, :cond_1aa

    move-object v3, v9

    goto :goto_1ae

    :cond_1aa
    invoke-virtual {v9, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :goto_1ae
    move-object v8, v3

    .line 1786
    .restart local v8    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1787
    .local v7, "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v27

    .end local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1788
    .local v5, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v14, :cond_1bd

    move-object v3, v10

    goto :goto_1c1

    :cond_1bd
    invoke-virtual {v10, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :goto_1c1
    move-object v4, v3

    .line 1789
    .local v4, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1791
    .local v3, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1dc

    .line 1793
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_1d7

    .line 1795
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1798
    :cond_1d7
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 1801
    :cond_1dc
    move-object/from16 v16, v12

    .end local v12    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1802
    .local v12, "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v15

    .end local v15    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1803
    .local v15, "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v14, :cond_1ed

    move-object/from16 v19, v11

    goto :goto_1f1

    :cond_1ed
    invoke-virtual {v11, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    :goto_1f1
    move-object/from16 v20, v19

    .line 1804
    .local v20, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v11

    .end local v11    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1805
    .local v11, "uv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v4

    .end local v4    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v11, v7, v12, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v1, v20

    .end local v20    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1807
    .local v4, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1808
    .local v20, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v14, :cond_216

    move-object/from16 v23, v12

    goto :goto_21a

    :cond_216
    invoke-virtual {v12, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    :goto_21a
    move-object/from16 v24, v23

    .line 1809
    .local v24, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v5

    .end local v5    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v10, v3, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    move-object/from16 v26, v9

    move-object/from16 v9, v24

    .end local v24    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v9, v11, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 1810
    .local v24, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 1812
    .local v27, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v28, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v18, 0x0

    aput-object v27, v5, v18

    move-object/from16 v18, v1

    .end local v1    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v21, v3

    .end local v3    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v3, v28

    move-object/from16 v29, v4

    .end local v4    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, v2

    move-object/from16 v30, v5

    move-object/from16 v5, v20

    move-object/from16 v31, v9

    move-object v9, v6

    .end local v6    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v31, "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v24

    move-object/from16 v32, v7

    .end local v7    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v32, "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v7, v30

    move-object/from16 v30, v8

    .end local v8    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v30, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v28

    .line 1756
    .end local v12    # "VSq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Z2IsOne":Z
    .end local v15    # "VCu":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "V2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "V1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "coord":I
    .end local v26    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "VSqZ2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "U":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "coord":I
    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_256
    move/from16 v25, v9

    move-object v9, v11

    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v25    # "coord":I
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1757
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1759
    .local v4, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .local v5, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1760
    .local v6, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_27d

    .line 1762
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v7

    if-eqz v7, :cond_278

    .line 1764
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 1767
    :cond_278
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 1770
    :cond_27d
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1772
    .local v7, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1773
    .local v8, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1775
    .local v11, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v12, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-boolean v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v12, v2, v8, v11, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v12
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 1672
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected blacklist getCompressionYTilde()Z
    .registers 6

    .line 1712
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1713
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 1715
    return v2

    .line 1718
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1720
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_23

    const/4 v4, 0x6

    if-eq v3, v4, :cond_23

    .line 1730
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v2

    return v2

    .line 1726
    :cond_23
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v4

    if-eq v3, v4, :cond_2e

    const/4 v2, 0x1

    :cond_2e
    return v2
.end method

.method public blacklist getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 1677
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v0

    .line 1679
    .local v0, "coord":I
    const/4 v1, 0x5

    const/4 v2, 0x6

    if-eq v0, v1, :cond_d

    if-eq v0, v2, :cond_d

    .line 1705
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object v1

    .line 1684
    :cond_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1686
    .local v3, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v4

    if-nez v4, :cond_38

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1e

    goto :goto_38

    .line 1692
    :cond_1e
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1693
    .local v4, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-ne v2, v0, :cond_37

    .line 1695
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v2, v2, v5

    .line 1696
    .local v2, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v5

    if-nez v5, :cond_37

    .line 1698
    invoke-virtual {v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1701
    .end local v2    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_37
    return-object v4

    .line 1688
    .end local v4    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_38
    :goto_38
    return-object v3
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 12

    .line 2103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2105
    return-object p0

    .line 2108
    :cond_7
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2109
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 2111
    return-object p0

    .line 2114
    :cond_10
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurveCoordinateSystem()I

    move-result v1

    if-eqz v1, :cond_74

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_56

    const/4 v4, 0x5

    if-eq v1, v4, :cond_46

    const/4 v4, 0x6

    if-ne v1, v4, :cond_3e

    .line 2134
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v7, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v1, v3

    .line 2135
    .local v8, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v6, v3

    iget-boolean v10, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v1, v9

    move-object v2, v4

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    .line 2139
    .end local v7    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2128
    :cond_46
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2129
    .local v1, "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 2123
    .end local v1    # "L":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_56
    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v7, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v8, v1, v3

    .line 2124
    .restart local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v8, v6, v3

    iget-boolean v10, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object v1, v9

    move-object v2, v4

    move-object v3, v0

    move-object v4, v5

    move-object v5, v6

    move v6, v10

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    .line 2118
    .end local v7    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_74
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2119
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v2, v3, v0, v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 27

    .line 1918
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1920
    return-object v0

    .line 1923
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1925
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1926
    .local v8, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 1929
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1932
    :cond_1a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    .line 1934
    .local v9, "coord":I
    if-eqz v9, :cond_198

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v9, v3, :cond_12a

    const/4 v4, 0x6

    if-ne v9, v4, :cond_120

    .line 1970
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v10, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v4, v2

    .line 1972
    .local v11, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 1973
    .local v12, "Z1IsOne":Z
    if-eqz v12, :cond_35

    move-object v4, v10

    goto :goto_39

    :cond_35
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    :goto_39
    move-object v13, v4

    .line 1974
    .local v13, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_3e

    move-object v4, v11

    goto :goto_42

    :cond_3e
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    :goto_42
    move-object v14, v4

    .line 1975
    .local v14, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1976
    .local v15, "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_4b

    move-object v4, v15

    goto :goto_4f

    :cond_4b
    invoke-virtual {v15, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    :goto_4f
    move-object v7, v4

    .line 1977
    .local v7, "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1978
    .local v6, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_72

    .line 1980
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v2, v1, v6, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1983
    :cond_72
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1984
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_7a

    move-object v4, v6

    goto :goto_7e

    :cond_7a
    invoke-virtual {v6, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1986
    .local v4, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7e
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1988
    .local v2, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v17, v9

    .end local v9    # "coord":I
    .local v17, "coord":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v9

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v18

    move-object/from16 v19, v1

    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v19, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    shr-int/lit8 v1, v18, 0x1

    if-ge v9, v1, :cond_e9

    .line 1990
    invoke-virtual {v10, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1992
    .local v1, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v9

    if-eqz v9, :cond_a9

    .line 1994
    invoke-virtual {v7, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .local v9, "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_b1

    .line 1999
    .end local v9    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_a9
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v7, v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 2001
    .restart local v9    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_b1
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 2002
    .local v3, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v20

    if-eqz v20, :cond_d0

    .line 2004
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_e7

    .line 2006
    :cond_d0
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v20

    if-nez v20, :cond_e5

    .line 2008
    move-object/from16 v20, v1

    .end local v1    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v20, "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_e7

    .line 2006
    .end local v20    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v1    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_e5
    move-object/from16 v20, v1

    .line 2010
    .end local v1    # "t1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "t2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_e7
    move-object v1, v3

    goto :goto_fe

    .line 2013
    .end local v3    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_e9
    if-eqz v12, :cond_ed

    move-object v1, v8

    goto :goto_f1

    :cond_ed
    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 2014
    .local v1, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_f1
    invoke-virtual {v1, v6, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v1, v3

    .line 2017
    .local v1, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_fe
    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v4, v3, v16

    move-object/from16 v16, v7

    .end local v7    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v18, v2

    .end local v2    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v2, v9

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    move-object/from16 v21, v4

    .end local v4    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, v5

    move-object/from16 v22, v5

    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, v1

    move-object/from16 v23, v6

    .end local v6    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v20

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v9

    .line 2021
    .end local v10    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "a":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "aZ1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v21    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v9, "coord":I
    :cond_120
    move-object/from16 v19, v1

    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .restart local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unsupported coordinate system"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1949
    .end local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .restart local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    :cond_12a
    move-object/from16 v19, v1

    move/from16 v17, v9

    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v9    # "coord":I
    .restart local v17    # "coord":I
    .restart local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v9, v2, v3

    .line 1951
    .local v9, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v10

    .line 1952
    .local v10, "Z1IsOne":Z
    if-eqz v10, :cond_13d

    move-object v2, v8

    goto :goto_141

    :cond_13d
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_141
    move-object v11, v2

    .line 1953
    .local v11, "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v10, :cond_146

    move-object v2, v1

    goto :goto_14a

    :cond_146
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_14a
    move-object v12, v2

    .line 1955
    .local v12, "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1956
    .local v13, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1957
    .local v14, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v11

    .line 1958
    .local v15, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1959
    .local v7, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1960
    .local v6, "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v6, v14, v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1962
    .local v5, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1963
    .local v20, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v15, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 1964
    .local v21, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1966
    .local v22, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v23, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v2, 0x1

    new-array v4, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v22, v4, v2

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v2, v23

    move/from16 v16, v3

    move-object/from16 v3, v19

    move-object/from16 v18, v4

    move-object/from16 v4, v20

    move-object/from16 v24, v5

    .end local v5    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v5, v21

    move-object/from16 v25, v6

    .end local v6    # "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v18

    move-object/from16 v18, v7

    .end local v7    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v23

    .line 1938
    .end local v10    # "Z1IsOne":Z
    .end local v11    # "X1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Y1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "coord":I
    .end local v18    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v20    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "sv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v9, "coord":I
    :cond_198
    move-object/from16 v19, v1

    .end local v1    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .restart local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1940
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1942
    .local v2, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1943
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v8, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1945
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v7, v19

    .end local v19    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .local v7, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-direct {v5, v7, v3, v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v5
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 32
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 2028
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2030
    return-object v1

    .line 2032
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2034
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 2037
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 2039
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v9, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2040
    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 2043
    return-object v1

    .line 2046
    :cond_23
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v10

    .line 2048
    .local v10, "coord":I
    const/4 v3, 0x6

    if-eq v10, v3, :cond_33

    .line 2096
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 2053
    :cond_33
    iget-object v11, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v12, v3, v4

    .line 2054
    .local v12, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_119

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-nez v3, :cond_4e

    move-object/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v22, v11

    goto/16 :goto_11f

    .line 2059
    :cond_4e
    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v13, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v14, v3, v4

    .line 2060
    .local v14, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v15, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 2062
    .local v15, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 2063
    .local v8, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 2064
    .local v7, "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 2065
    .local v6, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2067
    .local v5, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 2068
    .local v3, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 2069
    .local v4, "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v5

    .end local v5    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3, v8, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 2070
    .local v5, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v9

    .end local v9    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 2071
    .local v9, "X2Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move/from16 v20, v10

    .end local v10    # "coord":I
    .local v20, "coord":I
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 2073
    .local v10, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_b6

    .line 2075
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-eqz v16, :cond_b1

    .line 2077
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2080
    :cond_b1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 2083
    :cond_b6
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_d2

    .line 2085
    move-object/from16 v19, v7

    .end local v7    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    move-object/from16 v21, v8

    .end local v8    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    move-object/from16 v22, v11

    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    invoke-direct {v7, v2, v5, v8, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v7

    .line 2088
    .end local v19    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v7    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_d2
    move-object/from16 v19, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v11

    .end local v7    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v19    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 2089
    .local v11, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 2090
    .local v8, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v3, v4, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyPlusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 2092
    .local v23, "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v24, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v8, v7, v16

    move-object/from16 v16, v8

    .end local v8    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->withCompression:Z

    move-object/from16 v25, v3

    .end local v3    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v3, v24

    move-object/from16 v26, v4

    .end local v4    # "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, v2

    move-object/from16 v27, v5

    .end local v5    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, v11

    move-object/from16 v28, v6

    .end local v6    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v28, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v23

    move-object/from16 v29, v21

    move-object/from16 v21, v16

    move-object/from16 v16, v29

    .local v16, "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v24

    .line 2054
    .end local v13    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "X1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "L1Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "L1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "coord":I
    .end local v21    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "L3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "L2plus1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "coord":I
    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_119
    move-object/from16 v18, v9

    move/from16 v20, v10

    move-object/from16 v22, v11

    .line 2056
    .end local v9    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "coord":I
    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v20    # "coord":I
    .restart local v22    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_11f
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3
.end method
