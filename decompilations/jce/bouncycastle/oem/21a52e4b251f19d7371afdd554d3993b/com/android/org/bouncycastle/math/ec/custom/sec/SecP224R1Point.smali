.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP224R1Point.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 8
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 51
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

    .line 56
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    .line 57
    return-void

    .line 53
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

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 63
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    .line 64
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 37
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 73
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 75
    return-object v1

    .line 77
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 79
    return-object v0

    .line 81
    :cond_12
    if-ne v0, v1, :cond_19

    .line 83
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 86
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 88
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v3

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v10, v3

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 89
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 91
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v13, v3

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 92
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 95
    .local v14, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v15

    .line 96
    .local v15, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v16

    .line 97
    .local v16, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v17

    .line 98
    .local v17, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v8

    .line 100
    .local v8, "t4":[I
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v18

    .line 102
    .local v18, "Z1IsOne":Z
    if-eqz v18, :cond_60

    .line 104
    iget-object v3, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 105
    .local v3, "U2":[I
    iget-object v5, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object v6, v3

    .local v5, "S2":[I
    goto :goto_79

    .line 109
    .end local v3    # "U2":[I
    .end local v5    # "S2":[I
    :cond_60
    move-object/from16 v5, v17

    .line 110
    .restart local v5    # "S2":[I
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 112
    move-object/from16 v3, v16

    .line 113
    .restart local v3    # "U2":[I
    iget-object v6, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v5, v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 115
    iget-object v6, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v5, v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 116
    iget-object v6, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v5, v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    move-object v6, v3

    .line 119
    .end local v3    # "U2":[I
    .local v6, "U2":[I
    :goto_79
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v19

    .line 121
    .local v19, "Z2IsOne":Z
    if-eqz v19, :cond_86

    .line 123
    iget-object v3, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 124
    .local v3, "U1":[I
    iget-object v7, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object v4, v3

    move-object v3, v7

    .local v7, "S1":[I
    goto :goto_9e

    .line 128
    .end local v3    # "U1":[I
    .end local v7    # "S1":[I
    :cond_86
    move-object v7, v8

    .line 129
    .restart local v7    # "S1":[I
    iget-object v3, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 131
    move-object v3, v15

    .line 132
    .restart local v3    # "U1":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 134
    iget-object v4, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 135
    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    move-object v4, v3

    move-object v3, v7

    .line 138
    .end local v7    # "S1":[I
    .local v3, "S1":[I
    .local v4, "U1":[I
    :goto_9e
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 139
    .local v7, "H":[I
    invoke-static {v4, v6, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 141
    move-object/from16 v21, v16

    .line 142
    .local v21, "R":[I
    move-object/from16 v1, v21

    .end local v21    # "R":[I
    .local v1, "R":[I
    invoke-static {v3, v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 145
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v21

    if-eqz v21, :cond_c2

    .line 147
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v20

    if-eqz v20, :cond_bd

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    return-object v20

    .line 154
    :cond_bd
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    return-object v20

    .line 157
    :cond_c2
    move-object/from16 v21, v17

    .line 158
    .local v21, "HSquared":[I
    move-object/from16 v22, v9

    move-object/from16 v9, v21

    .end local v21    # "HSquared":[I
    .local v9, "HSquared":[I
    .local v22, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {v7, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 160
    move-object/from16 v21, v10

    .end local v10    # "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v21, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v10

    .line 161
    .local v10, "G":[I
    invoke-static {v9, v7, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 163
    move-object/from16 v23, v17

    .line 164
    .local v23, "V":[I
    move-object/from16 v24, v11

    move-object/from16 v11, v23

    .end local v23    # "V":[I
    .local v11, "V":[I
    .local v24, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {v9, v4, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 166
    invoke-static {v10, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->negate([I[I)V

    .line 167
    invoke-static {v3, v10, v15}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 169
    move-object/from16 v23, v9

    .end local v9    # "HSquared":[I
    .local v23, "HSquared":[I
    invoke-static {v11, v11, v10}, Lcom/android/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v9

    .line 170
    .local v9, "c":I
    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 172
    move-object/from16 v25, v3

    .end local v3    # "S1":[I
    .local v25, "S1":[I
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v3, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 173
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object/from16 v26, v4

    .end local v4    # "U1":[I
    .local v26, "U1":[I
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 174
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v27, v5

    .end local v5    # "S2":[I
    .local v27, "S2":[I
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v4, v10, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 176
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v4, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    move-object v5, v4

    .line 177
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v28, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v11, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 178
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v1, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiplyAddToExt([I[I[I)V

    .line 179
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v15, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 181
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    move-object v4, v3

    .line 182
    .local v4, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    if-nez v18, :cond_132

    .line 184
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v29, v1

    .end local v1    # "R":[I
    .local v29, "R":[I
    iget-object v1, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v30, v5

    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v30, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    goto :goto_136

    .line 182
    .end local v29    # "R":[I
    .end local v30    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .restart local v1    # "R":[I
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    :cond_132
    move-object/from16 v29, v1

    move-object/from16 v30, v5

    .line 186
    .end local v1    # "R":[I
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .restart local v29    # "R":[I
    .restart local v30    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    :goto_136
    if-nez v19, :cond_141

    .line 188
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v3, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v1, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 191
    :cond_141
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    move-object/from16 v20, v7

    .end local v7    # "H":[I
    .local v20, "H":[I
    move-object v7, v1

    .line 193
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    iget-boolean v5, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    move-object v3, v1

    move-object/from16 v31, v4

    .end local v4    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v31, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object v4, v2

    move/from16 v32, v5

    move-object/from16 v5, v28

    move-object/from16 v33, v6

    .end local v6    # "U2":[I
    .local v33, "U2":[I
    move-object/from16 v6, v30

    move-object/from16 v34, v8

    .end local v8    # "t4":[I
    .local v34, "t4":[I
    move/from16 v8, v32

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 305
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 307
    return-object p0

    .line 310
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 294
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 300
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 296
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 26

    .line 198
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 200
    return-object v0

    .line 203
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 205
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 206
    .local v8, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 208
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 211
    :cond_1d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v2

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v10, v2

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    .line 214
    .local v10, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v11

    .line 215
    .local v11, "t1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 217
    .local v12, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v13

    .line 218
    .local v13, "Y1Squared":[I
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 220
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v14

    .line 221
    .local v14, "T":[I
    invoke-static {v13, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 223
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->isOne()Z

    move-result v15

    .line 225
    .local v15, "Z1IsOne":Z
    iget-object v2, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    .line 226
    .local v2, "Z1Squared":[I
    if-nez v15, :cond_52

    .line 228
    move-object v2, v12

    .line 229
    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v4, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    move-object v7, v2

    goto :goto_53

    .line 226
    :cond_52
    move-object v7, v2

    .line 232
    .end local v2    # "Z1Squared":[I
    .local v7, "Z1Squared":[I
    :goto_53
    iget-object v2, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v7, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 234
    move-object v6, v12

    .line 235
    .local v6, "M":[I
    iget-object v2, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->add([I[I[I)V

    .line 236
    invoke-static {v6, v11, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 237
    invoke-static {v6, v6, v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->addBothTo([I[I[I)I

    move-result v2

    .line 238
    .local v2, "c":I
    invoke-static {v2, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 240
    move-object v5, v13

    .line 241
    .local v5, "S":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v13, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 242
    const/4 v4, 0x2

    move/from16 v16, v2

    .end local v2    # "c":I
    .local v16, "c":I
    const/4 v2, 0x7

    invoke-static {v2, v5, v4, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v4

    .line 243
    .end local v16    # "c":I
    .local v4, "c":I
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 245
    move/from16 v16, v4

    .end local v4    # "c":I
    .restart local v16    # "c":I
    const/4 v4, 0x3

    invoke-static {v2, v14, v4, v3, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v4

    .line 246
    .end local v16    # "c":I
    .restart local v4    # "c":I
    invoke-static {v4, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce32(I[I)V

    .line 248
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    .line 249
    .local v2, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->square([I[I)V

    .line 250
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move/from16 v17, v4

    .end local v4    # "c":I
    .local v17, "c":I
    iget-object v4, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 251
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v4, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v3, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 253
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    move-object v4, v3

    .line 254
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v18, v2

    .end local v2    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v18, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v5, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 255
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    .line 256
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v11, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subtract([I[I[I)V

    .line 258
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    move-object v3, v2

    .line 259
    .local v3, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v19, v4

    .end local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v19, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->twice([I[I)V

    .line 260
    if-nez v15, :cond_d7

    .line 262
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    move-object/from16 v20, v5

    .end local v5    # "S":[I
    .local v20, "S":[I
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;->x:[I

    invoke-static {v2, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->multiply([I[I[I)V

    goto :goto_d9

    .line 260
    .end local v20    # "S":[I
    .restart local v5    # "S":[I
    :cond_d7
    move-object/from16 v20, v5

    .line 265
    .end local v5    # "S":[I
    .restart local v20    # "S":[I
    :goto_d9
    new-instance v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;

    const/4 v2, 0x1

    new-array v5, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v3, v5, v2

    iget-boolean v4, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->withCompression:Z

    move-object/from16 v16, v18

    .end local v18    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v16, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object/from16 v2, v21

    move-object/from16 v18, v3

    .end local v3    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    .local v18, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1FieldElement;
    move-object v3, v1

    move/from16 v22, v4

    move-object/from16 v4, v16

    move-object/from16 v23, v5

    move-object/from16 v5, v19

    move-object/from16 v24, v6

    .end local v6    # "M":[I
    .local v24, "M":[I
    move-object/from16 v6, v23

    move-object/from16 v23, v7

    .end local v7    # "Z1Squared":[I
    .local v23, "Z1Squared":[I
    move/from16 v7, v22

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v21
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 270
    if-ne p0, p1, :cond_7

    .line 272
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 274
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 276
    return-object p1

    .line 278
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 280
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 283
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 284
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 286
    return-object p1

    .line 289
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
