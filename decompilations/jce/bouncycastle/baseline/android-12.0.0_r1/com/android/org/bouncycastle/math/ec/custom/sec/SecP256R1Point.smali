.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256R1Point.java"


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 18
    return-void
.end method

.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 22
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 23
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 33
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 34
    return-object v1

    .line 36
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 38
    return-object v0

    .line 40
    :cond_12
    if-ne v0, v1, :cond_19

    .line 42
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 45
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 47
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .local v3, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 48
    .local v4, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    check-cast v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .local v5, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    check-cast v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 50
    .local v6, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    check-cast v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 51
    .local v7, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 54
    .local v9, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v10

    .line 55
    .local v10, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    .line 56
    .local v11, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 57
    .local v12, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v13

    .line 59
    .local v13, "t4":[I
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    move-result v14

    .line 61
    .local v14, "Z1IsOne":Z
    if-eqz v14, :cond_59

    .line 63
    iget-object v15, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 64
    .local v15, "U2":[I
    iget-object v8, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .local v8, "S2":[I
    goto :goto_6f

    .line 68
    .end local v8    # "S2":[I
    .end local v15    # "U2":[I
    :cond_59
    move-object v8, v12

    .line 69
    .restart local v8    # "S2":[I
    iget-object v15, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v15, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 71
    move-object v15, v11

    .line 72
    .restart local v15    # "U2":[I
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v0, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 74
    iget-object v0, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 75
    iget-object v0, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 78
    :goto_6f
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    move-result v0

    .line 80
    .local v0, "Z2IsOne":Z
    if-eqz v0, :cond_85

    .line 82
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 83
    .local v1, "U1":[I
    move-object/from16 v17, v1

    .end local v1    # "U1":[I
    .local v17, "U1":[I
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v18, v6

    move-object/from16 v30, v5

    move-object v5, v1

    move-object/from16 v1, v17

    move-object/from16 v17, v30

    .local v1, "S1":[I
    goto :goto_a4

    .line 87
    .end local v1    # "S1":[I
    .end local v17    # "U1":[I
    :cond_85
    move-object v1, v13

    .line 88
    .restart local v1    # "S1":[I
    move-object/from16 v17, v5

    .end local v5    # "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v17, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v5, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 90
    move-object v5, v10

    .line 91
    .local v5, "U1":[I
    move-object/from16 v18, v6

    .end local v6    # "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v18, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v6, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 93
    iget-object v6, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 94
    iget-object v6, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v6, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    move-object/from16 v30, v5

    move-object v5, v1

    move-object/from16 v1, v30

    .line 97
    .local v1, "U1":[I
    .local v5, "S1":[I
    :goto_a4
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 98
    .local v6, "H":[I
    invoke-static {v1, v15, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 100
    move-object/from16 v19, v11

    .line 101
    .local v19, "R":[I
    move-object/from16 v20, v3

    move-object/from16 v3, v19

    .end local v19    # "R":[I
    .local v3, "R":[I
    .local v20, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {v5, v8, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 104
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v19

    if-eqz v19, :cond_ca

    .line 106
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v16

    if-eqz v16, :cond_c5

    .line 109
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 113
    :cond_c5
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v16

    return-object v16

    .line 116
    :cond_ca
    move-object/from16 v19, v12

    .line 117
    .local v19, "HSquared":[I
    move-object/from16 v21, v4

    move-object/from16 v4, v19

    .end local v19    # "HSquared":[I
    .local v4, "HSquared":[I
    .local v21, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 119
    move-object/from16 v19, v8

    .end local v8    # "S2":[I
    .local v19, "S2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 120
    .local v8, "G":[I
    invoke-static {v4, v6, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 122
    move-object/from16 v22, v12

    .line 123
    .local v22, "V":[I
    move-object/from16 v23, v11

    move-object/from16 v11, v22

    .end local v22    # "V":[I
    .local v11, "V":[I
    .local v23, "t2":[I
    invoke-static {v4, v1, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 125
    invoke-static {v8, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->negate([I[I)V

    .line 126
    invoke-static {v5, v8, v10}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 128
    move-object/from16 v22, v1

    .end local v1    # "U1":[I
    .local v22, "U1":[I
    invoke-static {v11, v11, v8}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v1

    .line 129
    .local v1, "c":I
    invoke-static {v1, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 131
    move/from16 v24, v1

    .end local v1    # "c":I
    .local v24, "c":I
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 132
    .local v1, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    move-object/from16 v25, v4

    .end local v4    # "HSquared":[I
    .local v25, "HSquared":[I
    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 133
    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v26, v5

    .end local v5    # "S1":[I
    .local v26, "S1":[I
    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v4, v8, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 135
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v4, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 136
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v5, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v27, v8

    .end local v8    # "G":[I
    .local v27, "G":[I
    iget-object v8, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v11, v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 137
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v3, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiplyAddToExt([I[I[I)V

    .line 138
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v10, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 140
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 141
    .local v5, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    if-nez v14, :cond_138

    .line 143
    iget-object v8, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "R":[I
    .local v28, "R":[I
    iget-object v3, v7, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v29, v6

    .end local v6    # "H":[I
    .local v29, "H":[I
    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v3, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    goto :goto_13c

    .line 141
    .end local v28    # "R":[I
    .end local v29    # "H":[I
    .restart local v3    # "R":[I
    .restart local v6    # "H":[I
    :cond_138
    move-object/from16 v28, v3

    move-object/from16 v29, v6

    .line 145
    .end local v3    # "R":[I
    .end local v6    # "H":[I
    .restart local v28    # "R":[I
    .restart local v29    # "H":[I
    :goto_13c
    if-nez v0, :cond_147

    .line 147
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v6, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v8, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v3, v6, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 150
    :cond_147
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v5, v3, v6

    .line 152
    .local v3, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    invoke-direct {v6, v2, v1, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v6
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 27
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 6

    .line 264
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 266
    return-object p0

    .line 269
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 253
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 259
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 255
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 20

    .line 157
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 159
    return-object v0

    .line 162
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 164
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 165
    .local v2, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 167
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 170
    :cond_1c
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .local v3, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    check-cast v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 173
    .local v4, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 174
    .local v6, "t1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 176
    .local v7, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 177
    .local v8, "Y1Squared":[I
    iget-object v9, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 179
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 180
    .local v9, "T":[I
    invoke-static {v8, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 182
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->isOne()Z

    move-result v10

    .line 184
    .local v10, "Z1IsOne":Z
    iget-object v11, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 185
    .local v11, "Z1Squared":[I
    if-nez v10, :cond_4d

    .line 187
    move-object v11, v7

    .line 188
    iget-object v12, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v12, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 191
    :cond_4d
    iget-object v12, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v12, v11, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 193
    move-object v12, v7

    .line 194
    .local v12, "M":[I
    iget-object v13, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v13, v11, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->add([I[I[I)V

    .line 195
    invoke-static {v12, v6, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 196
    invoke-static {v12, v12, v12}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v13

    .line 197
    .local v13, "c":I
    invoke-static {v13, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 199
    move-object v14, v8

    .line 200
    .local v14, "S":[I
    iget-object v15, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v8, v15, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 201
    const/4 v15, 0x2

    const/16 v0, 0x8

    invoke-static {v0, v14, v15, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v13

    .line 202
    invoke-static {v13, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 204
    const/4 v15, 0x3

    invoke-static {v0, v9, v15, v5, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v0

    .line 205
    .end local v13    # "c":I
    .local v0, "c":I
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 207
    new-instance v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v13, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 208
    .local v13, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v15, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v12, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 209
    iget-object v15, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v15, v14, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 210
    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v15, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v5, v14, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 212
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v5, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 213
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v15, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move/from16 v16, v0

    .end local v0    # "c":I
    .local v16, "c":I
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v14, v15, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 214
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v15, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v12, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 215
    iget-object v0, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v15, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v6, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 217
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v0, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    .line 218
    .local v0, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v15, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v17, v2

    .end local v2    # "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v17, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v15, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->twice([I[I)V

    .line 219
    if-nez v10, :cond_ca

    .line 221
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v15, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object/from16 v18, v3

    .end local v3    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .local v18, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v2, v15, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    goto :goto_cc

    .line 219
    .end local v18    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .restart local v3    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    :cond_ca
    move-object/from16 v18, v3

    .line 224
    .end local v3    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    .restart local v18    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    :goto_cc
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v15, 0x0

    aput-object v0, v3, v15

    invoke-direct {v2, v1, v13, v5, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v2
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 229
    if-ne p0, p1, :cond_7

    .line 231
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 233
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 235
    return-object p1

    .line 237
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 239
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 242
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 243
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 245
    return-object p1

    .line 248
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
