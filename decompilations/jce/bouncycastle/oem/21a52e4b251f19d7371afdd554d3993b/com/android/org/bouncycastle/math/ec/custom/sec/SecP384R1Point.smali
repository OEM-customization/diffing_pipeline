.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP384R1Point.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

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
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

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

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

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
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 86
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 88
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v3

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v10, v3

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 89
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 91
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v13, v3

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 92
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 95
    .local v14, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v3, 0x18

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v15

    .line 96
    .local v15, "tt1":[I
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 97
    .local v8, "tt2":[I
    const/16 v3, 0xc

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v16

    .line 98
    .local v16, "t3":[I
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 100
    .local v6, "t4":[I
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v17

    .line 102
    .local v17, "Z1IsOne":Z
    if-eqz v17, :cond_64

    .line 104
    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 105
    .local v5, "U2":[I
    iget-object v7, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v4, v7

    .local v7, "S2":[I
    goto :goto_7c

    .line 109
    .end local v5    # "U2":[I
    .end local v7    # "S2":[I
    :cond_64
    move-object/from16 v7, v16

    .line 110
    .restart local v7    # "S2":[I
    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 112
    move-object v5, v8

    .line 113
    .restart local v5    # "U2":[I
    iget-object v4, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 115
    iget-object v4, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 116
    iget-object v4, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    move-object v4, v7

    .line 119
    .end local v7    # "S2":[I
    .local v4, "S2":[I
    :goto_7c
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v19

    .line 121
    .local v19, "Z2IsOne":Z
    if-eqz v19, :cond_89

    .line 123
    iget-object v7, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 124
    .local v7, "U1":[I
    iget-object v3, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object v1, v3

    move-object v3, v7

    .local v3, "S1":[I
    goto :goto_a1

    .line 128
    .end local v3    # "S1":[I
    .end local v7    # "U1":[I
    :cond_89
    move-object v3, v6

    .line 129
    .restart local v3    # "S1":[I
    iget-object v7, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v7, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 131
    move-object v7, v15

    .line 132
    .restart local v7    # "U1":[I
    iget-object v1, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v1, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 134
    iget-object v1, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v1, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 135
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v1, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    move-object v1, v3

    move-object v3, v7

    .line 138
    .end local v7    # "U1":[I
    .local v1, "S1":[I
    .local v3, "U1":[I
    :goto_a1
    move-object/from16 v21, v9

    const/16 v7, 0xc

    .end local v9    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v21, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 139
    .local v9, "H":[I
    invoke-static {v3, v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 141
    move-object/from16 v22, v10

    .end local v10    # "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v22, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 142
    .local v10, "R":[I
    invoke-static {v1, v4, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 145
    invoke-static {v7, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v20

    if-eqz v20, :cond_cb

    .line 147
    invoke-static {v7, v10}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v7

    if-eqz v7, :cond_c6

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 154
    :cond_c6
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    return-object v7

    .line 157
    :cond_cb
    move-object/from16 v7, v16

    .line 158
    .local v7, "HSquared":[I
    invoke-static {v9, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 160
    move-object/from16 v23, v11

    const/16 v20, 0xc

    .end local v11    # "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v23, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 161
    .local v11, "G":[I
    invoke-static {v7, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 163
    move-object/from16 v24, v16

    .line 164
    .local v24, "V":[I
    move-object/from16 v25, v12

    move-object/from16 v12, v24

    .end local v24    # "V":[I
    .local v12, "V":[I
    .local v25, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-static {v7, v3, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 166
    invoke-static {v11, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->negate([I[I)V

    .line 167
    invoke-static {v1, v11, v15}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 169
    move-object/from16 v24, v1

    const/16 v1, 0xc

    .end local v1    # "S1":[I
    .local v24, "S1":[I
    invoke-static {v1, v12, v12, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v1

    .line 170
    .local v1, "c":I
    invoke-static {v1, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 172
    move/from16 v20, v1

    .end local v1    # "c":I
    .local v20, "c":I
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 173
    .local v1, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v26, v3

    .end local v3    # "U1":[I
    .local v26, "U1":[I
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v10, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 174
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v27, v4

    .end local v4    # "S2":[I
    .local v27, "S2":[I
    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v11, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 176
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    move-object v4, v3

    .line 177
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v28, v5

    .end local v5    # "U2":[I
    .local v28, "U2":[I
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v12, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 178
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v10, v8}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 179
    invoke-static {v15, v8, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addExt([I[I[I)V

    .line 180
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v15, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 182
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    move-object v5, v3

    .line 183
    .local v5, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    if-nez v17, :cond_13e

    .line 185
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v29, v4

    .end local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v29, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v30, v6

    .end local v6    # "t4":[I
    .local v30, "t4":[I
    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v4, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    goto :goto_142

    .line 183
    .end local v29    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v30    # "t4":[I
    .restart local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .restart local v6    # "t4":[I
    :cond_13e
    move-object/from16 v29, v4

    move-object/from16 v30, v6

    .line 187
    .end local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .end local v6    # "t4":[I
    .restart local v29    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .restart local v30    # "t4":[I
    :goto_142
    if-nez v19, :cond_14d

    .line 189
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v4, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v4, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 192
    :cond_14d
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    move-object/from16 v18, v7

    .end local v7    # "HSquared":[I
    .local v18, "HSquared":[I
    move-object v7, v3

    .line 194
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v31, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    move-object/from16 v3, v31

    move-object v4, v2

    move-object/from16 v32, v5

    .end local v5    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v32, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object v5, v1

    move/from16 v33, v6

    move-object/from16 v6, v29

    move-object/from16 v34, v8

    .end local v8    # "tt2":[I
    .local v34, "tt2":[I
    move/from16 v8, v33

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v31
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 68
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 306
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 308
    return-object p0

    .line 311
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 295
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 301
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 297
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 26

    .line 199
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 201
    return-object v0

    .line 204
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 206
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 207
    .local v8, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 209
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 212
    :cond_1d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v2

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v10, v2

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    .line 215
    .local v10, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    const/16 v2, 0xc

    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 216
    .local v11, "t1":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 218
    .local v12, "t2":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 219
    .local v13, "Y1Squared":[I
    iget-object v4, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v4, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 221
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 222
    .local v14, "T":[I
    invoke-static {v13, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 224
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->isOne()Z

    move-result v15

    .line 226
    .local v15, "Z1IsOne":Z
    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    .line 227
    .local v4, "Z1Squared":[I
    if-nez v15, :cond_54

    .line 229
    move-object v4, v12

    .line 230
    iget-object v5, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    move-object v7, v4

    goto :goto_55

    .line 227
    :cond_54
    move-object v7, v4

    .line 233
    .end local v4    # "Z1Squared":[I
    .local v7, "Z1Squared":[I
    :goto_55
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v4, v7, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 235
    move-object v6, v12

    .line 236
    .local v6, "M":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v4, v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->add([I[I[I)V

    .line 237
    invoke-static {v6, v11, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 238
    invoke-static {v2, v6, v6, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    move-result v4

    .line 239
    .local v4, "c":I
    invoke-static {v4, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 241
    move-object v5, v13

    .line 242
    .local v5, "S":[I
    iget-object v2, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v13, v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 243
    const/4 v2, 0x2

    move/from16 v17, v4

    const/16 v4, 0xc

    .end local v4    # "c":I
    .local v17, "c":I
    invoke-static {v4, v5, v2, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v2

    .line 244
    .end local v17    # "c":I
    .local v2, "c":I
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 246
    move/from16 v16, v2

    .end local v2    # "c":I
    .local v16, "c":I
    const/4 v2, 0x3

    invoke-static {v4, v14, v2, v3, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v4

    .line 247
    .end local v16    # "c":I
    .restart local v4    # "c":I
    invoke-static {v4, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 249
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    .line 250
    .local v2, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->square([I[I)V

    .line 251
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move/from16 v17, v4

    .end local v4    # "c":I
    .restart local v17    # "c":I
    iget-object v4, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 252
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v4, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v3, v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 254
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    move-object v4, v3

    .line 255
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v3, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v18, v2

    .end local v2    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v18, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v5, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 256
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v6, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    .line 257
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v11, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subtract([I[I[I)V

    .line 259
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    move-object v3, v2

    .line 260
    .local v3, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v19, v4

    .end local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v19, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->twice([I[I)V

    .line 261
    if-nez v15, :cond_da

    .line 263
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    move-object/from16 v20, v5

    .end local v5    # "S":[I
    .local v20, "S":[I
    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;->x:[I

    invoke-static {v2, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->multiply([I[I[I)V

    goto :goto_dc

    .line 261
    .end local v20    # "S":[I
    .restart local v5    # "S":[I
    :cond_da
    move-object/from16 v20, v5

    .line 266
    .end local v5    # "S":[I
    .restart local v20    # "S":[I
    :goto_dc
    new-instance v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;

    const/4 v2, 0x1

    new-array v5, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v3, v5, v2

    iget-boolean v4, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->withCompression:Z

    move-object/from16 v16, v18

    .end local v18    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v16, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    move-object/from16 v2, v21

    move-object/from16 v18, v3

    .end local v3    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
    .local v18, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;
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

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v21
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 271
    if-ne p0, p1, :cond_7

    .line 273
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 275
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 277
    return-object p1

    .line 279
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 281
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 284
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 285
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 287
    return-object p1

    .line 290
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
