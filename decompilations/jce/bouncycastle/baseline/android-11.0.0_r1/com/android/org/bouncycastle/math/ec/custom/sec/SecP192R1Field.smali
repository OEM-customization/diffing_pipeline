.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P5:I = -0x1

.field static final blacklist PExt:[I

.field private static final blacklist PExt11:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 18
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    .line 20
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    return-void

    nop

    :array_1c
    .array-data 4
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x0
        0x2
        0x0
        0x1
        0x0
        -0x2
        -0x1
        -0x3
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_48
    .array-data 4
        -0x1
        -0x1
        -0x3
        -0x1
        -0x2
        -0x1
        0x1
        0x0
        0x2
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
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 28
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x5

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 30
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

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
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 37
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 39
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 41
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

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
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 49
    .local v0, "c":I
    if-nez v0, :cond_15

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_18

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 51
    :cond_15
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 53
    :cond_18
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 253
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 254
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 255
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 256
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    .line 258
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 259
    long-to-int v10, v1

    aput v10, p0, v9

    .line 260
    shr-long/2addr v1, v0

    .line 262
    :cond_23
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 263
    long-to-int v3, v1

    aput v3, p0, v9

    .line 264
    shr-long v0, v1, v0

    .line 265
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_38

    .line 267
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 269
    :cond_38
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 57
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 58
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 60
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

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

    const/4 v2, 0x6

    if-nez v1, :cond_c

    .line 69
    invoke-static {v2, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_15

    .line 73
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

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
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 81
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 82
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 83
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 87
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 88
    .local v0, "c":I
    const/16 v1, 0xc

    if-nez v0, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 90
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 92
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

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
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 101
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->zero([I)V

    goto :goto_f

    .line 105
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    .line 107
    :goto_f
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 31
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 111
    move-object/from16 v0, p1

    const/4 v1, 0x6

    aget v2, p0, v1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    .local v2, "xx06":J
    const/4 v6, 0x7

    aget v6, p0, v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    .local v6, "xx07":J
    const/16 v8, 0x8

    aget v8, p0, v8

    int-to-long v8, v8

    and-long/2addr v8, v4

    .line 112
    .local v8, "xx08":J
    const/16 v10, 0x9

    aget v10, p0, v10

    int-to-long v10, v10

    and-long/2addr v10, v4

    .local v10, "xx09":J
    const/16 v12, 0xa

    aget v12, p0, v12

    int-to-long v12, v12

    and-long/2addr v12, v4

    .local v12, "xx10":J
    const/16 v14, 0xb

    aget v14, p0, v14

    int-to-long v14, v14

    and-long/2addr v14, v4

    .line 114
    .local v14, "xx11":J
    add-long v16, v2, v12

    .line 115
    .local v16, "t0":J
    add-long v18, v6, v14

    .line 117
    .local v18, "t1":J
    const-wide/16 v20, 0x0

    .line 118
    .local v20, "cc":J
    const/16 v22, 0x0

    aget v1, p0, v22

    move-wide/from16 v23, v12

    .end local v12    # "xx10":J
    .local v23, "xx10":J
    int-to-long v12, v1

    and-long/2addr v12, v4

    add-long v12, v12, v16

    add-long v12, v20, v12

    .line 119
    .end local v20    # "cc":J
    .local v12, "cc":J
    long-to-int v1, v12

    .line 120
    .local v1, "z0":I
    const/16 v20, 0x20

    shr-long v12, v12, v20

    .line 121
    const/16 v21, 0x1

    move-wide/from16 v25, v14

    .end local v14    # "xx11":J
    .local v25, "xx11":J
    aget v14, p0, v21

    int-to-long v14, v14

    and-long/2addr v14, v4

    add-long v14, v14, v18

    add-long/2addr v12, v14

    .line 122
    long-to-int v14, v12

    aput v14, v0, v21

    .line 123
    shr-long v12, v12, v20

    .line 125
    add-long v16, v16, v8

    .line 126
    add-long v18, v18, v10

    .line 128
    const/4 v14, 0x2

    aget v15, p0, v14

    int-to-long v14, v15

    and-long/2addr v14, v4

    add-long v14, v14, v16

    add-long/2addr v12, v14

    .line 129
    and-long v14, v12, v4

    .line 130
    .local v14, "z2":J
    shr-long v12, v12, v20

    .line 131
    const/4 v4, 0x3

    aget v5, p0, v4

    int-to-long v4, v5

    const-wide v27, 0xffffffffL

    and-long v4, v4, v27

    add-long v4, v4, v18

    add-long/2addr v12, v4

    .line 132
    long-to-int v4, v12

    const/4 v5, 0x3

    aput v4, v0, v5

    .line 133
    shr-long v4, v12, v20

    .line 135
    .end local v12    # "cc":J
    .local v4, "cc":J
    sub-long v16, v16, v2

    .line 136
    sub-long v18, v18, v6

    .line 138
    const/4 v12, 0x4

    aget v13, p0, v12

    int-to-long v12, v13

    const-wide v27, 0xffffffffL

    and-long v12, v12, v27

    add-long v12, v12, v16

    add-long/2addr v4, v12

    .line 139
    long-to-int v12, v4

    const/4 v13, 0x4

    aput v12, v0, v13

    .line 140
    shr-long v4, v4, v20

    .line 141
    const/4 v12, 0x5

    aget v13, p0, v12

    int-to-long v12, v13

    const-wide v27, 0xffffffffL

    and-long v12, v12, v27

    add-long v12, v12, v18

    add-long/2addr v4, v12

    .line 142
    long-to-int v12, v4

    const/4 v13, 0x5

    aput v12, v0, v13

    .line 143
    shr-long v4, v4, v20

    .line 145
    add-long/2addr v14, v4

    .line 147
    int-to-long v12, v1

    const-wide v27, 0xffffffffL

    and-long v12, v12, v27

    add-long/2addr v4, v12

    .line 148
    long-to-int v12, v4

    aput v12, v0, v22

    .line 149
    shr-long v4, v4, v20

    .line 150
    const-wide/16 v12, 0x0

    cmp-long v22, v4, v12

    if-eqz v22, :cond_c6

    .line 152
    aget v12, v0, v21

    int-to-long v12, v12

    const-wide v27, 0xffffffffL

    and-long v12, v12, v27

    add-long/2addr v4, v12

    .line 153
    long-to-int v12, v4

    aput v12, v0, v21

    .line 154
    shr-long v12, v4, v20

    add-long/2addr v14, v12

    .line 156
    :cond_c6
    long-to-int v12, v14

    const/4 v13, 0x2

    aput v12, v0, v13

    .line 157
    shr-long v4, v14, v20

    .line 161
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-eqz v12, :cond_da

    const/4 v12, 0x6

    const/4 v13, 0x3

    invoke-static {v12, v0, v13}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v12

    if-nez v12, :cond_e8

    :cond_da
    const/4 v12, 0x5

    aget v12, v0, v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_eb

    sget-object v12, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 162
    invoke-static {v0, v12}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v12

    if-eqz v12, :cond_eb

    .line 164
    :cond_e8
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 166
    :cond_eb
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 170
    const-wide/16 v0, 0x0

    .line 172
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_33

    .line 174
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 176
    .local v4, "xx06":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 177
    long-to-int v9, v0

    aput v9, p1, v8

    .line 178
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 179
    cmp-long v9, v0, v2

    if-eqz v9, :cond_28

    .line 181
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 182
    long-to-int v10, v0

    aput v10, p1, v9

    .line 183
    shr-long/2addr v0, v8

    .line 185
    :cond_28
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 186
    long-to-int v6, v0

    aput v6, p1, v9

    .line 187
    shr-long/2addr v0, v8

    .line 192
    .end local v4    # "xx06":J
    :cond_33
    cmp-long v2, v0, v2

    if-eqz v2, :cond_3f

    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_4d

    :cond_3f
    const/4 v2, 0x5

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_50

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 193
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 195
    :cond_4d
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 197
    :cond_50
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 201
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 202
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 203
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 204
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 210
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 211
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 212
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 214
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 216
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 217
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_a

    .line 219
    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 273
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 274
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 275
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 276
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_23

    .line 278
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 279
    long-to-int v10, v1

    aput v10, p0, v9

    .line 280
    shr-long/2addr v1, v0

    .line 282
    :cond_23
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 283
    long-to-int v3, v1

    aput v3, p0, v9

    .line 284
    shr-long v0, v1, v0

    .line 285
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_38

    .line 287
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 289
    :cond_38
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 223
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 224
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 226
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    .line 228
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 232
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 233
    .local v1, "c":I
    if-eqz v1, :cond_17

    .line 235
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_17

    .line 237
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 240
    :cond_17
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 244
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 245
    .local v0, "c":I
    if-nez v0, :cond_16

    const/4 v1, 0x5

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 247
    :cond_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 249
    :cond_19
    return-void
.end method
