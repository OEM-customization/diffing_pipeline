.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;
.super Ljava/lang/Object;
.source "SecP256R1Field.java"


# static fields
.field private static final blacklist M:J = 0xffffffffL

.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field static final blacklist PExt:[I

.field private static final blacklist PExt15s1:I = 0x7fffffff


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_14

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    .line 19
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_28

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    return-void

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
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 28
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

    .line 30
    :cond_14
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

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
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 37
    .local v1, "c":I
    if-nez v1, :cond_1b

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_20

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 39
    :cond_1b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 41
    :cond_20
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 45
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v0

    .line 46
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

    .line 48
    :cond_16
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 50
    :cond_19
    return-void
.end method

.method private static blacklist addPInvTo([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 252
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    .line 253
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 254
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 255
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 257
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 258
    long-to-int v10, v1

    aput v10, p0, v9

    .line 259
    shr-long/2addr v1, v0

    .line 260
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 261
    long-to-int v10, v1

    aput v10, p0, v9

    .line 262
    shr-long/2addr v1, v0

    .line 264
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    sub-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 265
    long-to-int v10, v1

    aput v10, p0, v9

    .line 266
    shr-long/2addr v1, v0

    .line 267
    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    .line 269
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 270
    long-to-int v8, v1

    aput v8, p0, v7

    .line 271
    shr-long/2addr v1, v0

    .line 272
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 273
    long-to-int v8, v1

    aput v8, p0, v7

    .line 274
    shr-long/2addr v1, v0

    .line 276
    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    sub-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 277
    long-to-int v8, v1

    aput v8, p0, v7

    .line 278
    shr-long v0, v1, v0

    .line 279
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    add-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 280
    long-to-int v3, v0

    aput v3, p0, v2

    .line 282
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 54
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 55
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 57
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 59
    :cond_17
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 64
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    .line 66
    invoke-static {v2, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 70
    :cond_d
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 71
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 73
    .end local v0    # "c":I
    :goto_16
    return-void
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 77
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 78
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 79
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 80
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 84
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 85
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_1b

    const/16 v2, 0xf

    aget v2, p2, v2

    ushr-int/lit8 v2, v2, 0x1

    const v3, 0x7fffffff

    if-lt v2, v3, :cond_20

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 87
    :cond_1b
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 89
    :cond_20
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 93
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 95
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->zero([I)V

    goto :goto_f

    .line 99
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 101
    :goto_f
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 52
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 105
    move-object/from16 v0, p1

    const/16 v1, 0x8

    aget v1, p0, v1

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    .local v1, "xx08":J
    const/16 v5, 0x9

    aget v5, p0, v5

    int-to-long v5, v5

    and-long/2addr v5, v3

    .local v5, "xx09":J
    const/16 v7, 0xa

    aget v7, p0, v7

    int-to-long v7, v7

    and-long/2addr v7, v3

    .local v7, "xx10":J
    const/16 v9, 0xb

    aget v9, p0, v9

    int-to-long v9, v9

    and-long/2addr v9, v3

    .line 106
    .local v9, "xx11":J
    const/16 v11, 0xc

    aget v11, p0, v11

    int-to-long v11, v11

    and-long/2addr v11, v3

    .local v11, "xx12":J
    const/16 v13, 0xd

    aget v13, p0, v13

    int-to-long v13, v13

    and-long/2addr v13, v3

    .local v13, "xx13":J
    const/16 v15, 0xe

    aget v15, p0, v15

    move-wide/from16 v16, v13

    .end local v13    # "xx13":J
    .local v16, "xx13":J
    int-to-long v13, v15

    and-long/2addr v13, v3

    .local v13, "xx14":J
    const/16 v15, 0xf

    aget v15, p0, v15

    move-wide/from16 v18, v13

    .end local v13    # "xx14":J
    .local v18, "xx14":J
    int-to-long v13, v15

    and-long/2addr v13, v3

    .line 108
    .local v13, "xx15":J
    const-wide/16 v20, 0x6

    .line 110
    .local v20, "n":J
    const-wide/16 v22, 0x6

    sub-long v1, v1, v22

    .line 112
    add-long v24, v1, v5

    .line 113
    .local v24, "t0":J
    add-long v26, v5, v7

    .line 114
    .local v26, "t1":J
    add-long v28, v7, v9

    sub-long v28, v28, v13

    .line 115
    .local v28, "t2":J
    add-long v30, v9, v11

    .line 116
    .local v30, "t3":J
    add-long v32, v11, v16

    .line 117
    .local v32, "t4":J
    add-long v34, v16, v18

    .line 118
    .local v34, "t5":J
    add-long v36, v18, v13

    .line 119
    .local v36, "t6":J
    sub-long v38, v34, v24

    .line 121
    .local v38, "t7":J
    const-wide/16 v40, 0x0

    .line 122
    .local v40, "cc":J
    const/4 v15, 0x0

    move-wide/from16 v42, v5

    .end local v5    # "xx09":J
    .local v42, "xx09":J
    aget v5, p0, v15

    int-to-long v5, v5

    and-long/2addr v5, v3

    sub-long v5, v5, v30

    sub-long v5, v5, v38

    add-long v5, v40, v5

    .line 123
    .end local v40    # "cc":J
    .local v5, "cc":J
    long-to-int v3, v5

    aput v3, v0, v15

    .line 124
    const/16 v3, 0x20

    shr-long v4, v5, v3

    .line 125
    .end local v5    # "cc":J
    .local v4, "cc":J
    const/4 v6, 0x1

    aget v15, p0, v6

    move-wide/from16 v44, v7

    .end local v7    # "xx10":J
    .local v44, "xx10":J
    int-to-long v6, v15

    const-wide v40, 0xffffffffL

    and-long v6, v6, v40

    add-long v6, v6, v26

    sub-long v6, v6, v32

    sub-long v6, v6, v36

    add-long/2addr v4, v6

    .line 126
    long-to-int v6, v4

    const/4 v7, 0x1

    aput v6, v0, v7

    .line 127
    shr-long/2addr v4, v3

    .line 128
    const/4 v6, 0x2

    aget v7, p0, v6

    move-wide/from16 v46, v9

    .end local v9    # "xx11":J
    .local v46, "xx11":J
    int-to-long v8, v7

    const-wide v40, 0xffffffffL

    and-long v7, v8, v40

    add-long v7, v7, v28

    sub-long v7, v7, v34

    add-long/2addr v4, v7

    .line 129
    long-to-int v7, v4

    aput v7, v0, v6

    .line 130
    shr-long/2addr v4, v3

    .line 131
    const/4 v6, 0x3

    aget v7, p0, v6

    int-to-long v7, v7

    const-wide v40, 0xffffffffL

    and-long v48, v7, v40

    const/4 v7, 0x1

    shl-long v9, v30, v7

    add-long v48, v48, v9

    add-long v48, v48, v38

    sub-long v48, v48, v36

    add-long v4, v4, v48

    .line 132
    long-to-int v7, v4

    aput v7, v0, v6

    .line 133
    shr-long/2addr v4, v3

    .line 134
    const/4 v6, 0x4

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v32, v7

    add-long v9, v9, v48

    add-long v9, v9, v18

    sub-long v9, v9, v26

    add-long/2addr v4, v9

    .line 135
    long-to-int v7, v4

    aput v7, v0, v6

    .line 136
    shr-long/2addr v4, v3

    .line 137
    const/4 v6, 0x5

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v34, v7

    add-long v9, v9, v48

    sub-long v9, v9, v28

    add-long/2addr v4, v9

    .line 138
    long-to-int v7, v4

    aput v7, v0, v6

    .line 139
    shr-long/2addr v4, v3

    .line 140
    const/4 v6, 0x6

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v48, v36, v7

    add-long v9, v9, v48

    add-long v9, v9, v38

    add-long/2addr v4, v9

    .line 141
    long-to-int v7, v4

    aput v7, v0, v6

    .line 142
    shr-long/2addr v4, v3

    .line 143
    const/4 v6, 0x7

    aget v7, p0, v6

    int-to-long v9, v7

    const-wide v40, 0xffffffffL

    and-long v9, v9, v40

    const/4 v7, 0x1

    shl-long v7, v13, v7

    add-long/2addr v9, v7

    add-long/2addr v9, v1

    sub-long v9, v9, v28

    sub-long v9, v9, v32

    add-long/2addr v4, v9

    .line 144
    long-to-int v7, v4

    aput v7, v0, v6

    .line 145
    shr-long v3, v4, v3

    .line 146
    .end local v4    # "cc":J
    .local v3, "cc":J
    add-long v3, v3, v22

    .line 150
    long-to-int v5, v3

    invoke-static {v5, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce32(I[I)V

    .line 151
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 15
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 155
    const-wide/16 v0, 0x0

    .line 157
    .local v0, "cc":J
    const/4 v2, 0x7

    const-wide/16 v3, 0x0

    if-eqz p0, :cond_6b

    .line 159
    int-to-long v5, p0

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    .line 161
    .local v5, "xx08":J
    const/4 v9, 0x0

    aget v10, p1, v9

    int-to-long v10, v10

    and-long/2addr v10, v7

    add-long/2addr v10, v5

    add-long/2addr v0, v10

    .line 162
    long-to-int v10, v0

    aput v10, p1, v9

    .line 163
    const/16 v9, 0x20

    shr-long/2addr v0, v9

    .line 164
    cmp-long v10, v0, v3

    if-eqz v10, :cond_33

    .line 166
    const/4 v10, 0x1

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 167
    long-to-int v11, v0

    aput v11, p1, v10

    .line 168
    shr-long/2addr v0, v9

    .line 169
    const/4 v10, 0x2

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 170
    long-to-int v11, v0

    aput v11, p1, v10

    .line 171
    shr-long/2addr v0, v9

    .line 173
    :cond_33
    const/4 v10, 0x3

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 174
    long-to-int v11, v0

    aput v11, p1, v10

    .line 175
    shr-long/2addr v0, v9

    .line 176
    cmp-long v10, v0, v3

    if-eqz v10, :cond_56

    .line 178
    const/4 v10, 0x4

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 179
    long-to-int v11, v0

    aput v11, p1, v10

    .line 180
    shr-long/2addr v0, v9

    .line 181
    const/4 v10, 0x5

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    add-long/2addr v0, v11

    .line 182
    long-to-int v11, v0

    aput v11, p1, v10

    .line 183
    shr-long/2addr v0, v9

    .line 185
    :cond_56
    const/4 v10, 0x6

    aget v11, p1, v10

    int-to-long v11, v11

    and-long/2addr v11, v7

    sub-long/2addr v11, v5

    add-long/2addr v0, v11

    .line 186
    long-to-int v11, v0

    aput v11, p1, v10

    .line 187
    shr-long/2addr v0, v9

    .line 188
    aget v10, p1, v2

    int-to-long v10, v10

    and-long/2addr v7, v10

    add-long/2addr v7, v5

    add-long/2addr v0, v7

    .line 189
    long-to-int v7, v0

    aput v7, p1, v2

    .line 190
    shr-long/2addr v0, v9

    .line 195
    .end local v5    # "xx08":J
    :cond_6b
    cmp-long v3, v0, v3

    if-nez v3, :cond_7c

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7f

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_7f

    .line 197
    :cond_7c
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 199
    :cond_7f
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 203
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 204
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 205
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 206
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 212
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 213
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 214
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    .line 216
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 218
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 219
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->reduce([I[I)V

    goto :goto_a

    .line 221
    :cond_15
    return-void
.end method

.method private static blacklist subPInvFrom([I)V
    .registers 13
    .param p0, "z"    # [I

    .line 286
    const/4 v0, 0x0

    aget v1, p0, v0

    int-to-long v1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    const-wide/16 v5, 0x1

    sub-long/2addr v1, v5

    .line 287
    .local v1, "c":J
    long-to-int v7, v1

    aput v7, p0, v0

    .line 288
    const/16 v0, 0x20

    shr-long/2addr v1, v0

    .line 289
    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-eqz v9, :cond_2d

    .line 291
    const/4 v9, 0x1

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 292
    long-to-int v10, v1

    aput v10, p0, v9

    .line 293
    shr-long/2addr v1, v0

    .line 294
    const/4 v9, 0x2

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v1, v10

    .line 295
    long-to-int v10, v1

    aput v10, p0, v9

    .line 296
    shr-long/2addr v1, v0

    .line 298
    :cond_2d
    const/4 v9, 0x3

    aget v10, p0, v9

    int-to-long v10, v10

    and-long/2addr v10, v3

    add-long/2addr v10, v5

    add-long/2addr v1, v10

    .line 299
    long-to-int v10, v1

    aput v10, p0, v9

    .line 300
    shr-long/2addr v1, v0

    .line 301
    cmp-long v7, v1, v7

    if-eqz v7, :cond_50

    .line 303
    const/4 v7, 0x4

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 304
    long-to-int v8, v1

    aput v8, p0, v7

    .line 305
    shr-long/2addr v1, v0

    .line 306
    const/4 v7, 0x5

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v1, v8

    .line 307
    long-to-int v8, v1

    aput v8, p0, v7

    .line 308
    shr-long/2addr v1, v0

    .line 310
    :cond_50
    const/4 v7, 0x6

    aget v8, p0, v7

    int-to-long v8, v8

    and-long/2addr v8, v3

    add-long/2addr v8, v5

    add-long/2addr v1, v8

    .line 311
    long-to-int v8, v1

    aput v8, p0, v7

    .line 312
    shr-long v0, v1, v0

    .line 313
    .end local v1    # "c":J
    .local v0, "c":J
    const/4 v2, 0x7

    aget v7, p0, v2

    int-to-long v7, v7

    and-long/2addr v3, v7

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    .line 314
    long-to-int v3, v0

    aput v3, p0, v2

    .line 316
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 225
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 226
    .local v0, "c":I
    if-eqz v0, :cond_9

    .line 228
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subPInvFrom([I)V

    .line 230
    :cond_9
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 6
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 234
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 235
    .local v1, "c":I
    if-eqz v1, :cond_d

    .line 237
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->PExt:[I

    invoke-static {v0, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 239
    :cond_d
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 243
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v0

    .line 244
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

    .line 246
    :cond_17
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addPInvTo([I)V

    .line 248
    :cond_1a
    return-void
.end method
