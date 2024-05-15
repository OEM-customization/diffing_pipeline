.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP256K1Point.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    .line 26
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

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 47
    if-nez p2, :cond_15

    move v2, v0

    :goto_8
    if-nez p3, :cond_17

    :goto_a
    if-eq v2, v0, :cond_19

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Exactly one of the field elements is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    move v2, v1

    .line 47
    goto :goto_8

    :cond_17
    move v0, v1

    goto :goto_a

    .line 52
    :cond_19
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->withCompression:Z

    .line 53
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
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 60
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->withCompression:Z

    .line 61
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 34
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 73
    return-object p1

    .line 75
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 77
    return-object p0

    .line 79
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_19

    .line 81
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 84
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 86
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 87
    .local v19, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 89
    .local v20, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v21, v2, v7

    check-cast v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 90
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    check-cast v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 93
    .local v23, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v30

    .line 94
    .local v30, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v27

    .line 95
    .local v27, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v28

    .line 96
    .local v28, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v29

    .line 98
    .local v29, "t4":[I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v22

    .line 100
    .local v22, "Z1IsOne":Z
    if-eqz v22, :cond_96

    .line 102
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 103
    .local v15, "U2":[I
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 117
    .local v13, "S2":[I
    :goto_69
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v24

    .line 119
    .local v24, "Z2IsOne":Z
    if-eqz v24, :cond_c5

    .line 121
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 122
    .local v14, "U1":[I
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 136
    .local v12, "S1":[I
    :goto_77
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 137
    .local v9, "H":[I
    invoke-static {v14, v15, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 139
    move-object/from16 v11, v27

    .line 140
    .local v11, "R":[I
    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 143
    invoke-static {v9}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 145
    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 107
    .end local v9    # "H":[I
    .end local v11    # "R":[I
    .end local v12    # "S1":[I
    .end local v13    # "S2":[I
    .end local v14    # "U1":[I
    .end local v15    # "U2":[I
    .end local v24    # "Z2IsOne":Z
    :cond_96
    move-object/from16 v13, v28

    .line 108
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 110
    move-object/from16 v15, v27

    .line 111
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 113
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 114
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    goto :goto_69

    .line 126
    .restart local v24    # "Z2IsOne":Z
    :cond_c5
    move-object/from16 v12, v29

    .line 127
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 129
    move-object/from16 v14, v30

    .line 130
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 132
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v29

    move-object/from16 v1, v29

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 133
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v29

    move-object/from16 v1, v29

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    goto :goto_77

    .line 152
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_f4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 155
    :cond_f9
    move-object/from16 v10, v28

    .line 156
    .local v10, "HSquared":[I
    move-object/from16 v0, v28

    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 158
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v8

    .line 159
    .local v8, "G":[I
    move-object/from16 v0, v28

    invoke-static {v0, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 161
    move-object/from16 v16, v28

    .line 162
    .local v16, "V":[I
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v14, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 164
    invoke-static {v8, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 165
    move-object/from16 v0, v30

    invoke-static {v12, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 167
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v26

    .line 168
    .local v26, "c":I
    move/from16 v0, v26

    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 170
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 171
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 172
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 174
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 175
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v28

    invoke-static {v0, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 176
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiplyAddToExt([I[I[I)V

    .line 177
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 179
    new-instance v25, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    move-object/from16 v0, v25

    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 180
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    if-nez v22, :cond_176

    .line 182
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 184
    :cond_176
    if-nez v24, :cond_18b

    .line 186
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 189
    :cond_18b
    const/4 v2, 0x1

    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v25, v6, v2

    .line 191
    .local v6, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .prologue
    .line 65
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 293
    return-object p0

    .line 296
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 282
    :cond_e
    return-object p0

    .line 286
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 18

    .prologue
    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 199
    return-object p0

    .line 202
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    .line 204
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 205
    .local v11, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 207
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 210
    :cond_1c
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .local v10, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v5, 0x0

    aget-object v13, v1, v5

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 214
    .local v13, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 215
    .local v12, "Y1Squared":[I
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 217
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 218
    .local v9, "T":[I
    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 220
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v7

    .line 221
    .local v7, "M":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 222
    invoke-static {v7, v7, v7}, Lcom/android/org/bouncycastle/math/raw/Nat256;->addBothTo([I[I[I)I

    move-result v15

    .line 223
    .local v15, "c":I
    invoke-static {v15, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 225
    move-object v8, v12

    .line 226
    .local v8, "S":[I
    iget-object v1, v10, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v12, v1, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 227
    const/16 v1, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v1, v12, v5, v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v15

    .line 228
    invoke-static {v15, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 230
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v16

    .line 231
    .local v16, "t1":[I
    const/16 v1, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-static {v1, v9, v5, v6, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v15

    .line 232
    invoke-static/range {v15 .. v16}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce32(I[I)V

    .line 234
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v3, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 235
    .local v3, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 236
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v12, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 237
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v12, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 239
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v4, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 240
    .local v4, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v12, v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 241
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v7, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 242
    iget-object v1, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    move-object/from16 v0, v16

    invoke-static {v1, v0, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 244
    new-instance v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    .line 245
    .local v14, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, v11, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->twice([I[I)V

    .line 246
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->isOne()Z

    move-result v1

    if-nez v1, :cond_bc

    .line 248
    iget-object v1, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v5, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v6, v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v5, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 251
    :cond_bc
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v6, 0x0

    aput-object v14, v5, v6

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->withCompression:Z

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v1
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 256
    if-ne p0, p1, :cond_7

    .line 258
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 260
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 262
    return-object p1

    .line 264
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 266
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 269
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 270
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 272
    return-object p1

    .line 275
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
