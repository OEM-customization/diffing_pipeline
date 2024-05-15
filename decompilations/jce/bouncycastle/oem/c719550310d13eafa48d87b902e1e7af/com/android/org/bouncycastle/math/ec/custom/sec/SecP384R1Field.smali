.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final M:J = 0xffffffffL

.field static final P:[I

.field private static final P11:I = -0x1

.field static final PExt:[I

.field private static final PExt23:I = -0x1

.field private static final PExtInv:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 15
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    .line 18
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    .line 8
    return-void

    .line 13
    :array_1c
    .array-data 4
        -0x1
        0x0
        0x0
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 15
    :array_38
    .array-data 4
        0x1
        -0x2
        0x0
        0x2
        0x0
        -0x2
        0x0
        0x2
        0x1
        0x0
        0x0
        0x0
        -0x2
        0x1
        0x0
        -0x2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    .line 18
    :array_6c
    .array-data 4
        -0x1
        0x1
        -0x1
        -0x3
        -0x1
        0x1
        -0x1
        -0x3
        -0x2
        -0x1
        -0x1
        -0x1
        0x1
        -0x2
        -0x1
        0x1
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
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    const/16 v3, 0xc

    .line 26
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 27
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0xb

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 29
    :cond_17
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 31
    :cond_1a
    return-void
.end method

.method public static addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x18

    .line 35
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 36
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0x17

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_28

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 38
    :cond_17
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v1

    if-eqz v1, :cond_28

    .line 40
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 43
    :cond_28
    return-void
.end method

.method public static addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0xc

    .line 47
    invoke-static {v3, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 48
    .local v0, "c":I
    if-nez v0, :cond_17

    const/16 v1, 0xb

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 50
    :cond_17
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 52
    :cond_1a
    return-void
.end method

.method private static addPInvTo([I)V
    .registers 12
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x1

    const-wide v6, 0xffffffffL

    const/16 v4, 0x20

    .line 247
    aget v2, p0, v5

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long v0, v2, v8

    .line 248
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v5

    .line 249
    shr-long/2addr v0, v4

    .line 250
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 251
    long-to-int v2, v0

    aput v2, p0, v10

    .line 252
    shr-long/2addr v0, v4

    .line 253
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_30

    .line 255
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 256
    long-to-int v2, v0

    const/4 v3, 0x2

    aput v2, p0, v3

    .line 257
    shr-long/2addr v0, v4

    .line 259
    :cond_30
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 260
    long-to-int v2, v0

    const/4 v3, 0x3

    aput v2, p0, v3

    .line 261
    shr-long/2addr v0, v4

    .line 262
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 263
    long-to-int v2, v0

    const/4 v3, 0x4

    aput v2, p0, v3

    .line 264
    shr-long/2addr v0, v4

    .line 265
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_54

    .line 267
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 269
    :cond_54
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 5
    .param p0, "x"    # Ljava/math/BigInteger;

    .prologue
    const/16 v3, 0xc

    .line 56
    const/16 v1, 0x180

    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 57
    .local v0, "z":[I
    const/16 v1, 0xb

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 59
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 61
    :cond_1c
    return-object v0
.end method

.method public static half([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0xc

    const/4 v2, 0x0

    .line 66
    aget v1, p0, v2

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_d

    .line 68
    invoke-static {v3, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    .line 75
    :goto_c
    return-void

    .line 72
    :cond_d
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 73
    .local v0, "c":I
    invoke-static {v3, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    goto :goto_c
.end method

.method public static multiply([I[I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 79
    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 80
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 81
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 82
    return-void
.end method

.method public static negate([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v1, 0xc

    .line 86
    invoke-static {v1, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 88
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    .line 94
    :goto_b
    return-void

    .line 92
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v1, v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    goto :goto_b
.end method

.method public static reduce([I[I)V
    .registers 44
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 98
    const/16 v38, 0x10

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v22, v38, v40

    .local v22, "xx16":J
    const/16 v38, 0x11

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v24, v38, v40

    .local v24, "xx17":J
    const/16 v38, 0x12

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v26, v38, v40

    .local v26, "xx18":J
    const/16 v38, 0x13

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v28, v38, v40

    .line 99
    .local v28, "xx19":J
    const/16 v38, 0x14

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v30, v38, v40

    .local v30, "xx20":J
    const/16 v38, 0x15

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v32, v38, v40

    .local v32, "xx21":J
    const/16 v38, 0x16

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v34, v38, v40

    .local v34, "xx22":J
    const/16 v38, 0x17

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v36, v38, v40

    .line 101
    .local v36, "xx23":J
    const-wide/16 v4, 0x1

    .line 103
    .local v4, "n":J
    const/16 v38, 0xc

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v30

    const-wide/16 v40, 0x1

    sub-long v6, v38, v40

    .line 104
    .local v6, "t0":J
    const/16 v38, 0xd

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v8, v38, v34

    .line 105
    .local v8, "t1":J
    const/16 v38, 0xe

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v34

    add-long v10, v38, v36

    .line 106
    .local v10, "t2":J
    const/16 v38, 0xf

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v12, v38, v36

    .line 107
    .local v12, "t3":J
    add-long v14, v24, v32

    .line 108
    .local v14, "t4":J
    sub-long v16, v32, v36

    .line 109
    .local v16, "t5":J
    sub-long v18, v34, v36

    .line 110
    .local v18, "t6":J
    add-long v20, v6, v16

    .line 112
    .local v20, "t7":J
    const-wide/16 v2, 0x0

    .line 113
    .local v2, "cc":J
    const/16 v38, 0x0

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v20

    .line 112
    const-wide/16 v40, 0x0

    .line 113
    add-long v2, v40, v38

    .line 114
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x0

    aput v38, p1, v39

    .line 115
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 116
    const/16 v38, 0x1

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v36

    sub-long v38, v38, v6

    add-long v38, v38, v8

    add-long v2, v2, v38

    .line 117
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x1

    aput v38, p1, v39

    .line 118
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 119
    const/16 v38, 0x2

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    sub-long v38, v38, v32

    sub-long v38, v38, v8

    add-long v38, v38, v10

    add-long v2, v2, v38

    .line 120
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x2

    aput v38, p1, v39

    .line 121
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 122
    const/16 v38, 0x3

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    sub-long v38, v38, v10

    add-long v38, v38, v12

    add-long v38, v38, v20

    add-long v2, v2, v38

    .line 123
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x3

    aput v38, p1, v39

    .line 124
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 125
    const/16 v38, 0x4

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v22

    add-long v38, v38, v32

    add-long v38, v38, v8

    sub-long v38, v38, v12

    add-long v38, v38, v20

    add-long v2, v2, v38

    .line 126
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x4

    aput v38, p1, v39

    .line 127
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 128
    const/16 v38, 0x5

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    sub-long v38, v38, v22

    add-long v38, v38, v8

    add-long v38, v38, v10

    add-long v38, v38, v14

    add-long v2, v2, v38

    .line 129
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x5

    aput v38, p1, v39

    .line 130
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 131
    const/16 v38, 0x6

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v26

    sub-long v38, v38, v24

    add-long v38, v38, v10

    add-long v38, v38, v12

    add-long v2, v2, v38

    .line 132
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x6

    aput v38, p1, v39

    .line 133
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 134
    const/16 v38, 0x7

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v22

    add-long v38, v38, v28

    sub-long v38, v38, v26

    add-long v38, v38, v12

    add-long v2, v2, v38

    .line 135
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x7

    aput v38, p1, v39

    .line 136
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 137
    const/16 v38, 0x8

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v22

    add-long v38, v38, v24

    add-long v38, v38, v30

    sub-long v38, v38, v28

    add-long v2, v2, v38

    .line 138
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x8

    aput v38, p1, v39

    .line 139
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 140
    const/16 v38, 0x9

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v26

    sub-long v38, v38, v30

    add-long v38, v38, v14

    add-long v2, v2, v38

    .line 141
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0x9

    aput v38, p1, v39

    .line 142
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 143
    const/16 v38, 0xa

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v26

    add-long v38, v38, v28

    sub-long v38, v38, v16

    add-long v38, v38, v18

    add-long v2, v2, v38

    .line 144
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0xa

    aput v38, p1, v39

    .line 145
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 146
    const/16 v38, 0xb

    aget v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    add-long v38, v38, v28

    add-long v38, v38, v30

    sub-long v38, v38, v18

    add-long v2, v2, v38

    .line 147
    long-to-int v0, v2

    move/from16 v38, v0

    const/16 v39, 0xb

    aput v38, p1, v39

    .line 148
    const/16 v38, 0x20

    shr-long v2, v2, v38

    .line 149
    const-wide/16 v38, 0x1

    add-long v2, v2, v38

    .line 153
    long-to-int v0, v2

    move/from16 v38, v0

    move/from16 v0, v38

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 154
    return-void
.end method

.method public static reduce32(I[I)V
    .registers 15
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .prologue
    const/4 v12, 0x1

    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x20

    const-wide v6, 0xffffffffL

    .line 158
    const-wide/16 v0, 0x0

    .line 160
    .local v0, "cc":J
    if-eqz p0, :cond_4e

    .line 162
    int-to-long v4, p0

    and-long v2, v4, v6

    .line 164
    .local v2, "xx12":J
    aget v4, p1, v9

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long v0, v10, v4

    .line 165
    long-to-int v4, v0

    aput v4, p1, v9

    .line 166
    shr-long/2addr v0, v8

    .line 167
    aget v4, p1, v12

    int-to-long v4, v4

    and-long/2addr v4, v6

    sub-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 168
    long-to-int v4, v0

    aput v4, p1, v12

    .line 169
    shr-long/2addr v0, v8

    .line 170
    cmp-long v4, v0, v10

    if-eqz v4, :cond_36

    .line 172
    const/4 v4, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v0, v4

    .line 173
    long-to-int v4, v0

    const/4 v5, 0x2

    aput v4, p1, v5

    .line 174
    shr-long/2addr v0, v8

    .line 176
    :cond_36
    const/4 v4, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 177
    long-to-int v4, v0

    const/4 v5, 0x3

    aput v4, p1, v5

    .line 178
    shr-long/2addr v0, v8

    .line 179
    const/4 v4, 0x4

    aget v4, p1, v4

    int-to-long v4, v4

    and-long/2addr v4, v6

    add-long/2addr v4, v2

    add-long/2addr v0, v4

    .line 180
    long-to-int v4, v0

    const/4 v5, 0x4

    aput v4, p1, v5

    .line 181
    shr-long/2addr v0, v8

    .line 186
    .end local v2    # "xx12":J
    :cond_4e
    cmp-long v4, v0, v10

    if-eqz v4, :cond_5f

    const/16 v4, 0xc

    const/4 v5, 0x5

    invoke-static {v4, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v4

    if-eqz v4, :cond_5f

    .line 189
    :goto_5b
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 191
    :cond_5e
    return-void

    .line 187
    :cond_5f
    const/16 v4, 0xb

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5e

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v5, 0xc

    invoke-static {v5, p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    .line 186
    if-eqz v4, :cond_5e

    goto :goto_5b
.end method

.method public static square([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    .line 195
    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 196
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 197
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 198
    return-void
.end method

.method public static squareN([II[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .prologue
    .line 204
    const/16 v1, 0x18

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 205
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 206
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 208
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    .line 210
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 211
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_c

    .line 213
    :cond_17
    return-void
.end method

.method private static subPInvFrom([I)V
    .registers 12
    .param p0, "z"    # [I

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-wide/16 v8, 0x1

    const-wide v6, 0xffffffffL

    const/16 v4, 0x20

    .line 273
    aget v2, p0, v5

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long v0, v2, v8

    .line 274
    .local v0, "c":J
    long-to-int v2, v0

    aput v2, p0, v5

    .line 275
    shr-long/2addr v0, v4

    .line 276
    aget v2, p0, v10

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 277
    long-to-int v2, v0

    aput v2, p0, v10

    .line 278
    shr-long/2addr v0, v4

    .line 279
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_30

    .line 281
    const/4 v2, 0x2

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    add-long/2addr v0, v2

    .line 282
    long-to-int v2, v0

    const/4 v3, 0x2

    aput v2, p0, v3

    .line 283
    shr-long/2addr v0, v4

    .line 285
    :cond_30
    const/4 v2, 0x3

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 286
    long-to-int v2, v0

    const/4 v3, 0x3

    aput v2, p0, v3

    .line 287
    shr-long/2addr v0, v4

    .line 288
    const/4 v2, 0x4

    aget v2, p0, v2

    int-to-long v2, v2

    and-long/2addr v2, v6

    sub-long/2addr v2, v8

    add-long/2addr v0, v2

    .line 289
    long-to-int v2, v0

    const/4 v3, 0x4

    aput v2, p0, v3

    .line 290
    shr-long/2addr v0, v4

    .line 291
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_54

    .line 293
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 295
    :cond_54
    return-void
.end method

.method public static subtract([I[I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .prologue
    .line 217
    const/16 v1, 0xc

    invoke-static {v1, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 218
    .local v0, "c":I
    if-eqz v0, :cond_b

    .line 220
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    .line 222
    :cond_b
    return-void
.end method

.method public static subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .prologue
    const/16 v3, 0x18

    .line 226
    invoke-static {v3, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 227
    .local v0, "c":I
    if-eqz v0, :cond_19

    .line 229
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v1, v1

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v1

    if-eqz v1, :cond_19

    .line 231
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v1, v1

    invoke-static {v3, p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 234
    :cond_19
    return-void
.end method

.method public static twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    .line 238
    invoke-static {v3, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 239
    .local v0, "c":I
    if-nez v0, :cond_18

    const/16 v1, 0xb

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v3, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 241
    :cond_18
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 243
    :cond_1b
    return-void
.end method
