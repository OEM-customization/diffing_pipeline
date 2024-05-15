.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;
.super Ljava/lang/Object;
.source "SecP224R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P6:I = -0x1

.field static final blacklist PExt:[I

.field private static final blacklist PExt13:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 18
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_2e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    .line 20
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_4e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        0x1
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        0x0
        0x2
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_4e
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x1
        0x0
        0x0
        -0x1
        -0x3
        -0x1
        -0x1
        0x1
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 27
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result v0

    .line 28
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x6

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 30
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 32
    :cond_17
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 36
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 37
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 39
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 41
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 44
    :cond_26
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 48
    const/4 v0, 0x7

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 49
    .local v0, "c":I
    if-nez v0, :cond_15

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 51
    :cond_15
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 53
    :cond_18
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 259
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 260
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 261
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 262
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 264
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 265
    long-to-int v10, v1

    aput v10, p0, v9

    .line 266
    shr-long/2addr v1, v0

    .line 267
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 268
    long-to-int v10, v1

    aput v10, p0, v9

    .line 269
    shr-long/2addr v1, v0

    .line 271
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 272
    long-to-int v3, v1

    aput v3, p0, v9

    .line 273
    shr-long v0, v1, v0

    .line 274
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_42

    .line 276
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 278
    :cond_42
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 57
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x6

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->subFrom([I[I)I

    .line 62
    :cond_17
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 67
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/4 v2, 0x7

    if-nez v1, :cond_c

    .line 69
    invoke-static {v2, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    .line 73
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->add([I[I[I)I

    move-result v0

    .line 74
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 76
    .end local v0    # "c":I
    :goto_15
    return-void
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 80
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 81
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    .line 82
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 83
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->mulAddTo([I[I[I)I

    move-result v0

    .line 88
    .local v0, "c":I
    const/16 v1, 0xe

    if-nez v0, :cond_17

    const/16 v2, 0xd

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 90
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 92
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 95
    :cond_26
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 99
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->zero([I)V

    goto :goto_f

    .line 105
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    .line 107
    :goto_f
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 37
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 111
    move-object/from16 v0, p1

    const/16 v1, 0xa

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx10":J
    const/16 v5, 0xb

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx11":J
    const/16 v7, 0xc

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx12":J
    const/16 v9, 0xd

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 113
    .local v9, "xx13":J
    const-wide/16 v11, 0x1

    .line 115
    .local v11, "n":J
    const/4 v13, 0x7

    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v5

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    .line 116
    .local v14, "t0":J
    const/16 v18, 0x8

    aget v13, p0, v18

    move-wide/from16 v19, v11

    .end local v11    # "n":J
    .local v19, "n":J
    int-to-long v11, v13

    and-long/2addr v11, v3

    add-long/2addr v11, v7

    .line 117
    .local v11, "t1":J
    const/16 v13, 0x9

    aget v13, p0, v13

    move-wide/from16 v21, v7

    .end local v7    # "xx12":J
    .local v21, "xx12":J
    int-to-long v7, v13

    and-long/2addr v7, v3

    add-long/2addr v7, v9

    .line 119
    .local v7, "t2":J
    const-wide/16 v23, 0x0

    .line 120
    .local v23, "cc":J
    const/4 v13, 0x0

    move-wide/from16 v25, v9

    .end local v9    # "xx13":J
    .local v25, "xx13":J
    aget v9, p0, v13

    int-to-long v9, v9

    and-long/2addr v9, v3

    sub-long/2addr v9, v14

    add-long v23, v23, v9

    .line 121
    and-long v9, v23, v3

    .line 122
    .local v9, "z0":J
    const/16 v18, 0x20

    shr-long v23, v23, v18

    .line 123
    const/16 v27, 0x1

    aget v13, p0, v27

    move-wide/from16 v29, v9

    .end local v9    # "z0":J
    .local v29, "z0":J
    int-to-long v9, v13

    and-long/2addr v9, v3

    sub-long/2addr v9, v11

    add-long v9, v23, v9

    .line 124
    .end local v23    # "cc":J
    .local v9, "cc":J
    long-to-int v13, v9

    aput v13, v0, v27

    .line 125
    shr-long v9, v9, v18

    .line 126
    const/4 v13, 0x2

    move-wide/from16 v23, v5

    .end local v5    # "xx11":J
    .local v23, "xx11":J
    aget v5, p0, v13

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long/2addr v5, v7

    add-long/2addr v9, v5

    .line 127
    long-to-int v5, v9

    aput v5, v0, v13

    .line 128
    shr-long v5, v9, v18

    .line 129
    .end local v9    # "cc":J
    .local v5, "cc":J
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v9, v10

    and-long/2addr v9, v3

    add-long/2addr v9, v14

    sub-long/2addr v9, v1

    add-long/2addr v5, v9

    .line 130
    and-long v9, v5, v3

    .line 131
    .local v9, "z3":J
    shr-long v5, v5, v18

    .line 132
    const/4 v13, 0x4

    move-wide/from16 v31, v14

    .end local v14    # "t0":J
    .local v31, "t0":J
    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v11

    sub-long v14, v14, v23

    add-long/2addr v5, v14

    .line 133
    long-to-int v14, v5

    aput v14, v0, v13

    .line 134
    shr-long v5, v5, v18

    .line 135
    const/4 v14, 0x5

    aget v15, p0, v14

    int-to-long v13, v15

    and-long/2addr v13, v3

    add-long/2addr v13, v7

    sub-long v13, v13, v21

    add-long/2addr v5, v13

    .line 136
    long-to-int v13, v5

    const/4 v14, 0x5

    aput v13, v0, v14

    .line 137
    shr-long v5, v5, v18

    .line 138
    const/4 v13, 0x6

    aget v14, p0, v13

    int-to-long v14, v14

    and-long/2addr v14, v3

    add-long/2addr v14, v1

    sub-long v14, v14, v25

    add-long/2addr v5, v14

    .line 139
    long-to-int v14, v5

    aput v14, v0, v13

    .line 140
    shr-long v5, v5, v18

    .line 141
    add-long v5, v5, v16

    .line 145
    add-long/2addr v9, v5

    .line 147
    sub-long v14, v29, v5

    .line 148
    .end local v29    # "z0":J
    .local v14, "z0":J
    long-to-int v13, v14

    const/16 v17, 0x0

    aput v13, v0, v17

    .line 149
    shr-long v5, v14, v18

    .line 150
    const-wide/16 v28, 0x0

    cmp-long v13, v5, v28

    if-eqz v13, :cond_d3

    .line 152
    aget v13, v0, v27

    move-wide/from16 v33, v1

    .end local v1    # "xx10":J
    .local v33, "xx10":J
    int-to-long v1, v13

    and-long/2addr v1, v3

    add-long/2addr v5, v1

    .line 153
    long-to-int v1, v5

    aput v1, v0, v27

    .line 154
    shr-long v1, v5, v18

    .line 155
    .end local v5    # "cc":J
    .local v1, "cc":J
    const/4 v5, 0x2

    aget v6, v0, v5

    int-to-long v5, v6

    and-long/2addr v3, v5

    add-long v5, v1, v3

    .line 156
    .end local v1    # "cc":J
    .restart local v5    # "cc":J
    long-to-int v1, v5

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 157
    shr-long v1, v5, v18

    add-long/2addr v9, v1

    goto :goto_d5

    .line 150
    .end local v33    # "xx10":J
    .local v1, "xx10":J
    :cond_d3
    move-wide/from16 v33, v1

    .line 159
    .end local v1    # "xx10":J
    .restart local v33    # "xx10":J
    :goto_d5
    long-to-int v1, v9

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 160
    shr-long v1, v9, v18

    .line 164
    .end local v5    # "cc":J
    .local v1, "cc":J
    cmp-long v3, v1, v28

    if-eqz v3, :cond_e7

    const/4 v3, 0x7

    const/4 v4, 0x4

    invoke-static {v3, v0, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v3

    if-nez v3, :cond_f5

    :cond_e7
    const/4 v3, 0x6

    aget v3, v0, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f8

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 165
    invoke-static {v0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v3

    if-eqz v3, :cond_f8

    .line 167
    :cond_f5
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 169
    :cond_f8
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 173
    const-wide/16 v0, 0x0

    .line 175
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_3d

    .line 177
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 179
    .local v4, "xx07":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    sub-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 180
    long-to-int v9, v0

    aput v9, p1, v8

    .line 181
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 182
    cmp-long v9, v0, v2

    if-eqz v9, :cond_32

    .line 184
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 185
    long-to-int v10, v0

    aput v10, p1, v9

    .line 186
    shr-long/2addr v0, v8

    .line 187
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 188
    long-to-int v10, v0

    aput v10, p1, v9

    .line 189
    shr-long/2addr v0, v8

    .line 191
    :cond_32
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 192
    long-to-int v6, v0

    aput v6, p1, v9

    .line 193
    shr-long/2addr v0, v8

    .line 198
    .end local v4    # "xx07":J
    :cond_3d
    cmp-long v2, v0, v2

    if-eqz v2, :cond_49

    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_57

    :cond_49
    const/4 v2, 0x6

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_5a

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    .line 199
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 201
    :cond_57
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 203
    :cond_5a
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 207
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 208
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 209
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 210
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 216
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    .line 217
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 218
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    .line 220
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 222
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->square([I[I)V

    .line 223
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->reduce([I[I)V

    goto :goto_a

    .line 225
    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 282
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 283
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 284
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 285
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 287
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 288
    long-to-int v10, v1

    aput v10, p0, v9

    .line 289
    shr-long/2addr v1, v0

    .line 290
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 291
    long-to-int v10, v1

    aput v10, p0, v9

    .line 292
    shr-long/2addr v1, v0

    .line 294
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 295
    long-to-int v3, v1

    aput v3, p0, v9

    .line 296
    shr-long v0, v1, v0

    .line 297
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_42

    .line 299
    const/4 v2, 0x7

    const/4 v3, 0x4

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 301
    :cond_42
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 229
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->sub([I[I[I)I

    move-result v0

    .line 230
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 232
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->subPInvFrom([I)V

    .line 234
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 238
    const/16 v0, 0xe

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 239
    .local v1, "c":I
    if-eqz v1, :cond_17

    .line 241
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_17

    .line 243
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 246
    :cond_17
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 250
    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 251
    .local v0, "c":I
    if-nez v0, :cond_16

    const/4 v1, 0x6

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 253
    :cond_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224R1Field;->addPInvTo([I)V

    .line 255
    :cond_19
    return-void
.end method
