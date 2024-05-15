.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP192K1Point.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

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

    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 64
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    .line 65
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 37
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 77
    return-object v1

    .line 79
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 81
    return-object v0

    .line 83
    :cond_12
    if-ne v0, v1, :cond_19

    .line 85
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 88
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 90
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v3

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v10, v3

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 91
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 93
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v13, v3

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 94
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 97
    .local v14, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v15

    .line 98
    .local v15, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v16

    .line 99
    .local v16, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v17

    .line 100
    .local v17, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 102
    .local v8, "t4":[I
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v18

    .line 104
    .local v18, "Z1IsOne":Z
    if-eqz v18, :cond_60

    .line 106
    iget-object v3, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 107
    .local v3, "U2":[I
    iget-object v5, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object v6, v3

    .local v5, "S2":[I
    goto :goto_79

    .line 111
    .end local v3    # "U2":[I
    .end local v5    # "S2":[I
    :cond_60
    move-object/from16 v5, v17

    .line 112
    .restart local v5    # "S2":[I
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 114
    move-object/from16 v3, v16

    .line 115
    .restart local v3    # "U2":[I
    iget-object v6, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 117
    iget-object v6, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 118
    iget-object v6, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v5, v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    move-object v6, v3

    .line 121
    .end local v3    # "U2":[I
    .local v6, "U2":[I
    :goto_79
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v19

    .line 123
    .local v19, "Z2IsOne":Z
    if-eqz v19, :cond_86

    .line 125
    iget-object v3, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    .line 126
    .local v3, "U1":[I
    iget-object v7, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object v4, v3

    move-object v3, v7

    .local v7, "S1":[I
    goto :goto_9e

    .line 130
    .end local v3    # "U1":[I
    .end local v7    # "S1":[I
    :cond_86
    move-object v7, v8

    .line 131
    .restart local v7    # "S1":[I
    iget-object v3, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 133
    move-object v3, v15

    .line 134
    .restart local v3    # "U1":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 136
    iget-object v4, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 137
    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    move-object v4, v3

    move-object v3, v7

    .line 140
    .end local v7    # "S1":[I
    .local v3, "S1":[I
    .local v4, "U1":[I
    :goto_9e
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v7

    .line 141
    .local v7, "H":[I
    invoke-static {v4, v6, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 143
    move-object/from16 v21, v16

    .line 144
    .local v21, "R":[I
    move-object/from16 v1, v21

    .end local v21    # "R":[I
    .local v1, "R":[I
    invoke-static {v3, v5, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 147
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v21

    if-eqz v21, :cond_c2

    .line 149
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v20

    if-eqz v20, :cond_bd

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    return-object v20

    .line 156
    :cond_bd
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v20

    return-object v20

    .line 159
    :cond_c2
    move-object/from16 v21, v17

    .line 160
    .local v21, "HSquared":[I
    move-object/from16 v22, v9

    move-object/from16 v9, v21

    .end local v21    # "HSquared":[I
    .local v9, "HSquared":[I
    .local v22, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {v7, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 162
    move-object/from16 v21, v10

    .end local v10    # "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v21, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v10

    .line 163
    .local v10, "G":[I
    invoke-static {v9, v7, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 165
    move-object/from16 v23, v17

    .line 166
    .local v23, "V":[I
    move-object/from16 v24, v11

    move-object/from16 v11, v23

    .end local v23    # "V":[I
    .local v11, "V":[I
    .local v24, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {v9, v4, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 168
    invoke-static {v10, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->negate([I[I)V

    .line 169
    invoke-static {v3, v10, v15}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 171
    move-object/from16 v23, v9

    .end local v9    # "HSquared":[I
    .local v23, "HSquared":[I
    invoke-static {v11, v11, v10}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v9

    .line 172
    .local v9, "c":I
    invoke-static {v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 174
    move-object/from16 v25, v3

    .end local v3    # "S1":[I
    .local v25, "S1":[I
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v3, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    .line 175
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    move-object/from16 v26, v4

    .end local v4    # "U1":[I
    .local v26, "U1":[I
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 176
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object/from16 v27, v5

    .end local v5    # "S2":[I
    .local v27, "S2":[I
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v4, v10, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 178
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v4, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    move-object v5, v4

    .line 179
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object/from16 v28, v3

    .end local v3    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v28, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v11, v4, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 180
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v3, v1, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiplyAddToExt([I[I[I)V

    .line 181
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v15, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce([I[I)V

    .line 183
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    move-object v4, v3

    .line 184
    .local v4, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    if-nez v18, :cond_132

    .line 186
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object/from16 v29, v1

    .end local v1    # "R":[I
    .local v29, "R":[I
    iget-object v1, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object/from16 v30, v5

    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v30, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v3, v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    goto :goto_136

    .line 184
    .end local v29    # "R":[I
    .end local v30    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .restart local v1    # "R":[I
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    :cond_132
    move-object/from16 v29, v1

    move-object/from16 v30, v5

    .line 188
    .end local v1    # "R":[I
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .restart local v29    # "R":[I
    .restart local v30    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    :goto_136
    if-nez v19, :cond_141

    .line 190
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v3, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v1, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 193
    :cond_141
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aput-object v4, v1, v3

    move-object/from16 v20, v7

    .end local v7    # "H":[I
    .local v20, "H":[I
    move-object v7, v1

    .line 195
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    iget-boolean v5, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    move-object v3, v1

    move-object/from16 v31, v4

    .end local v4    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v31, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
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

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 69
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 295
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 297
    return-object p0

    .line 300
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 284
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 290
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 286
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 23

    .line 201
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 203
    return-object v0

    .line 206
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 208
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 209
    .local v8, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 211
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 214
    :cond_1d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v2

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v10, v2

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    .line 218
    .local v10, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v11

    .line 219
    .local v11, "Y1Squared":[I
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 221
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v12

    .line 222
    .local v12, "T":[I
    invoke-static {v11, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 224
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v13

    .line 225
    .local v13, "M":[I
    iget-object v2, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 226
    invoke-static {v13, v13, v13}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v2

    .line 227
    .local v2, "c":I
    invoke-static {v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 229
    move-object v14, v11

    .line 230
    .local v14, "S":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v11, v4, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 231
    const/4 v4, 0x2

    const/4 v5, 0x6

    invoke-static {v5, v14, v4, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    .line 232
    invoke-static {v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 234
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v15

    .line 235
    .local v15, "t1":[I
    const/4 v4, 0x3

    invoke-static {v5, v12, v4, v3, v15}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v7

    .line 236
    .end local v2    # "c":I
    .local v7, "c":I
    invoke-static {v7, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->reduce32(I[I)V

    .line 238
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    move-object v6, v2

    .line 239
    .local v6, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v2, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v13, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->square([I[I)V

    .line 240
    iget-object v2, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v14, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 241
    iget-object v2, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v14, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 243
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    move-object v5, v2

    .line 244
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v2, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v14, v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 245
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v13, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    .line 246
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v4, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v15, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->subtract([I[I[I)V

    .line 248
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v2, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    move-object v4, v2

    .line 249
    .local v4, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->twice([I[I)V

    .line 250
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->isOne()Z

    move-result v2

    if-nez v2, :cond_b8

    .line 252
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    iget-object v3, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    move-object/from16 v17, v5

    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v17, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;->x:[I

    invoke-static {v2, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Field;->multiply([I[I[I)V

    goto :goto_ba

    .line 250
    .end local v17    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .restart local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    :cond_b8
    move-object/from16 v17, v5

    .line 255
    .end local v5    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .restart local v17    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    :goto_ba
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;

    const/4 v2, 0x1

    new-array v5, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v4, v5, v2

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->withCompression:Z

    move-object/from16 v2, v18

    move/from16 v16, v3

    move-object v3, v1

    move-object/from16 v19, v4

    .end local v4    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v19, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    move-object v4, v6

    move-object/from16 v20, v5

    move-object/from16 v5, v17

    move-object/from16 v21, v6

    .end local v6    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    .local v21, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1FieldElement;
    move-object/from16 v6, v20

    move/from16 v20, v7

    .end local v7    # "c":I
    .local v20, "c":I
    move/from16 v7, v16

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v18
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 260
    if-ne p0, p1, :cond_7

    .line 262
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 264
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 266
    return-object p1

    .line 268
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 270
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 273
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 274
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 276
    return-object p1

    .line 279
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
