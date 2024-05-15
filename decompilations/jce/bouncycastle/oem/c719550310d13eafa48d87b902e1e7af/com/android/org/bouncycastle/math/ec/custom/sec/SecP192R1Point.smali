.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.source "SecP192R1Point.java"


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

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
    iput-boolean p4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

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
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 59
    iput-boolean p5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    .line 60
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 34
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 72
    return-object p1

    .line 74
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v2

    if-eqz v2, :cond_e

    .line 76
    return-object p0

    .line 78
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_19

    .line 80
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 83
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    .line 85
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .local v17, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 86
    .local v19, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v18

    check-cast v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .local v18, "X2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v20

    check-cast v20, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 88
    .local v20, "Y2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v21, v2, v7

    check-cast v21, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 89
    .local v21, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v23

    check-cast v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 92
    .local v23, "Z2":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v30

    .line 93
    .local v30, "tt1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v27

    .line 94
    .local v27, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v28

    .line 95
    .local v28, "t3":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v29

    .line 97
    .local v29, "t4":[I
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v22

    .line 99
    .local v22, "Z1IsOne":Z
    if-eqz v22, :cond_96

    .line 101
    move-object/from16 v0, v18

    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 102
    .local v15, "U2":[I
    move-object/from16 v0, v20

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 116
    .local v13, "S2":[I
    :goto_69
    invoke-virtual/range {v23 .. v23}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v24

    .line 118
    .local v24, "Z2IsOne":Z
    if-eqz v24, :cond_c5

    .line 120
    move-object/from16 v0, v17

    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 121
    .local v14, "U1":[I
    move-object/from16 v0, v19

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    .line 135
    .local v12, "S1":[I
    :goto_77
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    .line 136
    .local v9, "H":[I
    invoke-static {v14, v15, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 138
    move-object/from16 v11, v27

    .line 139
    .local v11, "R":[I
    move-object/from16 v0, v27

    invoke-static {v12, v13, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 142
    invoke-static {v9}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_f9

    .line 144
    invoke-static/range {v27 .. v27}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v2

    if-eqz v2, :cond_f4

    .line 147
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 106
    .end local v9    # "H":[I
    .end local v11    # "R":[I
    .end local v12    # "S1":[I
    .end local v13    # "S2":[I
    .end local v14    # "U1":[I
    .end local v15    # "U2":[I
    .end local v24    # "Z2IsOne":Z
    :cond_96
    move-object/from16 v13, v28

    .line 107
    .restart local v13    # "S2":[I
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v28

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 109
    move-object/from16 v15, v27

    .line 110
    .restart local v15    # "U2":[I
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 112
    move-object/from16 v0, v21

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 113
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    goto :goto_69

    .line 125
    .restart local v24    # "Z2IsOne":Z
    :cond_c5
    move-object/from16 v12, v29

    .line 126
    .restart local v12    # "S1":[I
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v29

    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 128
    move-object/from16 v14, v30

    .line 129
    .restart local v14    # "U1":[I
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 131
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v29

    move-object/from16 v1, v29

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 132
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v29

    move-object/from16 v1, v29

    invoke-static {v0, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    goto :goto_77

    .line 151
    .restart local v9    # "H":[I
    .restart local v11    # "R":[I
    :cond_f4
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    return-object v2

    .line 154
    :cond_f9
    move-object/from16 v10, v28

    .line 155
    .local v10, "HSquared":[I
    move-object/from16 v0, v28

    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 157
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v8

    .line 158
    .local v8, "G":[I
    move-object/from16 v0, v28

    invoke-static {v0, v9, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 160
    move-object/from16 v16, v28

    .line 161
    .local v16, "V":[I
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v14, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 163
    invoke-static {v8, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->negate([I[I)V

    .line 164
    move-object/from16 v0, v30

    invoke-static {v12, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 166
    move-object/from16 v0, v28

    move-object/from16 v1, v28

    invoke-static {v0, v1, v8}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v26

    .line 167
    .local v26, "c":I
    move/from16 v0, v26

    invoke-static {v0, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 169
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v29

    invoke-direct {v4, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 170
    .local v4, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v27

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 171
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v2, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 173
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v5, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 174
    .local v5, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    iget-object v2, v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v28

    invoke-static {v0, v2, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 175
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v27

    move-object/from16 v1, v30

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiplyAddToExt([I[I[I)V

    .line 176
    iget-object v2, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v30

    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 178
    new-instance v25, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v25

    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 179
    .local v25, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    if-nez v22, :cond_176

    .line 181
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v21

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 183
    :cond_176
    if-nez v24, :cond_18b

    .line 185
    move-object/from16 v0, v25

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v23

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-static {v2, v7, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 188
    :cond_18b
    const/4 v2, 0x1

    new-array v6, v2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    aput-object v25, v6, v2

    .line 190
    .local v6, "zs":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v2
.end method

.method protected detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .prologue
    .line 64
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 7

    .prologue
    .line 303
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 305
    return-object p0

    .line 308
    :cond_7
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 294
    :cond_e
    return-object p0

    .line 298
    :cond_f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 23

    .prologue
    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 198
    return-object p0

    .line 201
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    .line 203
    .local v4, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 204
    .local v13, "Y1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 206
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 209
    :cond_1c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    check-cast v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .local v12, "X1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v7, 0x0

    aget-object v15, v3, v7

    check-cast v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    .line 212
    .local v15, "Z1":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v20

    .line 213
    .local v20, "t1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v21

    .line 215
    .local v21, "t2":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v14

    .line 216
    .local v14, "Y1Squared":[I
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 218
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v11

    .line 219
    .local v11, "T":[I
    invoke-static {v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 221
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->isOne()Z

    move-result v16

    .line 223
    .local v16, "Z1IsOne":Z
    iget-object v0, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v17, v0

    .line 224
    .local v17, "Z1Squared":[I
    if-nez v16, :cond_56

    .line 226
    move-object/from16 v17, v21

    .line 227
    iget-object v3, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v21

    invoke-static {v3, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 230
    :cond_56
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 232
    move-object/from16 v9, v21

    .line 233
    .local v9, "M":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->add([I[I[I)V

    .line 234
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 235
    move-object/from16 v0, v21

    move-object/from16 v1, v21

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->addBothTo([I[I[I)I

    move-result v19

    .line 236
    .local v19, "c":I
    move/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 238
    move-object v10, v14

    .line 239
    .local v10, "S":[I
    iget-object v3, v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v14, v3, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 240
    const/4 v3, 0x6

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static {v3, v14, v7, v8}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III)I

    move-result v19

    .line 241
    move/from16 v0, v19

    invoke-static {v0, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 243
    const/4 v3, 0x6

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v11, v7, v8, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBits(I[III[I)I

    move-result v19

    .line 244
    invoke-static/range {v19 .. v20}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce32(I[I)V

    .line 246
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 247
    .local v5, "X3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v21

    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->square([I[I)V

    .line 248
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 249
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v14, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 251
    new-instance v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    invoke-direct {v6, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 252
    .local v6, "Y3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    iget-object v3, v5, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v14, v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 253
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v21

    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 254
    iget-object v3, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v6, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v20

    invoke-static {v3, v0, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subtract([I[I[I)V

    .line 256
    new-instance v18, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;-><init>([I)V

    .line 257
    .local v18, "Z3":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;
    iget-object v3, v13, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v18

    iget-object v7, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->twice([I[I)V

    .line 258
    if-nez v16, :cond_fb

    .line 260
    move-object/from16 v0, v18

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    iget-object v7, v15, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    move-object/from16 v0, v18

    iget-object v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1FieldElement;->x:[I

    invoke-static {v3, v7, v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->multiply([I[I[I)V

    .line 263
    :cond_fb
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v8, 0x0

    aput-object v18, v7, v8

    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->withCompression:Z

    invoke-direct/range {v3 .. v8}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    return-object v3
.end method

.method public twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .prologue
    .line 268
    if-ne p0, p1, :cond_7

    .line 270
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 272
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 274
    return-object p1

    .line 276
    :cond_e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 278
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1

    .line 281
    :cond_19
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 282
    .local v0, "Y1":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 284
    return-object p1

    .line 287
    :cond_22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Point;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method
