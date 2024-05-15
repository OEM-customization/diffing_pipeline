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
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 615
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 616
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 8
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 630
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 632
    if-nez p2, :cond_15

    move v2, v0

    :goto_8
    if-nez p3, :cond_17

    :goto_a
    if-eq v2, v0, :cond_19

    .line 634
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move v2, v1

    .line 632
    goto :goto_8

    :cond_17
    move v0, v1

    goto :goto_a

    .line 637
    :cond_19
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 638
    return-void
.end method

.method constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 6
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "withCompression"    # Z

    .prologue
    .line 642
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 644
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    .line 645
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 54
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 667
    return-object p1

    .line 669
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 671
    return-object p0

    .line 673
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_19

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 678
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 679
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v38

    .line 681
    .local v38, "coord":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v24, v0

    .local v24, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v26, v0

    .line 682
    .local v26, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v25, v0

    .local v25, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v27, v0

    .line 684
    .local v27, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v38, :pswitch_data_2d6

    .line 876
    :pswitch_3c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v8, "unsupported coordinate system"

    invoke-direct {v3, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 688
    :pswitch_45
    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    .local v39, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 690
    .local v40, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 692
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_66

    .line 695
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 699
    :cond_66
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 702
    :cond_6b
    move-object/from16 v0, v40

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v41

    .line 703
    .local v41, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v41 .. v41}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 704
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 706
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v3, v4, v5, v6, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v3

    .line 711
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v41    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_9f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 712
    .local v28, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 714
    .local v32, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v30

    .line 715
    .local v30, "Z1IsOne":Z
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v34

    .line 717
    .local v34, "Z2IsOne":Z
    if-eqz v30, :cond_de

    move-object/from16 v43, v27

    .line 718
    .local v43, "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_b9
    if-eqz v34, :cond_e3

    move-object/from16 v44, v26

    .line 719
    .local v44, "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_bd
    invoke-virtual/range {v43 .. v44}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v42

    .line 720
    .local v42, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v30, :cond_ec

    move-object/from16 v46, v25

    .line 721
    .local v46, "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_c5
    if-eqz v34, :cond_f5

    move-object/from16 v47, v24

    .line 722
    .local v47, "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_c9
    invoke-virtual/range {v46 .. v47}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v45

    .line 725
    .local v45, "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_103

    .line 727
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_fe

    .line 730
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 717
    .end local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_de
    invoke-virtual/range {v27 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v43

    .restart local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_b9

    .line 718
    :cond_e3
    move-object/from16 v0, v26

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v44

    .restart local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_bd

    .line 720
    .restart local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_ec
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v46

    .restart local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c5

    .line 721
    :cond_f5
    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v47

    .restart local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_c9

    .line 734
    .restart local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_fe
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 738
    :cond_103
    if-eqz v30, :cond_165

    move-object/from16 v51, v32

    .line 739
    .local v51, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_107
    invoke-virtual/range {v45 .. v45}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v49

    .line 740
    .local v49, "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v48

    .line 741
    .local v48, "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v49

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v50

    .line 742
    .local v50, "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v42 .. v42}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v51

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v48

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 744
    .local v9, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v45

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 745
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v50

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v42

    move-object/from16 v1, v44

    move-object/from16 v2, v48

    invoke-virtual {v3, v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 746
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v48

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 748
    .local v36, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v8, 0x1

    new-array v7, v8, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v36, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v3

    .line 738
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v48    # "vCubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v49    # "vSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v50    # "vSquaredV2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_165
    if-eqz v34, :cond_16a

    move-object/from16 v51, v28

    .restart local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_107

    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_16a
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v51

    .restart local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_107

    .line 754
    .end local v28    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "Z1IsOne":Z
    .end local v32    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v42    # "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v43    # "u1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v44    # "u2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v45    # "v":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v46    # "v1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v47    # "v2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v51    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_173
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v28, v3, v8

    .line 755
    .restart local v28    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v32, v3, v8

    .line 757
    .restart local v32    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v30

    .line 759
    .restart local v30    # "Z1IsOne":Z
    const/16 v37, 0x0

    .line 761
    .local v37, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_217

    move-object/from16 v0, v28

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_217

    .line 765
    invoke-virtual/range {v24 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v39

    .restart local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v27}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v40

    .line 766
    .restart local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1b1

    .line 768
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1ac

    .line 770
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 772
    :cond_1ac
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 775
    :cond_1b1
    invoke-virtual/range {v39 .. v39}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 776
    .local v11, "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 777
    .local v22, "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v21 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v26

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 779
    .local v10, "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v40 .. v40}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 780
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 781
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v39

    .line 783
    .restart local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 859
    .end local v10    # "A1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "C":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "W2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v39    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v40    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1f5
    :goto_1f5
    const/4 v3, 0x4

    move/from16 v0, v38

    if-ne v0, v3, :cond_2cd

    .line 862
    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 864
    .local v23, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v3, 0x2

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    const/4 v3, 0x1

    aput-object v23, v7, v3

    .line 871
    .end local v23    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_20d
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v3

    .line 788
    .end local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_217
    if-eqz v30, :cond_244

    .line 790
    move-object/from16 v31, v28

    .local v31, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v19, v25

    .local v19, "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v17, v27

    .line 800
    .local v17, "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_21f
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v34

    .line 802
    .restart local v34    # "Z2IsOne":Z
    if-eqz v34, :cond_261

    .line 804
    move-object/from16 v35, v32

    .local v35, "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v18, v24

    .local v18, "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v16, v26

    .line 814
    .local v16, "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_22b
    invoke-virtual/range {v18 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 815
    .local v13, "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 818
    .local v15, "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_283

    .line 820
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_27e

    .line 823
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 794
    .end local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_244
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 795
    .restart local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 796
    .restart local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v31

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 797
    .local v29, "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .restart local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_21f

    .line 808
    .end local v29    # "Z1Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v34    # "Z2IsOne":Z
    :cond_261
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v35

    .line 809
    .restart local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 810
    .restart local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v35

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v33

    .line 811
    .local v33, "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v33

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .restart local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_22b

    .line 827
    .end local v33    # "Z2Cubed":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_27e
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 830
    :cond_283
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 831
    .local v14, "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 832
    .local v12, "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 834
    .local v20, "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 835
    .restart local v5    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v15, v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiplyMinusProduct(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 837
    .restart local v6    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v36, v13

    .line 838
    .restart local v36    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v30, :cond_2bb

    .line 840
    move-object/from16 v0, v28

    invoke-virtual {v13, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 842
    :cond_2bb
    if-nez v34, :cond_2c5

    .line 844
    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v36

    .line 852
    :cond_2c5
    move-object/from16 v0, v36

    if-ne v0, v13, :cond_1f5

    .line 854
    move-object/from16 v37, v14

    .local v37, "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_1f5

    .line 868
    .end local v12    # "G":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "H":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "HSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "S1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "S2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "U1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "U2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "V":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v34    # "Z2IsOne":Z
    .end local v35    # "Z2Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v37    # "Z3Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2cd
    const/4 v3, 0x1

    new-array v7, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v36, v7, v3

    .restart local v7    # "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_20d

    .line 684
    nop

    :pswitch_data_2d6
    .packed-switch 0x0
        :pswitch_45
        :pswitch_9f
        :pswitch_173
        :pswitch_3c
        :pswitch_173
    .end packed-switch
.end method

.method protected calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8
    .param p1, "Z"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "ZSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1291
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 1292
    .local v1, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v3

    if-nez v3, :cond_14

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1294
    :cond_14
    return-object v1

    .line 1297
    :cond_15
    if-nez p2, :cond_1b

    .line 1299
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p2

    .line 1302
    :cond_1b
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1303
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1304
    .local v2, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v4

    if-ge v3, v4, :cond_36

    .line 1306
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 1312
    :goto_35
    return-object v0

    .line 1310
    :cond_36
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    goto :goto_35
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .prologue
    .line 649
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6
    .param p1, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1268
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

.method protected eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1258
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1253
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1317
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v0, v1, v4

    .line 1318
    .local v0, "W":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v0, :cond_15

    .line 1321
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {p0, v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v1, v4

    .line 1323
    :cond_15
    return-object v0
.end method

.method public getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 654
    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurveCoordinateSystem()I

    move-result v0

    const/4 v1, 0x4

    if-ne v1, v0, :cond_f

    .line 656
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 659
    :cond_f
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .prologue
    .line 1273
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1275
    return-object p0

    .line 1278
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 1279
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v6

    .line 1281
    .local v6, "coord":I
    if-eqz v6, :cond_23

    .line 1283
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0

    .line 1286
    :cond_23
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1248
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 20

    .prologue
    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 1095
    return-object p0

    .line 1098
    :cond_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1099
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 1101
    return-object p0

    .line 1104
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v15

    .line 1105
    .local v15, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 1107
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_e0

    .line 1140
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 1111
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1113
    .local v7, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1114
    .local v13, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .line 1115
    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1116
    .local v12, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1118
    .local v9, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1119
    .local v16, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-eqz v17, :cond_75

    .line 1121
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 1124
    :cond_75
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1125
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1126
    .local v3, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1127
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1129
    .local v5, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1130
    .local v8, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1131
    .local v11, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v17, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v0, v15, v8, v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v17

    .line 1135
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_cd
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v17

    return-object v17

    .line 1107
    :sswitch_data_e0
    .sparse-switch
        0x0 -> :sswitch_2a
        0x4 -> :sswitch_cd
    .end sparse-switch
.end method

.method public timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 26
    .param p1, "e"    # I

    .prologue
    .line 1147
    if-gez p1, :cond_b

    .line 1149
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "\'e\' cannot be negative"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1151
    :cond_b
    if-eqz p1, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1153
    :cond_13
    return-object p0

    .line 1155
    :cond_14
    const/4 v2, 0x1

    move/from16 v0, p1

    if-ne v0, v2, :cond_1e

    .line 1157
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1160
    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 1162
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1163
    .local v5, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 1165
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1168
    :cond_31
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v18

    .line 1170
    .local v18, "coord":I
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1171
    .local v10, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1172
    .local v4, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v2, v2

    const/4 v6, 0x1

    if-ge v2, v6, :cond_5d

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1174
    .local v12, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_4b
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_77

    .line 1176
    packed-switch v18, :pswitch_data_178

    .line 1193
    :pswitch_54
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1172
    .end local v12    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v12, v2, v6

    .restart local v12    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_4b

    .line 1181
    :pswitch_65
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1182
    .local v13, "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1183
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1184
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1197
    .end local v13    # "Z1Sq":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_77
    :goto_77
    :pswitch_77
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_79
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_103

    .line 1199
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_97

    .line 1201
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 1187
    .end local v19    # "i":I
    :pswitch_8a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->calculateJacobianModifiedW(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    goto :goto_77

    .line 1190
    :pswitch_92
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    goto :goto_77

    .line 1204
    .restart local v19    # "i":I
    :cond_97
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1205
    .local v11, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1206
    .local v8, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 1207
    .local v14, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 1208
    .local v15, "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1209
    .local v9, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1210
    .local v16, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1212
    .local v17, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_d7

    .line 1214
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1215
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1218
    :cond_d7
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1219
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1220
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_fe

    move-object v12, v14

    .line 1197
    :goto_fa
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_79

    .line 1220
    :cond_fe
    invoke-virtual {v14, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    goto :goto_fa

    .line 1223
    .end local v8    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v14    # "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_103
    packed-switch v18, :pswitch_data_186

    .line 1237
    :pswitch_106
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1226
    :pswitch_10f
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .local v20, "zInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .local v21, "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 1227
    .local v22, "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-direct {v2, v3, v6, v7, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1229
    .end local v20    # "zInv":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "zInv2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "zInv3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_139
    invoke-virtual {v4, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1230
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 1231
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1233
    :pswitch_155
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1235
    :pswitch_165
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v12, v6, v7

    const/4 v7, 0x1

    aput-object v10, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1176
    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_77
        :pswitch_65
        :pswitch_8a
        :pswitch_54
        :pswitch_92
    .end packed-switch

    .line 1223
    :pswitch_data_186
    .packed-switch 0x0
        :pswitch_10f
        :pswitch_139
        :pswitch_155
        :pswitch_106
        :pswitch_165
    .end packed-switch
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 34

    .prologue
    .line 884
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 886
    return-object p0

    .line 889
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 891
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 892
    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 894
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 897
    :cond_1a
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v27

    .line 899
    .local v27, "coord":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 901
    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    packed-switch v27, :pswitch_data_22a

    .line 1009
    :pswitch_25
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v2, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 905
    :pswitch_2e
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 906
    .local v13, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v28

    .line 907
    .local v28, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v28 .. v28}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 908
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v28

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 910
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 915
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v28    # "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_74
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 917
    .local v16, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 920
    .local v17, "Z1IsOne":Z
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 921
    .local v32, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_97

    xor-int/lit8 v2, v17, 0x1

    if-eqz v2, :cond_97

    .line 923
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 925
    :cond_97
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v32

    .line 927
    if-eqz v17, :cond_129

    move-object/from16 v30, v14

    .line 928
    .local v30, "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_ab
    if-eqz v17, :cond_131

    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v31

    .line 929
    .local v31, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_b1
    move-object/from16 v0, v31

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 930
    .local v8, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    .line 931
    .local v23, "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v32 .. v32}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v29

    .line 933
    .local v29, "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v21

    .line 934
    .local v21, "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 935
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v22

    .line 936
    .local v22, "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v23

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v32

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual/range {v22 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 937
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_139

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    .line 938
    .local v24, "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_10b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v30

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 940
    .local v20, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 927
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v21    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_129
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v30

    .restart local v30    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_ab

    .line 928
    :cond_131
    move-object/from16 v0, v30

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v31

    .restart local v31    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto/16 :goto_b1

    .line 937
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v21    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v22    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v23    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v29    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_139
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v24

    .restart local v24    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_10b

    .line 945
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v21    # "_2s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v22    # "_2t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v23    # "_4B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v24    # "_4sSquared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v29    # "h":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v30    # "s":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v31    # "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v32    # "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_13e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aget-object v16, v2, v6

    .line 947
    .restart local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v17

    .line 949
    .restart local v17    # "Z1IsOne":Z
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    .line 950
    .local v15, "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 952
    .local v11, "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v25

    .line 953
    .local v25, "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v26

    .line 956
    .local v26, "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d2

    .line 958
    if-eqz v17, :cond_1cd

    move-object/from16 v19, v16

    .line 959
    .local v19, "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_16d
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 960
    .local v9, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v15, v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 987
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_18d
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 988
    .restart local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->eight(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 990
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 991
    .restart local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v17, :cond_1bd

    .line 993
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 999
    :cond_1bd
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    const/4 v6, 0x1

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v20, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 958
    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v20    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1cd
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_16d

    .line 964
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1d2
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 965
    .restart local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 966
    .restart local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v17, :cond_1ef

    .line 968
    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 984
    :cond_1e4
    :goto_1e4
    invoke-virtual {v12, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .restart local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_18d

    .line 970
    .end local v10    # "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1ef
    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v2

    if-nez v2, :cond_1e4

    .line 972
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 973
    .restart local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 974
    .local v18, "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v26 .. v26}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v2

    invoke-virtual/range {v25 .. v25}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->bitLength()I

    move-result v6

    if-ge v2, v6, :cond_214

    .line 976
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_1e4

    .line 980
    :cond_214
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v9, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    goto :goto_1e4

    .line 1004
    .end local v9    # "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v11    # "T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "Z1IsOne":Z
    .end local v18    # "Z1Pow4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v19    # "Z1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v25    # "a4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v26    # "a4Neg":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_221
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v2

    return-object v2

    .line 901
    nop

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_74
        :pswitch_13e
        :pswitch_25
        :pswitch_221
    .end packed-switch
.end method

.method protected twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;
    .registers 23
    .param p1, "calculateW"    # Z

    .prologue
    .line 1328
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v14, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v15, v2, v3

    .local v15, "Z1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getJacobianModifiedW()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1330
    .local v10, "W1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1331
    .local v13, "X1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 1332
    .local v8, "M":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .line 1333
    .local v17, "_2Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1334
    .local v18, "_2Y1Squared":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v18

    invoke-virtual {v12, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1335
    .local v9, "S":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1336
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    .line 1337
    .local v19, "_4T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    .line 1338
    .local v20, "_8T":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1339
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz p1, :cond_8e

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    .line 1340
    :goto_6f
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v2

    if-eqz v2, :cond_90

    move-object/from16 v16, v17

    .line 1342
    .local v16, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_77
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    const/4 v7, 0x1

    aput-object v11, v6, v7

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2

    .line 1339
    .end local v16    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8e
    const/4 v11, 0x0

    .local v11, "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_6f

    .line 1340
    .end local v11    # "W3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_90
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .restart local v16    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_77
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 23
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 1016
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_b

    .line 1018
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    return-object v19

    .line 1020
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->isInfinity()Z

    move-result v19

    if-eqz v19, :cond_12

    .line 1022
    return-object p1

    .line 1024
    :cond_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v19

    if-eqz v19, :cond_1d

    .line 1026
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    return-object v19

    .line 1029
    :cond_1d
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1030
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_28

    .line 1032
    return-object p1

    .line 1035
    :cond_28
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v15

    .line 1036
    .local v15, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v14

    .line 1038
    .local v14, "coord":I
    sparse-switch v14, :sswitch_data_10c

    .line 1086
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    return-object v19

    .line 1042
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1043
    .local v7, "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .local v8, "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1045
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v17

    .local v17, "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v12, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    .line 1047
    .local v18, "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_66

    .line 1049
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_65

    .line 1052
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    return-object v19

    .line 1056
    :cond_65
    return-object p0

    .line 1064
    :cond_66
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v18 .. v18}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .line 1065
    .local v10, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 1066
    .local v16, "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v19

    if-eqz v19, :cond_91

    .line 1068
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    return-object v19

    .line 1071
    :cond_91
    invoke-virtual/range {v16 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 1072
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 1073
    .local v3, "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 1074
    .local v4, "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 1075
    .local v5, "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    .line 1076
    .local v9, "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 1078
    .local v13, "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v19, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->withCompression:Z

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v15, v9, v13, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v19

    .line 1082
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "I":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v4    # "L1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "L2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "X1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "X2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v9    # "X4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v10    # "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "Y2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v13    # "Y4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v16    # "d":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v17    # "dx":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v18    # "dy":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :sswitch_f9
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->twiceJacobianModified(Z)Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v19

    return-object v19

    .line 1038
    :sswitch_data_10c
    .sparse-switch
        0x0 -> :sswitch_40
        0x4 -> :sswitch_f9
    .end sparse-switch
.end method

.method protected two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 1243
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
