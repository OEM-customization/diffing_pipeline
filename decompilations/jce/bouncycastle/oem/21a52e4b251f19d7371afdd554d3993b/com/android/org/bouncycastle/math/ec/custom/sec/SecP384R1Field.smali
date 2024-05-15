.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;
.super Ljava/lang/Object;
.source "SecP384R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P11:I = -0x1

.field static final blacklist PExt:[I

.field private static final blacklist PExt23:I = -0x1

.field private static final blacklist PExtInv:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 19
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_38

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    .line 22
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    return-void

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

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 30
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 31
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 33
    :cond_17
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 35
    :cond_1a
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 39
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 40
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0x17

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 42
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 44
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 47
    :cond_26
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 51
    const/16 v0, 0xc

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 52
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1a

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 54
    :cond_17
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 56
    :cond_1a
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 251
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 252
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 253
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 254
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 255
    long-to-int v8, v1

    aput v8, p0, v7

    .line 256
    shr-long/2addr v1, v0

    .line 257
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    .line 259
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 260
    long-to-int v10, v1

    aput v10, p0, v9

    .line 261
    shr-long/2addr v1, v0

    .line 263
    :cond_2e
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 264
    long-to-int v10, v1

    aput v10, p0, v9

    .line 265
    shr-long/2addr v1, v0

    .line 266
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 267
    long-to-int v3, v1

    aput v3, p0, v9

    .line 268
    shr-long v0, v1, v0

    .line 269
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_4f

    .line 271
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 273
    :cond_4f
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 60
    const/16 v0, 0x180

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 61
    .local v0, "z":[I
    const/16 v1, 0xb

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1c

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    const/16 v2, 0xc

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 63
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 65
    :cond_1c
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 70
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0xc

    if-nez v1, :cond_d

    .line 72
    invoke-static {v2, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 76
    :cond_d
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v2, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 77
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 79
    .end local v0    # "c":I
    :goto_16
    return-void
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 83
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 84
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->mul([I[I[I)V

    .line 85
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 86
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 90
    const/16 v0, 0xc

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 92
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    goto :goto_11

    .line 96
    :cond_c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 98
    :goto_11
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 46
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 102
    move-object/from16 v0, p1

    const/16 v1, 0x10

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx16":J
    const/16 v5, 0x11

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx17":J
    const/16 v7, 0x12

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx18":J
    const/16 v9, 0x13

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 103
    .local v9, "xx19":J
    const/16 v11, 0x14

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx20":J
    const/16 v13, 0x15

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx21":J
    const/16 v15, 0x16

    aget v15, p0, v15

    move-wide/from16 v16, v9

    .end local v9    # "xx19":J
    .local v16, "xx19":J
    int-to-long v9, v15

    and-long/2addr v9, v3

    .local v9, "xx22":J
    const/16 v15, 0x17

    aget v15, p0, v15

    move-wide/from16 v18, v7

    .end local v7    # "xx18":J
    .local v18, "xx18":J
    int-to-long v7, v15

    and-long/2addr v7, v3

    .line 105
    .local v7, "xx23":J
    const-wide/16 v20, 0x1

    .line 107
    .local v20, "n":J
    const/16 v15, 0xc

    aget v15, p0, v15

    move-wide/from16 v22, v1

    .end local v1    # "xx16":J
    .local v22, "xx16":J
    int-to-long v1, v15

    and-long/2addr v1, v3

    add-long/2addr v1, v11

    const-wide/16 v24, 0x1

    sub-long v1, v1, v24

    .line 108
    .local v1, "t0":J
    const/16 v15, 0xd

    aget v15, p0, v15

    move-wide/from16 v26, v11

    .end local v11    # "xx20":J
    .local v26, "xx20":J
    int-to-long v11, v15

    and-long/2addr v11, v3

    add-long/2addr v11, v9

    .line 109
    .local v11, "t1":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v28, v11

    .end local v11    # "t1":J
    .local v28, "t1":J
    int-to-long v11, v15

    and-long/2addr v11, v3

    add-long/2addr v11, v9

    add-long/2addr v11, v7

    .line 110
    .local v11, "t2":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v30, v11

    .end local v11    # "t2":J
    .local v30, "t2":J
    int-to-long v11, v15

    and-long/2addr v11, v3

    add-long/2addr v11, v7

    .line 111
    .local v11, "t3":J
    add-long v32, v5, v13

    .line 112
    .local v32, "t4":J
    sub-long v34, v13, v7

    .line 113
    .local v34, "t5":J
    sub-long v36, v9, v7

    .line 114
    .local v36, "t6":J
    add-long v38, v1, v34

    .line 116
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 117
    .local v40, "cc":J
    const/4 v15, 0x0

    move-wide/from16 v42, v9

    .end local v9    # "xx22":J
    .local v42, "xx22":J
    aget v9, p0, v15

    int-to-long v9, v9

    and-long/2addr v9, v3

    add-long v9, v9, v38

    add-long v9, v40, v9

    .line 118
    .end local v40    # "cc":J
    .local v9, "cc":J
    long-to-int v3, v9

    aput v3, v0, v15

    .line 119
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 120
    const/4 v4, 0x1

    aget v15, p0, v4

    int-to-long v3, v15

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long/2addr v3, v7

    sub-long/2addr v3, v1

    add-long v3, v3, v28

    add-long/2addr v9, v3

    .line 121
    long-to-int v3, v9

    const/4 v4, 0x1

    aput v3, v0, v4

    .line 122
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 123
    const/4 v3, 0x2

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    sub-long/2addr v3, v13

    sub-long v3, v3, v28

    add-long v3, v3, v30

    add-long/2addr v9, v3

    .line 124
    long-to-int v3, v9

    const/4 v4, 0x2

    aput v3, v0, v4

    .line 125
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 126
    const/4 v3, 0x3

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    sub-long v3, v3, v30

    add-long/2addr v3, v11

    add-long v3, v3, v38

    add-long/2addr v9, v3

    .line 127
    long-to-int v3, v9

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 128
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 129
    const/4 v3, 0x4

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v22

    add-long/2addr v3, v13

    add-long v3, v3, v28

    sub-long/2addr v3, v11

    add-long v3, v3, v38

    add-long/2addr v9, v3

    .line 130
    long-to-int v3, v9

    const/4 v4, 0x4

    aput v3, v0, v4

    .line 131
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 132
    const/4 v3, 0x5

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    sub-long v3, v3, v22

    add-long v3, v3, v28

    add-long v3, v3, v30

    add-long v3, v3, v32

    add-long/2addr v9, v3

    .line 133
    long-to-int v3, v9

    const/4 v4, 0x5

    aput v3, v0, v4

    .line 134
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 135
    const/4 v3, 0x6

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v18

    sub-long/2addr v3, v5

    add-long v3, v3, v30

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    .line 136
    long-to-int v3, v9

    const/4 v4, 0x6

    aput v3, v0, v4

    .line 137
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 138
    const/4 v3, 0x7

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v22

    add-long v3, v3, v16

    sub-long v3, v3, v18

    add-long/2addr v3, v11

    add-long/2addr v9, v3

    .line 139
    long-to-int v3, v9

    const/4 v4, 0x7

    aput v3, v0, v4

    .line 140
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 141
    const/16 v3, 0x8

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v22

    add-long/2addr v3, v5

    add-long v3, v3, v26

    sub-long v3, v3, v16

    add-long/2addr v9, v3

    .line 142
    long-to-int v3, v9

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 143
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 144
    const/16 v3, 0x9

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v18

    sub-long v3, v3, v26

    add-long v3, v3, v32

    add-long/2addr v9, v3

    .line 145
    long-to-int v3, v9

    const/16 v4, 0x9

    aput v3, v0, v4

    .line 146
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 147
    const/16 v3, 0xa

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v18

    add-long v3, v3, v16

    sub-long v3, v3, v34

    add-long v3, v3, v36

    add-long/2addr v9, v3

    .line 148
    long-to-int v3, v9

    const/16 v4, 0xa

    aput v3, v0, v4

    .line 149
    const/16 v3, 0x20

    shr-long/2addr v9, v3

    .line 150
    const/16 v3, 0xb

    aget v4, p0, v3

    int-to-long v3, v4

    const-wide v40, 0xffffffffL

    and-long v3, v3, v40

    add-long v3, v3, v16

    add-long v3, v3, v26

    sub-long v3, v3, v36

    add-long/2addr v9, v3

    .line 151
    long-to-int v3, v9

    const/16 v4, 0xb

    aput v3, v0, v4

    .line 152
    const/16 v3, 0x20

    shr-long v3, v9, v3

    .line 153
    .end local v9    # "cc":J
    .local v3, "cc":J
    add-long v3, v3, v24

    .line 157
    long-to-int v9, v3

    invoke-static {v9, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce32(I[I)V

    .line 158
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 14
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 162
    const-wide/16 v0, 0x0

    .line 164
    .local v0, "cc":J
    const-wide/16 v2, 0x0

    if-eqz p0, :cond_49

    .line 166
    int-to-long v4, p0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    .line 168
    .local v4, "xx12":J
    const/4 v8, 0x0

    aget v9, p1, v8

    int-to-long v9, v9

    and-long/2addr v9, v6

    add-long/2addr v9, v4

    add-long/2addr v0, v9

    .line 169
    long-to-int v9, v0

    aput v9, p1, v8

    .line 170
    const/16 v8, 0x20

    shr-long/2addr v0, v8

    .line 171
    const/4 v9, 0x1

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    sub-long/2addr v10, v4

    add-long/2addr v0, v10

    .line 172
    long-to-int v10, v0

    aput v10, p1, v9

    .line 173
    shr-long/2addr v0, v8

    .line 174
    cmp-long v9, v0, v2

    if-eqz v9, :cond_33

    .line 176
    const/4 v9, 0x2

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v0, v10

    .line 177
    long-to-int v10, v0

    aput v10, p1, v9

    .line 178
    shr-long/2addr v0, v8

    .line 180
    :cond_33
    const/4 v9, 0x3

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v6

    add-long/2addr v10, v4

    add-long/2addr v0, v10

    .line 181
    long-to-int v10, v0

    aput v10, p1, v9

    .line 182
    shr-long/2addr v0, v8

    .line 183
    const/4 v9, 0x4

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v6, v10

    add-long/2addr v6, v4

    add-long/2addr v0, v6

    .line 184
    long-to-int v6, v0

    aput v6, p1, v9

    .line 185
    shr-long/2addr v0, v8

    .line 190
    .end local v4    # "xx12":J
    :cond_49
    cmp-long v2, v0, v2

    const/16 v3, 0xc

    if-eqz v2, :cond_56

    const/4 v2, 0x5

    invoke-static {v3, p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    move-result v2

    if-nez v2, :cond_65

    :cond_56
    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_68

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    .line 191
    invoke-static {v3, p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_68

    .line 193
    :cond_65
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 195
    :cond_68
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 199
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 200
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 201
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 202
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 208
    const/16 v0, 0x18

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 209
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 210
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    .line 212
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    .line 214
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat384;->square([I[I)V

    .line 215
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->reduce([I[I)V

    goto :goto_c

    .line 217
    :cond_17
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 277
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 278
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 279
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 280
    const/4 v7, 0x1

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 281
    long-to-int v8, v1

    aput v8, p0, v7

    .line 282
    shr-long/2addr v1, v0

    .line 283
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2e

    .line 285
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 286
    long-to-int v10, v1

    aput v10, p0, v9

    .line 287
    shr-long/2addr v1, v0

    .line 289
    :cond_2e
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 290
    long-to-int v10, v1

    aput v10, p0, v9

    .line 291
    shr-long/2addr v1, v0

    .line 292
    const/4 v9, 0x4

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v3, v10

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 293
    long-to-int v3, v1

    aput v3, p0, v9

    .line 294
    shr-long v0, v1, v0

    .line 295
    .end local v1    # "c":J
    .local v0, "c":J
    cmp-long v2, v0, v7

    if-eqz v2, :cond_4f

    .line 297
    const/16 v2, 0xc

    const/4 v3, 0x5

    invoke-static {v2, p0, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 299
    :cond_4f
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 221
    const/16 v0, 0xc

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 222
    .local v0, "c":I
    if-eqz v0, :cond_b

    .line 224
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->subPInvFrom([I)V

    .line 226
    :cond_b
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 230
    const/16 v0, 0x18

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 231
    .local v1, "c":I
    if-eqz v1, :cond_17

    .line 233
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_17

    .line 235
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 238
    :cond_17
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 242
    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v1

    .line 243
    .local v1, "c":I
    if-nez v1, :cond_18

    const/16 v2, 0xb

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->P:[I

    invoke-static {v0, p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 245
    :cond_18
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP384R1Field;->addPInvTo([I)V

    .line 247
    :cond_1b
    return-void
.end method
