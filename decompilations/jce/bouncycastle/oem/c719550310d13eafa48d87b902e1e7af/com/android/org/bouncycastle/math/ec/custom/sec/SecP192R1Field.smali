.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;
.super Ljava/lang/Object;
.source "SecP192R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P5:I = -0x1

.field static final PExt:[I

.field private static final PExt11:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    .line 14
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_2c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    .line 16
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_48

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    .line 8
    return-void

    .line 13
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

    .line 14
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

    .line 16
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

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 24
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

    .line 26
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 28
    :cond_17
    return-void
.end method

.method public static addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0xc

    .line 32
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 33
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0xb

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 35
    :cond_17
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    if-eqz v1, :cond_28

    .line 37
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 40
    :cond_28
    return-void
.end method

.method public static addOne([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 44
    const/4 v1, 0x6

    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 45
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

    .line 47
    :cond_15
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 49
    :cond_18
    return-void
.end method

.method private static addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 249
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 250
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 251
    shr-long/2addr v0, v6

    .line 252
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 254
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 255
    long-to-int v2, v0

    aput v2, p0, v10

    .line 256
    shr-long/2addr v0, v6

    .line 258
    :cond_25
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 259
    long-to-int v2, v0

    aput v2, p0, v11

    .line 260
    shr-long/2addr v0, v6

    .line 261
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3c

    .line 263
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 265
    :cond_3c
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 53
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 54
    .local v0, "z":[I
    const/4 v1, 0x5

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 56
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->subFrom([I[I)I

    .line 58
    :cond_17
    return-object v0
.end method

.method public static half([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x0

    .line 63
    aget v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_c

    .line 65
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 72
    :goto_b
    return-void

    .line 69
    :cond_c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->add([I[I[I)I

    move-result v0

    .line 70
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_b
.end method

.method public static multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 76
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 77
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    .line 78
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 79
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0xc

    .line 83
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->mulAddTo([I[I[I)I

    move-result v0

    .line 84
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0xb

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 86
    :cond_17
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    if-eqz v1, :cond_28

    .line 88
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 91
    :cond_28
    return-void
.end method

.method public static negate([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 95
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 97
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->zero([I)V

    .line 103
    :goto_9
    return-void

    .line 101
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    goto :goto_9
.end method

.method public static reduce([I[I)V
    .registers 32
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 107
    const/16 v23, 0x6

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v10, v26, v28

    .local v10, "xx06":J
    const/16 v23, 0x7

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v12, v26, v28

    .local v12, "xx07":J
    const/16 v23, 0x8

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v14, v26, v28

    .line 108
    .local v14, "xx08":J
    const/16 v23, 0x9

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v16, v26, v28

    .local v16, "xx09":J
    const/16 v23, 0xa

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v18, v26, v28

    .local v18, "xx10":J
    const/16 v23, 0xb

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v20, v26, v28

    .line 110
    .local v20, "xx11":J
    add-long v6, v10, v18

    .line 111
    .local v6, "t0":J
    add-long v8, v12, v20

    .line 113
    .local v8, "t1":J
    const-wide/16 v4, 0x0

    .line 114
    .local v4, "cc":J
    const/16 v23, 0x0

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v6

    .line 113
    const-wide/16 v28, 0x0

    .line 114
    add-long v4, v28, v26

    .line 115
    long-to-int v0, v4

    move/from16 v22, v0

    .line 116
    .local v22, "z0":I
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 117
    const/16 v23, 0x1

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v8

    add-long v4, v4, v26

    .line 118
    long-to-int v0, v4

    move/from16 v23, v0

    const/16 v26, 0x1

    aput v23, p1, v26

    .line 119
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 121
    add-long/2addr v6, v14

    .line 122
    add-long v8, v8, v16

    .line 124
    const/16 v23, 0x2

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v6

    add-long v4, v4, v26

    .line 125
    const-wide v26, 0xffffffffL

    and-long v24, v4, v26

    .line 126
    .local v24, "z2":J
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 127
    const/16 v23, 0x3

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v8

    add-long v4, v4, v26

    .line 128
    long-to-int v0, v4

    move/from16 v23, v0

    const/16 v26, 0x3

    aput v23, p1, v26

    .line 129
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 131
    sub-long/2addr v6, v10

    .line 132
    sub-long/2addr v8, v12

    .line 134
    const/16 v23, 0x4

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v6

    add-long v4, v4, v26

    .line 135
    long-to-int v0, v4

    move/from16 v23, v0

    const/16 v26, 0x4

    aput v23, p1, v26

    .line 136
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 137
    const/16 v23, 0x5

    aget v23, p0, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v26, v26, v8

    add-long v4, v4, v26

    .line 138
    long-to-int v0, v4

    move/from16 v23, v0

    const/16 v26, 0x5

    aput v23, p1, v26

    .line 139
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 141
    add-long v24, v24, v4

    .line 143
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v4, v4, v26

    .line 144
    long-to-int v0, v4

    move/from16 v23, v0

    const/16 v26, 0x0

    aput v23, p1, v26

    .line 145
    const/16 v23, 0x20

    shr-long v4, v4, v23

    .line 146
    const-wide/16 v26, 0x0

    cmp-long v23, v4, v26

    if-eqz v23, :cond_163

    .line 148
    const/16 v23, 0x1

    aget v23, p1, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    add-long v4, v4, v26

    .line 149
    long-to-int v0, v4

    move/from16 v23, v0

    const/16 v26, 0x1

    aput v23, p1, v26

    .line 150
    const/16 v23, 0x20

    shr-long v26, v4, v23

    add-long v24, v24, v26

    .line 152
    :cond_163
    move-wide/from16 v0, v24

    long-to-int v0, v0

    move/from16 v23, v0

    const/16 v26, 0x2

    aput v23, p1, v26

    .line 153
    const/16 v23, 0x20

    shr-long v4, v24, v23

    .line 157
    const-wide/16 v26, 0x0

    cmp-long v23, v4, v26

    if-eqz v23, :cond_18a

    const/16 v23, 0x6

    const/16 v26, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p1

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v23

    if-eqz v23, :cond_18a

    .line 160
    :goto_186
    invoke-static/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 162
    :cond_189
    return-void

    .line 158
    :cond_18a
    const/16 v23, 0x5

    aget v23, p1, v23

    const/16 v26, -0x1

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_189

    sget-object v23, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v23

    .line 157
    if-eqz v23, :cond_189

    goto :goto_186
.end method

.method public static reduce32(I[I)V
    .registers 15
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const/16 v7, 0x20

    const-wide v8, 0xffffffffL

    const/4 v6, 0x0

    .line 166
    const-wide/16 v0, 0x0

    .line 168
    .local v0, "cc":J
    if-eqz p0, :cond_36

    .line 170
    int-to-long v4, p0

    and-long v2, v4, v8

    .line 172
    .local v2, "xx06":J
    aget v4, p1, v6

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v4, v2

    add-long v0, v10, v4

    .line 173
    long-to-int v4, v0

    aput v4, p1, v6

    .line 174
    shr-long/2addr v0, v7

    .line 175
    cmp-long v4, v0, v10

    if-eqz v4, :cond_2a

    .line 177
    aget v4, p1, v12

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v0, v4

    .line 178
    long-to-int v4, v0

    aput v4, p1, v12

    .line 179
    shr-long/2addr v0, v7

    .line 181
    :cond_2a
    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 182
    long-to-int v4, v0

    const/4 v5, 0x2

    aput v4, p1, v5

    .line 183
    shr-long/2addr v0, v7

    .line 188
    .end local v2    # "xx06":J
    :cond_36
    cmp-long v4, v0, v10

    if-eqz v4, :cond_46

    const/4 v4, 0x6

    const/4 v5, 0x3

    invoke-static {v4, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    if-eqz v4, :cond_46

    .line 191
    :goto_42
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 193
    :cond_45
    return-void

    .line 189
    :cond_46
    const/4 v4, 0x5

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_45

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->P:[I

    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat192;->gte([I[I)Z

    move-result v4

    .line 188
    if-eqz v4, :cond_45

    goto :goto_42
.end method

.method public static square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 197
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 198
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 199
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 200
    return-void
.end method

.method public static squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 206
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    .line 207
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 208
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    .line 210
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 212
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat192;->square([I[I)V

    .line 213
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->reduce([I[I)V

    goto :goto_a

    .line 215
    :cond_15
    return-void
.end method

.method private static subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide v8, 0xffffffffL

    const/16 v6, 0x20

    .line 269
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x1

    sub-long v0, v2, v4

    .line 270
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 271
    shr-long/2addr v0, v6

    .line 272
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_25

    .line 274
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 275
    long-to-int v2, v0

    aput v2, p0, v10

    .line 276
    shr-long/2addr v0, v6

    .line 278
    :cond_25
    aget v2, p0, v11

    int-to-long v2, v2

    and-long/2addr v2, v8

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 279
    long-to-int v2, v0

    aput v2, p0, v11

    .line 280
    shr-long/2addr v0, v6

    .line 281
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3c

    .line 283
    const/4 v2, 0x6

    const/4 v3, 0x3

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 285
    :cond_3c
    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 219
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat192;->sub([I[I[I)I

    move-result v0

    .line 220
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 222
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->subPInvFrom([I)V

    .line 224
    :cond_9
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0xc

    .line 228
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 229
    .local v0, "c":I
    if-eqz v0, :cond_19

    .line 231
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v1

    if-eqz v1, :cond_19

    .line 233
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 236
    :cond_19
    return-void
.end method

.method public static twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v2, 0x0

    .line 240
    const/4 v1, 0x6

    invoke-static {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 241
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

    .line 243
    :cond_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP192R1Field;->addPInvTo([I)V

    .line 245
    :cond_19
    return-void
.end method
