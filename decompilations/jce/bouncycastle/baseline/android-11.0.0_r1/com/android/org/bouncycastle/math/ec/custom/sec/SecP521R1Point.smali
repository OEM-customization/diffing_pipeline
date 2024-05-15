.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP521R1Point.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 28
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 29
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V
    .registers 8
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 50
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

    .line 55
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    .line 56
    return-void

    .line 52
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

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 62
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    .line 63
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 36
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 72
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 74
    return-object v1

    .line 76
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 78
    return-object v0

    .line 80
    :cond_12
    if-ne v0, v1, :cond_19

    .line 82
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 85
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 87
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v3

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v10, v3

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 88
    .local v10, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v11, v3

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v11, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v12, v3

    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 90
    .local v12, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move-object v13, v3

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 91
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v1, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 93
    .local v14, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v15

    .line 94
    .local v15, "t1":[I
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v8

    .line 95
    .local v8, "t2":[I
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v16

    .line 96
    .local v16, "t3":[I
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v6

    .line 98
    .local v6, "t4":[I
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v17

    .line 100
    .local v17, "Z1IsOne":Z
    if-eqz v17, :cond_62

    .line 102
    iget-object v5, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 103
    .local v5, "U2":[I
    iget-object v7, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v4, v7

    .local v7, "S2":[I
    goto :goto_7a

    .line 107
    .end local v5    # "U2":[I
    .end local v7    # "S2":[I
    :cond_62
    move-object/from16 v7, v16

    .line 108
    .restart local v7    # "S2":[I
    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 110
    move-object v5, v8

    .line 111
    .restart local v5    # "U2":[I
    iget-object v4, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 113
    iget-object v4, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 114
    iget-object v4, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    move-object v4, v7

    .line 117
    .end local v7    # "S2":[I
    .local v4, "S2":[I
    :goto_7a
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v19

    .line 119
    .local v19, "Z2IsOne":Z
    if-eqz v19, :cond_87

    .line 121
    iget-object v7, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 122
    .local v7, "U1":[I
    iget-object v3, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object v1, v3

    move-object v3, v7

    .local v3, "S1":[I
    goto :goto_9f

    .line 126
    .end local v3    # "S1":[I
    .end local v7    # "U1":[I
    :cond_87
    move-object v3, v6

    .line 127
    .restart local v3    # "S1":[I
    iget-object v7, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 129
    move-object v7, v15

    .line 130
    .restart local v7    # "U1":[I
    iget-object v1, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v1, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 132
    iget-object v1, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v1, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 133
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v1, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    move-object v1, v3

    move-object v3, v7

    .line 136
    .end local v7    # "U1":[I
    .local v1, "S1":[I
    .local v3, "U1":[I
    :goto_9f
    move-object/from16 v21, v9

    const/16 v7, 0x11

    .end local v9    # "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v21, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v9

    .line 137
    .local v9, "H":[I
    invoke-static {v3, v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 139
    move-object/from16 v22, v8

    .line 140
    .local v22, "R":[I
    move-object/from16 v7, v22

    .end local v22    # "R":[I
    .local v7, "R":[I
    invoke-static {v1, v4, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 143
    move-object/from16 v22, v4

    const/16 v4, 0x11

    .end local v4    # "S2":[I
    .local v22, "S2":[I
    invoke-static {v4, v9}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v20

    if-eqz v20, :cond_cb

    .line 145
    invoke-static {v4, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v4

    if-eqz v4, :cond_c6

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 152
    :cond_c6
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    return-object v4

    .line 155
    :cond_cb
    move-object/from16 v4, v16

    .line 156
    .local v4, "HSquared":[I
    invoke-static {v9, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 158
    move-object/from16 v23, v10

    const/16 v20, 0x11

    .end local v10    # "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v23, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static/range {v20 .. v20}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v10

    .line 159
    .local v10, "G":[I
    invoke-static {v4, v9, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 161
    move-object/from16 v20, v16

    .line 162
    .local v20, "V":[I
    move-object/from16 v24, v11

    move-object/from16 v11, v20

    .end local v20    # "V":[I
    .local v11, "V":[I
    .local v24, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-static {v4, v3, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 164
    invoke-static {v1, v10, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 166
    move-object/from16 v20, v1

    .end local v1    # "S1":[I
    .local v20, "S1":[I
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v1, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    .line 167
    .local v1, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v25, v3

    .end local v3    # "U1":[I
    .local v25, "U1":[I
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v7, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 168
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v26, v4

    .end local v4    # "HSquared":[I
    .local v26, "HSquared":[I
    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v10, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 169
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v11, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 170
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v11, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 172
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v3, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    move-object v4, v3

    .line 173
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v27, v5

    .end local v5    # "U2":[I
    .local v27, "U2":[I
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v11, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 174
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v7, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 175
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v8, v15, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 177
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    move-object v5, v3

    .line 178
    .local v5, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    if-nez v17, :cond_13b

    .line 180
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v28, v4

    .end local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v28, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v29, v6

    .end local v6    # "t4":[I
    .local v29, "t4":[I
    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v4, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    goto :goto_13f

    .line 178
    .end local v28    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .end local v29    # "t4":[I
    .restart local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v6    # "t4":[I
    :cond_13b
    move-object/from16 v28, v4

    move-object/from16 v29, v6

    .line 182
    .end local v4    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .end local v6    # "t4":[I
    .restart local v28    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .restart local v29    # "t4":[I
    :goto_13f
    if-nez v19, :cond_14a

    .line 184
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v6, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v3, v4, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 187
    :cond_14a
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v4, 0x0

    aput-object v5, v3, v4

    move-object/from16 v18, v7

    .end local v7    # "R":[I
    .local v18, "R":[I
    move-object v7, v3

    .line 189
    .local v7, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v30, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    move-object/from16 v3, v30

    move-object v4, v2

    move-object/from16 v31, v5

    .end local v5    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v31, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object v5, v1

    move/from16 v32, v6

    move-object/from16 v6, v28

    move-object/from16 v33, v8

    .end local v8    # "t2":[I
    .local v33, "t2":[I
    move/from16 v8, v32

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v30
.end method

.method protected blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 67
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist doubleProductFromSquares(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 6
    .param p1, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "aSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "bSquared"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 325
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

    .line 315
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist four(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 310
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 8

    .line 330
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 332
    return-object p0

    .line 335
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected blacklist three(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 305
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 289
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_18

    .line 295
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 291
    :cond_18
    :goto_18
    return-object p0
.end method

.method public blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 25

    .line 194
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 196
    return-object v0

    .line 199
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    .line 201
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v8, v2

    check-cast v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 202
    .local v8, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isZero()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 204
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 207
    :cond_1d
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object v9, v2

    check-cast v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .local v9, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move-object v10, v2

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    .line 209
    .local v10, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    const/16 v2, 0x11

    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v11

    .line 210
    .local v11, "t1":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v12

    .line 212
    .local v12, "t2":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v13

    .line 213
    .local v13, "Y1Squared":[I
    iget-object v4, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 215
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v14

    .line 216
    .local v14, "T":[I
    invoke-static {v13, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 218
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->isOne()Z

    move-result v15

    .line 220
    .local v15, "Z1IsOne":Z
    iget-object v4, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    .line 221
    .local v4, "Z1Squared":[I
    if-nez v15, :cond_54

    .line 223
    move-object v4, v12

    .line 224
    iget-object v5, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    move-object v7, v4

    goto :goto_55

    .line 221
    :cond_54
    move-object v7, v4

    .line 227
    .end local v4    # "Z1Squared":[I
    .local v7, "Z1Squared":[I
    :goto_55
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v7, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 229
    move-object v6, v12

    .line 230
    .local v6, "M":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v4, v7, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->add([I[I[I)V

    .line 231
    invoke-static {v6, v11, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 232
    invoke-static {v2, v6, v6, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->addBothTo(I[I[I[I)I

    .line 233
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 235
    move-object v5, v13

    .line 236
    .local v5, "S":[I
    iget-object v4, v9, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v13, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 237
    const/4 v4, 0x2

    invoke-static {v2, v5, v4, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    .line 238
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 240
    const/4 v4, 0x3

    invoke-static {v2, v14, v4, v3, v11}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    .line 241
    invoke-static {v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce23([I)V

    .line 243
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v2, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    move-object v4, v2

    .line 244
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v6, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->square([I[I)V

    .line 245
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v5, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 246
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v5, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 248
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    move-object v3, v2

    .line 249
    .local v3, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v17, v4

    .end local v4    # "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v17, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v5, v2, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 250
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v6, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    .line 251
    iget-object v2, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v4, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v11, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->subtract([I[I[I)V

    .line 253
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;

    invoke-direct {v2, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;-><init>([I)V

    move-object v4, v2

    .line 254
    .local v4, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v2, v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v18, v3

    .end local v3    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v18, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    iget-object v3, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->twice([I[I)V

    .line 255
    if-nez v15, :cond_d0

    .line 257
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    iget-object v3, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    move-object/from16 v19, v5

    .end local v5    # "S":[I
    .local v19, "S":[I
    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;->x:[I

    invoke-static {v2, v3, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->multiply([I[I[I)V

    goto :goto_d2

    .line 255
    .end local v19    # "S":[I
    .restart local v5    # "S":[I
    :cond_d0
    move-object/from16 v19, v5

    .line 260
    .end local v5    # "S":[I
    .restart local v19    # "S":[I
    :goto_d2
    new-instance v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;

    const/4 v2, 0x1

    new-array v5, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v4, v5, v2

    iget-boolean v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->withCompression:Z

    move-object/from16 v2, v20

    move-object/from16 v16, v18

    move/from16 v18, v3

    .end local v18    # "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v16, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object v3, v1

    move-object/from16 v21, v4

    .end local v4    # "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    .local v21, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1FieldElement;
    move-object/from16 v4, v17

    move-object/from16 v22, v5

    move-object/from16 v5, v16

    move-object/from16 v23, v6

    .end local v6    # "M":[I
    .local v23, "M":[I
    move-object/from16 v6, v22

    move-object/from16 v22, v7

    .end local v7    # "Z1Squared":[I
    .local v22, "Z1Squared":[I
    move/from16 v7, v18

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v20
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 265
    if-ne p0, p1, :cond_7

    .line 267
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 269
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 271
    return-object p1

    .line 273
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 275
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    .line 278
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 279
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 281
    return-object p1

    .line 284
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method protected blacklist two(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 300
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0
.end method
