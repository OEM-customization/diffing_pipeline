.class public Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 8
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .line 634
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 636
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
    if-ne v2, v0, :cond_13

    .line 641
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 642
    return-void

    .line 638
    :cond_13
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

    .line 646
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 648
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 649
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 36
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 671
    return-object v1

    .line 673
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 675
    return-object v0

    .line 677
    :cond_12
    if-ne v0, v1, :cond_19

    .line 679
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 682
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 683
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    .line 685
    .local v9, "coord":I
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 686
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v12, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v12, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v13, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 688
    .local v13, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_281

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v9, v3, :cond_19d

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-eq v9, v6, :cond_3e

    if-ne v9, v5, :cond_36

    goto :goto_3e

    .line 880
    :cond_36
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "unsupported coordinate system"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 758
    :cond_3e
    :goto_3e
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v14, v7, v4

    .line 759
    .local v14, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v15, v7, v4

    .line 761
    .local v15, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v16

    .line 763
    .local v16, "Z1IsOne":Z
    const/4 v7, 0x0

    .line 765
    .local v7, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v16, :cond_bb

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_bb

    .line 769
    invoke-virtual {v10, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 770
    .local v3, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v18

    if-eqz v18, :cond_71

    .line 772
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 774
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 776
    :cond_6c
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 779
    :cond_71
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 780
    .local v4, "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 781
    .local v5, "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v4

    .end local v4    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 783
    .local v4, "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v7

    .end local v7    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 784
    .local v7, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v5

    .end local v5    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 785
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v8

    .line 787
    .local v24, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v25, v3

    move-object/from16 v3, v24

    .end local v24    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 788
    .end local v4    # "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v7

    move-object/from16 v26, v10

    move-object/from16 v29, v11

    move-object/from16 v27, v12

    move-object/from16 v12, v22

    move-object v10, v3

    move-object v11, v5

    goto/16 :goto_171

    .line 765
    .end local v3    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_bb
    move-object/from16 v22, v7

    .line 792
    .end local v7    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v16, :cond_c3

    .line 794
    move-object v3, v14

    .local v3, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, v12

    .local v4, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, v13

    .local v5, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_d4

    .line 798
    .end local v3    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c3
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 799
    .restart local v3    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 800
    .restart local v4    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 801
    .local v5, "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object v5, v6

    .line 804
    .local v5, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_d4
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    .line 806
    .local v6, "Z2IsOne":Z
    if-eqz v6, :cond_e5

    .line 808
    move-object v7, v15

    .local v7, "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v8, v10

    .local v8, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v11

    move-object/from16 v33, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v33

    .local v21, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_f9

    .line 812
    .end local v7    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_e5
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 813
    .restart local v7    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 814
    .restart local v8    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v3

    .end local v3    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 815
    .local v3, "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    move-object/from16 v3, v23

    .line 818
    .local v3, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_f9
    move-object/from16 v23, v7

    .end local v7    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 819
    .local v7, "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v24, v4

    .end local v4    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 822
    .local v4, "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v25

    if-eqz v25, :cond_11b

    .line 824
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_116

    .line 827
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 831
    :cond_116
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 834
    :cond_11b
    move-object/from16 v25, v5

    .end local v5    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 835
    .local v5, "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v26, v10

    .end local v10    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 836
    .local v10, "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v27, v12

    .end local v12    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v27, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 838
    .local v12, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v28, v8

    .end local v8    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v28, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    move-object/from16 v29, v11

    .end local v11    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 839
    .local v8, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v4, v10, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 841
    .local v11, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v30, v7

    .line 842
    .local v30, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v16, :cond_158

    .line 844
    move-object/from16 v31, v3

    move-object/from16 v3, v30

    .end local v30    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v31, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    move-object/from16 v3, v30

    .end local v3    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v30    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_15c

    .line 842
    .end local v31    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_158
    move-object/from16 v31, v3

    move-object/from16 v3, v30

    .line 846
    .end local v30    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v31    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_15c
    if-nez v6, :cond_162

    .line 848
    invoke-virtual {v3, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 856
    :cond_162
    if-ne v3, v7, :cond_16c

    .line 858
    move-object/from16 v22, v5

    move-object v10, v3

    move-object/from16 v21, v8

    move-object/from16 v12, v22

    goto :goto_171

    .line 856
    :cond_16c
    move-object v10, v3

    move-object/from16 v21, v8

    move-object/from16 v12, v22

    .line 863
    .end local v3    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z2IsOne":Z
    .end local v7    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_171
    const/4 v3, 0x4

    if-ne v9, v3, :cond_185

    .line 866
    invoke-virtual {v0, v10, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 868
    .local v3, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    const/4 v6, 0x1

    aput-object v3, v4, v6

    move-object v3, v4

    .line 869
    .local v3, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v3

    goto :goto_18d

    .line 872
    .end local v3    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_185
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v3, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v10, v3, v5

    move-object/from16 v17, v3

    .line 875
    .local v17, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_18d
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object/from16 v3, v18

    move-object v4, v2

    move-object/from16 v5, v21

    move-object v6, v11

    move-object/from16 v7, v17

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v18

    .line 715
    .end local v14    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1IsOne":Z
    .end local v17    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_19d
    move-object/from16 v26, v10

    move-object/from16 v29, v11

    move-object/from16 v27, v12

    .end local v10    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v10, v3, v4

    .line 716
    .local v10, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v3, v4

    .line 718
    .local v11, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 719
    .local v12, "Z1IsOne":Z
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v14

    .line 721
    .local v14, "Z2IsOne":Z
    if-eqz v12, :cond_1b8

    move-object v3, v13

    goto :goto_1bc

    :cond_1b8
    invoke-virtual {v13, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :goto_1bc
    move-object v15, v3

    .line 722
    .local v15, "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v14, :cond_1c3

    move-object/from16 v3, v29

    move-object v8, v3

    goto :goto_1c9

    :cond_1c3
    move-object/from16 v8, v29

    .end local v29    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v8, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :goto_1c9
    move-object v7, v3

    .line 723
    .local v7, "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 724
    .local v6, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_1d4

    move-object/from16 v3, v27

    move-object v5, v3

    goto :goto_1da

    :cond_1d4
    move-object/from16 v5, v27

    .end local v27    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    :goto_1da
    move-object v4, v3

    .line 725
    .local v4, "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v3, v26

    if-eqz v14, :cond_1e2

    move-object/from16 v16, v3

    goto :goto_1e6

    .end local v26    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1e2
    invoke-virtual {v3, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    :goto_1e6
    move-object/from16 v19, v16

    .line 726
    .local v19, "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v9

    move-object/from16 v1, v19

    .end local v9    # "coord":I
    .end local v19    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "coord":I
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 729
    .local v9, "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_206

    .line 731
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_201

    .line 734
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 738
    :cond_201
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 742
    :cond_206
    if-eqz v12, :cond_20b

    move-object/from16 v19, v11

    goto :goto_214

    :cond_20b
    if-eqz v14, :cond_210

    move-object/from16 v19, v10

    goto :goto_214

    :cond_210
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    :goto_214
    move-object/from16 v20, v19

    .line 743
    .local v20, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v10

    .end local v10    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 744
    .local v10, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v21, v11

    .end local v11    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 745
    .local v11, "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v22, v12

    .end local v12    # "Z1IsOne":Z
    .local v22, "Z1IsOne":Z
    invoke-virtual {v10, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 746
    .local v12, "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v23, v1

    .end local v1    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v24, v10

    move-object/from16 v10, v20

    .end local v20    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    move-object/from16 v26, v3

    .end local v3    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v26    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 748
    .local v1, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 749
    .local v20, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v6, v7, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 750
    .local v25, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v27

    .line 752
    .local v27, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v28, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v17, 0x0

    aput-object v27, v3, v17

    move-object/from16 v17, v1

    .end local v1    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object/from16 v18, v9

    move-object/from16 v9, v26

    move-object/from16 v26, v3

    .end local v26    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v3, v28

    move-object/from16 v29, v4

    .end local v4    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v29, "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v4, v2

    move-object/from16 v30, v10

    move-object v10, v5

    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v30, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v5, v20

    move-object/from16 v31, v6

    .end local v6    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v31, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v25

    move-object/from16 v32, v7

    .end local v7    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v32, "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v7, v26

    move-object/from16 v26, v11

    move-object v11, v8

    .end local v8    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v28

    .line 692
    .end local v14    # "Z2IsOne":Z
    .end local v15    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "coord":I
    .end local v17    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "Z1IsOne":Z
    .end local v23    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v27    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "coord":I
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_281
    move/from16 v16, v9

    move-object v9, v10

    move-object v10, v12

    .end local v12    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "coord":I
    invoke-virtual {v10, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 694
    .local v3, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2a3

    .line 696
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_29e

    .line 699
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 703
    :cond_29e
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 706
    :cond_2a3
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 707
    .local v4, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 708
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v6, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 710
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v7, v2, v5, v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v7
.end method

.method protected blacklist calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .param p1, "Z"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1295
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1296
    .local v0, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_3b

    .line 1301
    :cond_15
    if-nez p2, :cond_1b

    .line 1303
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1306
    :cond_1b
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1307
    .local v1, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1308
    .local v2, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 1310
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    goto :goto_3a

    .line 1314
    :cond_36
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1316
    :goto_3a
    return-object v1

    .line 1298
    .end local v1    # "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3b
    :goto_3b
    return-object v0
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 653
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected blacklist doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6
    .param p1, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1272
    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1262
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1257
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6

    .line 1321
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    .line 1322
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_16

    .line 1325
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v0, v3

    aput-object v3, v2, v1

    .line 1327
    :cond_16
    return-object v0
.end method

.method public blacklist getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "index"    # I

    .line 658
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v1

    if-ne v0, v1, :cond_f

    .line 660
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 663
    :cond_f
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 10

    .line 1277
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1279
    return-object p0

    .line 1282
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 1283
    .local v0, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v7

    .line 1285
    .local v7, "coord":I
    if-eqz v7, :cond_25

    .line 1287
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v8

    .line 1290
    :cond_25
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected blacklist three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1252
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 19

    .line 1097
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1099
    return-object v0

    .line 1102
    :cond_9
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1103
    .local v1, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1105
    return-object v0

    .line 1108
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 1109
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v3

    .line 1111
    .local v3, "coord":I
    if-eqz v3, :cond_32

    const/4 v4, 0x4

    if-eq v3, v4, :cond_28

    .line 1144
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1139
    :cond_28
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 1115
    :cond_32
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1117
    .local v4, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1118
    .local v5, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1119
    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1120
    .local v7, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1122
    .local v8, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1123
    .local v9, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_6f

    .line 1125
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1128
    :cond_6f
    invoke-virtual {v9, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1129
    .local v10, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1130
    .local v11, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1131
    .local v12, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1133
    .local v13, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v12, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    invoke-virtual {v14, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1134
    .local v14, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1135
    .local v15, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v1

    .end local v1    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move/from16 v17, v3

    .end local v3    # "coord":I
    .local v17, "coord":I
    iget-boolean v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v1, v2, v14, v15, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public blacklist timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 20
    .param p1, "e"    # I

    .line 1151
    move-object/from16 v0, p0

    move/from16 v1, p1

    if-ltz v1, :cond_16c

    .line 1155
    if-eqz v1, :cond_16b

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_10

    goto/16 :goto_16b

    .line 1159
    :cond_10
    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    .line 1161
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1164
    :cond_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v9

    .line 1166
    .local v9, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1167
    .local v3, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1169
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1172
    :cond_29
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v10

    .line 1174
    .local v10, "coord":I
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1175
    .local v4, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1176
    .local v5, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v6, v6

    const/4 v7, 0x0

    if-ge v6, v2, :cond_40

    sget-object v6, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    goto :goto_44

    :cond_40
    iget-object v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v6, v6, v7

    .line 1178
    .local v6, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_44
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v8

    const-string v11, "unsupported coordinate system"

    const/4 v12, 0x4

    const/4 v13, 0x2

    if-nez v8, :cond_78

    .line 1180
    if-eqz v10, :cond_78

    if-eq v10, v2, :cond_67

    if-eq v10, v13, :cond_61

    if-ne v10, v12, :cond_5b

    .line 1194
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1195
    goto :goto_78

    .line 1197
    :cond_5b
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1191
    :cond_61
    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1192
    goto :goto_78

    .line 1185
    :cond_67
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1186
    .local v8, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1187
    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1188
    invoke-virtual {v0, v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1189
    nop

    .line 1201
    .end local v8    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_78
    :goto_78
    const/4 v8, 0x0

    move-object v14, v3

    move-object v15, v4

    move v3, v8

    move-object v8, v5

    .end local v4    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "i":I
    .local v8, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v15, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_7d
    if-ge v3, v1, :cond_f2

    .line 1203
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_8a

    .line 1205
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1208
    :cond_8a
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1209
    .local v4, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1210
    .local v5, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1211
    .local v7, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1212
    .local v12, "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1213
    .local v13, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1214
    .local v2, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1216
    .local v1, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v16

    if-nez v16, :cond_c0

    .line 1218
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1219
    move-object/from16 v16, v2

    .end local v2    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object v15, v2

    .end local v15    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c2

    .line 1216
    .end local v16    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c0
    move-object/from16 v16, v2

    .line 1222
    .end local v2    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v16    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_c2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v17, v4

    .end local v4    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1223
    invoke-virtual {v13, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1224
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_e4

    move-object v2, v7

    goto :goto_e8

    :cond_e4
    invoke-virtual {v7, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_e8
    move-object v6, v2

    .line 1201
    .end local v1    # "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, p1

    const/4 v2, 0x1

    const/4 v7, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x2

    goto :goto_7d

    .line 1227
    .end local v3    # "i":I
    :cond_f2
    if-eqz v10, :cond_14d

    const/4 v1, 0x1

    if-eq v10, v1, :cond_12d

    const/4 v2, 0x2

    if-eq v10, v2, :cond_119

    const/4 v3, 0x4

    if-ne v10, v3, :cond_113

    .line 1239
    new-instance v11, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    new-array v7, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v6, v7, v2

    aput-object v15, v7, v1

    iget-boolean v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v3, v11

    move-object v4, v9

    move-object v5, v8

    move-object v2, v6

    .end local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v14

    move-object v12, v8

    .end local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v11

    .line 1241
    .end local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_113
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1237
    :cond_119
    move-object v2, v6

    move-object v12, v8

    .end local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v3, 0x1

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v3, v1

    move-object v4, v9

    move-object v5, v12

    move-object v6, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1

    .line 1233
    .end local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_12d
    move-object v2, v6

    move-object v12, v8

    .end local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1234
    .end local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1235
    new-instance v11, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v3, 0x1

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v2, v7, v3

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object v3, v11

    move-object v4, v9

    move-object v5, v1

    move-object v6, v14

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v11

    .line 1230
    .end local v1    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_14d
    move-object v2, v6

    move-object v12, v8

    .end local v6    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "zInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .local v3, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1231
    .local v4, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {v12, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v14, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v5, v9, v6, v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v5

    .line 1157
    .end local v1    # "zInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v10    # "coord":I
    .end local v12    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_16b
    :goto_16b
    return-object v0

    .line 1153
    :cond_16c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'e\' cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 28

    .line 888
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 890
    return-object v0

    .line 893
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 895
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 896
    .local v8, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 898
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 901
    :cond_1a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v9

    .line 903
    .local v9, "coord":I
    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 905
    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v9, :cond_1c7

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v9, v3, :cond_11b

    const/4 v4, 0x2

    if-eq v9, v4, :cond_39

    const/4 v2, 0x4

    if-ne v9, v2, :cond_31

    .line 1008
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v2

    return-object v2

    .line 1013
    :cond_31
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unsupported coordinate system"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 949
    :cond_39
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v11, v4, v2

    .line 951
    .local v11, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 953
    .local v12, "Z1IsOne":Z
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 954
    .local v13, "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 956
    .local v14, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 957
    .local v15, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 960
    .local v7, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v4

    const-wide/16 v5, 0x3

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 962
    if-eqz v12, :cond_65

    move-object v4, v11

    goto :goto_69

    :cond_65
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 963
    .local v4, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_69
    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 964
    .local v5, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 965
    .local v4, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v6, v4

    goto :goto_cd

    .line 968
    .end local v4    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_83
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 969
    .local v4, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 970
    .restart local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_94

    .line 972
    invoke-virtual {v5, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    move-object/from16 v18, v4

    goto :goto_c4

    .line 974
    :cond_94
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v6

    if-nez v6, :cond_c2

    .line 976
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 977
    .local v6, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 978
    .local v2, "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    move-object/from16 v18, v4

    .end local v4    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_b8

    .line 980
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v3, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c4

    .line 984
    .end local v3    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_b8
    invoke-virtual {v2, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v5, v3

    .end local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v3    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c4

    .line 974
    .end local v2    # "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v4    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c2
    move-object/from16 v18, v4

    .line 988
    .end local v4    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v18    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_c4
    invoke-virtual {v10, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object v6, v4

    .line 991
    .end local v18    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v6, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_cd
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 992
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 994
    .local v18, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 995
    .local v2, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v12, :cond_f6

    .line 997
    invoke-virtual {v2, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v19, v2

    goto :goto_f8

    .line 995
    :cond_f6
    move-object/from16 v19, v2

    .line 1003
    .end local v2    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_f8
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x1

    new-array v3, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v19, v3, v2

    iget-boolean v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v16, v2

    move-object/from16 v2, v20

    move-object/from16 v17, v3

    move-object v3, v1

    move-object/from16 v21, v4

    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v21, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v22, v5

    .end local v5    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v22, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v5, v18

    move-object/from16 v23, v6

    .end local v6    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v17

    move-object/from16 v17, v7

    .end local v7    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v20

    .line 919
    .end local v11    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_11b
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v11, v2, v3

    .line 921
    .restart local v11    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v12

    .line 924
    .restart local v12    # "Z1IsOne":Z
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 925
    .local v2, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_138

    if-nez v12, :cond_138

    .line 927
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 929
    :cond_138
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 931
    .end local v2    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v13, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_148

    move-object v2, v8

    goto :goto_14c

    :cond_148
    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_14c
    move-object v14, v2

    .line 932
    .local v14, "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_154

    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_158

    :cond_154
    invoke-virtual {v14, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_158
    move-object v15, v2

    .line 933
    .local v15, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 934
    .local v7, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 935
    .local v6, "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 937
    .local v5, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 938
    .local v4, "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 939
    .local v18, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 940
    .local v3, "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v19, v5

    .end local v5    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 941
    .local v20, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v12, :cond_196

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    goto :goto_19a

    :cond_196
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    :goto_19a
    move-object v5, v2

    .line 942
    .local v5, "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 944
    .local v21, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v22, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/16 v16, 0x0

    aput-object v21, v2, v16

    move-object/from16 v16, v7

    .end local v7    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v16, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object/from16 v17, v2

    move-object/from16 v2, v22

    move-object/from16 v23, v3

    .end local v3    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v3, v1

    move-object/from16 v24, v4

    .end local v4    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v24, "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v4, v18

    move-object/from16 v25, v5

    .end local v5    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v25, "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v5, v20

    move-object/from16 v26, v6

    .end local v6    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v26, "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v6, v17

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v22

    .line 909
    .end local v11    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z1IsOne":Z
    .end local v13    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1c7
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 910
    .local v2, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 911
    .local v3, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 912
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 914
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v6, v1, v4, v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v6
.end method

.method protected blacklist twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    .registers 26
    .param p1, "calculateW"    # Z

    .line 1332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v2, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    .local v3, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1334
    .local v5, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1335
    .local v6, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1336
    .local v7, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1337
    .local v8, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1338
    .local v9, "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1339
    .local v10, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1340
    .local v11, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1341
    .local v12, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1342
    .local v15, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v13, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1343
    .local v19, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_56

    invoke-virtual {v15, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    goto :goto_57

    :cond_56
    const/4 v13, 0x0

    :goto_57
    move-object/from16 v20, v13

    .line 1344
    .local v20, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v13

    if-eqz v13, :cond_61

    move-object v13, v8

    goto :goto_65

    :cond_61
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    :goto_65
    move-object/from16 v21, v13

    .line 1346
    .local v21, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v22, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v14

    const/4 v13, 0x2

    new-array v13, v13, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aput-object v21, v13, v4

    const/4 v4, 0x1

    aput-object v20, v13, v4

    iget-boolean v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move-object/from16 v17, v13

    move-object/from16 v13, v22

    move-object/from16 v23, v15

    .end local v15    # "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v23, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v15, v11

    move-object/from16 v16, v19

    move/from16 v18, v4

    invoke-direct/range {v13 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v22
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 22
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 1020
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    .line 1022
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1024
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1026
    return-object v1

    .line 1028
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 1030
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1033
    :cond_1d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1034
    .local v2, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1036
    return-object v1

    .line 1039
    :cond_26
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1040
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v4

    .line 1042
    .local v4, "coord":I
    if-eqz v4, :cond_46

    const/4 v5, 0x4

    if-eq v4, v5, :cond_3c

    .line 1090
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 1086
    :cond_3c
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 1046
    :cond_46
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1047
    .local v5, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v6, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v6, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v7, v1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1049
    .local v7, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .local v8, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1051
    .local v9, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_66

    .line 1053
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v10

    if-eqz v10, :cond_65

    .line 1056
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    return-object v10

    .line 1060
    :cond_65
    return-object v0

    .line 1068
    :cond_66
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1069
    .local v11, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1070
    .local v12, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v13

    if-eqz v13, :cond_89

    .line 1072
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    return-object v13

    .line 1075
    :cond_89
    invoke-virtual {v12, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1076
    .local v13, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1077
    .local v14, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1078
    .local v15, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1079
    .local v1, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move/from16 v16, v4

    .end local v4    # "coord":I
    .local v16, "coord":I
    invoke-virtual {v1, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    move-object/from16 v17, v7

    .end local v7    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v17, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1080
    .local v4, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 1082
    .local v7, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v1

    .end local v1    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v18, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v19, v2

    .end local v2    # "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v19, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-boolean v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v1, v3, v4, v7, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected blacklist two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1247
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
