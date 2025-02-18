.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P7:I = -0x1

.field static final PExt:[I

.field private static final PExt15:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 15
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    .line 8
    return-void

    .line 13
    nop

    :array_14
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x0
        0x0
        0x0
        0x1
        -0x1
    .end array-data

    .line 15
    :array_28
    .array-data 4
        0x1
        0x0
        0x0
        -0x2
        -0x1
        -0x1
        -0x2
        0x1
        -0x2
        0x1
        -0x2
        0x1
        0x1
        -0x2
        0x2
        -0x2
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
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 24
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 26
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

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
    const/16 v3, 0x10

    .line 32
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 33
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0xf

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 35
    :cond_17
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v3, v1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 37
    :cond_1c
    return-void
.end method

.method public static addOne([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 41
    const/16 v1, 0x8

    invoke-static {v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 42
    .local v0, "c":I
    if-nez v0, :cond_16

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_19

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 44
    :cond_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 46
    :cond_19
    return-void
.end method

.method private static addPInvTo([I)V
    .registers 12
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    .line 248
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long v0, v2, v8

    .line 249
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 250
    shr-long/2addr v0, v6

    .line 251
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2f

    .line 253
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 254
    long-to-int v2, v0

    aput v2, p0, v10

    .line 255
    shr-long/2addr v0, v6

    .line 256
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 257
    long-to-int v2, v0

    const/4 v3, 0x2

    aput v2, p0, v3

    .line 258
    shr-long/2addr v0, v6

    .line 260
    :cond_2f
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 261
    long-to-int v2, v0

    const/4 v3, 0x3

    aput v2, p0, v3

    .line 262
    shr-long/2addr v0, v6

    .line 263
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_57

    .line 265
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 266
    long-to-int v2, v0

    const/4 v3, 0x4

    aput v2, p0, v3

    .line 267
    shr-long/2addr v0, v6

    .line 268
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 269
    long-to-int v2, v0

    const/4 v3, 0x5

    aput v2, p0, v3

    .line 270
    shr-long/2addr v0, v6

    .line 272
    :cond_57
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 273
    long-to-int v2, v0

    const/4 v3, 0x6

    aput v2, p0, v3

    .line 274
    shr-long/2addr v0, v6

    .line 275
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 276
    long-to-int v2, v0

    const/4 v3, 0x7

    aput v2, p0, v3

    .line 278
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 50
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 51
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 53
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 55
    :cond_17
    return-object v0
.end method

.method public static half([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 60
    aget v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_d

    .line 62
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 69
    :goto_c
    return-void

    .line 66
    :cond_d
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 67
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_c
.end method

.method public static multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 73
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 74
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 75
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 76
    return-void
.end method

.method public static multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x10

    .line 80
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 81
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0xf

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 83
    :cond_17
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v3, v1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 85
    :cond_1c
    return-void
.end method

.method public static negate([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 89
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->zero([I)V

    .line 97
    :goto_9
    return-void

    .line 95
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    goto :goto_9
.end method

.method public static reduce([I[I)V
    .registers 44
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 101
    const/16 v38, 0x8

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v22, v38, v40

    .local v22, "xx08":J
    const/16 v38, 0x9

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v24, v38, v40

    .local v24, "xx09":J
    const/16 v38, 0xa

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v26, v38, v40

    .local v26, "xx10":J
    const/16 v38, 0xb

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v28, v38, v40

    .line 102
    .local v28, "xx11":J
    const/16 v38, 0xc

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v30, v38, v40

    .local v30, "xx12":J
    const/16 v38, 0xd

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v32, v38, v40

    .local v32, "xx13":J
    const/16 v38, 0xe

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v34, v38, v40

    .local v34, "xx14":J
    const/16 v38, 0xf

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v36, v38, v40

    .line 104
    .local v36, "xx15":J
    const-wide/16 v4, 0x6

    .line 106
    .local v4, "n":J
    const-wide/16 v38, 0x6

    sub-long v22, v22, v38

    .line 108
    add-long v6, v22, v24

    .line 109
    .local v6, "t0":J
    add-long v8, v24, v26

    .line 110
    .local v8, "t1":J
    add-long v38, v26, v28

    sub-long v10, v38, v36

    .line 111
    .local v10, "t2":J
    add-long v12, v28, v30

    .line 112
    .local v12, "t3":J
    add-long v14, v30, v32

    .line 113
    .local v14, "t4":J
    add-long v16, v32, v34

    .line 114
    .local v16, "t5":J
    add-long v18, v34, v36

    .line 115
    .local v18, "t6":J
    sub-long v20, v16, v6

    .line 117
    .local v20, "t7":J
    const-wide/16 v2, 0x0

    .line 118
    .local v2, "cc":J
    const/16 v38, 0x0

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    sub-long v38, v38, v12

    sub-long v38, v38, v20

    .line 117
    const-wide/16 v40, 0x0

    .line 118
    add-long v2, v40, v38

    .line 119
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x0

    aput v38, p1, v39

    .line 120
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 121
    const/16 v38, 0x1

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v8

    sub-long v38, v38, v14

    sub-long v38, v38, v18

    add-long v2, v2, v38

    .line 122
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x1

    aput v38, p1, v39

    .line 123
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 124
    const/16 v38, 0x2

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v10

    sub-long v38, v38, v16

    add-long v2, v2, v38

    .line 125
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x2

    aput v38, p1, v39

    .line 126
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 127
    const/16 v38, 0x3

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x1

    shl-long v40, v12, v40

    add-long v38, v38, v40

    add-long v38, v38, v20

    sub-long v38, v38, v18

    add-long v2, v2, v38

    .line 128
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x3

    aput v38, p1, v39

    .line 129
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 130
    const/16 v38, 0x4

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x1

    shl-long v40, v14, v40

    add-long v38, v38, v40

    add-long v38, v38, v34

    sub-long v38, v38, v8

    add-long v2, v2, v38

    .line 131
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x4

    aput v38, p1, v39

    .line 132
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 133
    const/16 v38, 0x5

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x1

    shl-long v40, v16, v40

    add-long v38, v38, v40

    sub-long v38, v38, v10

    add-long v2, v2, v38

    .line 134
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x5

    aput v38, p1, v39

    .line 135
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 136
    const/16 v38, 0x6

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x1

    shl-long v40, v18, v40

    add-long v38, v38, v40

    add-long v38, v38, v20

    add-long v2, v2, v38

    .line 137
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x6

    aput v38, p1, v39

    .line 138
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 139
    const/16 v38, 0x7

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x1

    shl-long v40, v36, v40

    add-long v38, v38, v40

    add-long v38, v38, v22

    sub-long v38, v38, v10

    sub-long v38, v38, v14

    add-long v2, v2, v38

    .line 140
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x7

    aput v38, p1, v39

    .line 141
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 142
    const-wide/16 v38, 0x6

    add-long v2, v2, v38

    .line 146
    long-to-int v0, v2

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 147
    return-void
.end method

.method public static reduce32(I[I)V
    .registers 15
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v12, 0x7

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 151
    const-wide/16 v0, 0x0

    .line 153
    .local v0, "cc":J
    if-eqz p0, :cond_73

    .line 155
    int-to-long v4, p0

    and-long v2, v4, v6

    .line 157
    .local v2, "xx08":J
    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long v0, v10, v4

    .line 158
    long-to-int v4, v0

    aput v4, p1, v9

    .line 159
    shr-long/2addr v0, v8

    .line 160
    cmp-long v4, v0, v10

    if-eqz v4, :cond_37

    .line 162
    const/4 v4, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 163
    long-to-int v4, v0

    const/4 v5, 0x1

    aput v4, p1, v5

    .line 164
    shr-long/2addr v0, v8

    .line 165
    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 166
    long-to-int v4, v0

    const/4 v5, 0x2

    aput v4, p1, v5

    .line 167
    shr-long/2addr v0, v8

    .line 169
    :cond_37
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 170
    long-to-int v4, v0

    const/4 v5, 0x3

    aput v4, p1, v5

    .line 171
    shr-long/2addr v0, v8

    .line 172
    cmp-long v4, v0, v10

    if-eqz v4, :cond_5d

    .line 174
    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 175
    long-to-int v4, v0

    const/4 v5, 0x4

    aput v4, p1, v5

    .line 176
    shr-long/2addr v0, v8

    .line 177
    const/4 v4, 0x5

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 178
    long-to-int v4, v0

    const/4 v5, 0x5

    aput v4, p1, v5

    .line 179
    shr-long/2addr v0, v8

    .line 181
    :cond_5d
    const/4 v4, 0x6

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 182
    long-to-int v4, v0

    const/4 v5, 0x6

    aput v4, p1, v5

    .line 183
    shr-long/2addr v0, v8

    .line 184
    aget v4, p1, v12

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 185
    long-to-int v4, v0

    aput v4, p1, v12

    .line 186
    shr-long/2addr v0, v8

    .line 191
    .end local v2    # "xx08":J
    :cond_73
    cmp-long v4, v0, v10

    if-nez v4, :cond_84

    aget v4, p1, v12

    const/4 v5, -0x1

    if-ne v4, v5, :cond_87

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 193
    :cond_84
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 195
    :cond_87
    return-void
.end method

.method public static square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 199
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 200
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 201
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 202
    return-void
.end method

.method public static squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 208
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 209
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 210
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 212
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 214
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 215
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_a

    .line 217
    :cond_15
    return-void
.end method

.method private static subPInvFrom([I)V
    .registers 12
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    const-wide/16 v8, 0x1

    const/16 v6, 0x20

    const-wide v4, 0xffffffffL

    .line 282
    aget v2, p0, v7

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long v0, v2, v8

    .line 283
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v7

    .line 284
    shr-long/2addr v0, v6

    .line 285
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2f

    .line 287
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 288
    long-to-int v2, v0

    aput v2, p0, v10

    .line 289
    shr-long/2addr v0, v6

    .line 290
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 291
    long-to-int v2, v0

    const/4 v3, 0x2

    aput v2, p0, v3

    .line 292
    shr-long/2addr v0, v6

    .line 294
    :cond_2f
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 295
    long-to-int v2, v0

    const/4 v3, 0x3

    aput v2, p0, v3

    .line 296
    shr-long/2addr v0, v6

    .line 297
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_57

    .line 299
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 300
    long-to-int v2, v0

    const/4 v3, 0x4

    aput v2, p0, v3

    .line 301
    shr-long/2addr v0, v6

    .line 302
    const/4 v2, 0x5

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 303
    long-to-int v2, v0

    const/4 v3, 0x5

    aput v2, p0, v3

    .line 304
    shr-long/2addr v0, v6

    .line 306
    :cond_57
    const/4 v2, 0x6

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 307
    long-to-int v2, v0

    const/4 v3, 0x6

    aput v2, p0, v3

    .line 308
    shr-long/2addr v0, v6

    .line 309
    const/4 v2, 0x7

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v4

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 310
    long-to-int v2, v0

    const/4 v3, 0x7

    aput v2, p0, v3

    .line 312
    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 221
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 222
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 224
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 226
    :cond_9
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .registers 6
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v2, 0x10

    .line 230
    invoke-static {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 231
    .local v0, "c":I
    if-eqz v0, :cond_d

    .line 233
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v2, v1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 235
    :cond_d
    return-void
.end method

.method public static twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/4 v2, 0x0

    .line 239
    const/16 v1, 0x8

    invoke-static {v1, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 240
    .local v0, "c":I
    if-nez v0, :cond_17

    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 242
    :cond_17
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 244
    :cond_1a
    return-void
.end method
