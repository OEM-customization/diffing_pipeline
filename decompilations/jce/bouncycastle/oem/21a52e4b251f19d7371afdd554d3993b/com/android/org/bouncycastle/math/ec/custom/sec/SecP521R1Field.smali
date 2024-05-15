.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;
.super Ljava/lang/Object;
.source "SecP521R1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P16:I = 0x1ff


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    return-void

    :array_a
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x1ff
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

    .line 21
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    add-int/2addr v1, v2

    .line 22
    .local v1, "c":I
    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_1a

    if-ne v1, v2, :cond_20

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p2, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 24
    :cond_1a
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 25
    and-int/2addr v1, v2

    .line 27
    :cond_20
    aput v1, p2, v0

    .line 28
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 32
    const/16 v0, 0x10

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    .line 33
    .local v1, "c":I
    const/16 v2, 0x1ff

    if-gt v1, v2, :cond_17

    if-ne v1, v2, :cond_1d

    sget-object v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 35
    :cond_17
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 36
    and-int/2addr v1, v2

    .line 38
    :cond_1d
    aput v1, p1, v0

    .line 39
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 43
    const/16 v0, 0x209

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v0

    .line 44
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    const/16 v2, 0x11

    invoke-static {v2, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 46
    invoke-static {v2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    .line 48
    :cond_13
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 53
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 54
    .local v1, "x16":I
    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    move-result v2

    .line 55
    .local v2, "c":I
    ushr-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v2, 0x17

    or-int/2addr v3, v4

    aput v3, p1, v0

    .line 56
    return-void
.end method

.method protected static blacklist implMultiply([I[I[I)V
    .registers 12
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 147
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat512;->mul([I[I[I)V

    .line 149
    const/16 v0, 0x10

    aget v8, p0, v0

    .local v8, "x16":I
    aget v0, p1, v0

    .line 150
    .local v0, "y16":I
    const/16 v1, 0x10

    const/16 v7, 0x10

    move v2, v8

    move-object v3, p1

    move v4, v0

    move-object v5, p0

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->mul31BothAdd(II[II[I[II)I

    move-result v1

    mul-int v2, v8, v0

    add-int/2addr v1, v2

    const/16 v2, 0x20

    aput v1, p2, v2

    .line 151
    return-void
.end method

.method protected static blacklist implSquare([I[I)V
    .registers 9
    .param p0, "x"    # [I
    .param p1, "zz"    # [I

    .line 155
    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat512;->square([I[I)V

    .line 157
    const/16 v0, 0x10

    aget v0, p0, v0

    .line 158
    .local v0, "x16":I
    shl-int/lit8 v2, v0, 0x1

    const/16 v1, 0x10

    const/4 v4, 0x0

    const/16 v6, 0x10

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat;->mulWordAddTo(II[II[II)I

    move-result v1

    mul-int v2, v0, v0

    add-int/2addr v1, v2

    const/16 v2, 0x20

    aput v1, p1, v2

    .line 159
    return-void
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 60
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 61
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implMultiply([I[I[I)V

    .line 62
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 63
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 67
    const/16 v0, 0x11

    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 69
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->zero(I[I)V

    goto :goto_11

    .line 73
    :cond_c
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, v1, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    .line 75
    :goto_11
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 10
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 81
    const/16 v0, 0x20

    aget v0, p0, v0

    .line 82
    .local v0, "xx32":I
    const/16 v1, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x9

    const/4 v7, 0x0

    move-object v2, p0

    move v5, v0

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[IIII[II)I

    move-result v1

    ushr-int/lit8 v1, v1, 0x17

    .line 83
    .local v1, "c":I
    ushr-int/lit8 v2, v0, 0x9

    add-int/2addr v1, v2

    .line 84
    const/16 v2, 0x10

    invoke-static {v2, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v3

    add-int/2addr v1, v3

    .line 85
    const/16 v3, 0x1ff

    if-gt v1, v3, :cond_2c

    if-ne v1, v3, :cond_32

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v2, p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 87
    :cond_2c
    invoke-static {v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v4

    add-int/2addr v1, v4

    .line 88
    and-int/2addr v1, v3

    .line 90
    :cond_32
    aput v1, p1, v2

    .line 91
    return-void
.end method

.method public static blacklist reduce23([I)V
    .registers 6
    .param p0, "z"    # [I

    .line 95
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 96
    .local v1, "z16":I
    ushr-int/lit8 v2, v1, 0x9

    invoke-static {v0, v2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->addWordTo(II[I)I

    move-result v2

    and-int/lit16 v3, v1, 0x1ff

    add-int/2addr v2, v3

    .line 97
    .local v2, "c":I
    const/16 v3, 0x1ff

    if-gt v2, v3, :cond_1b

    if-ne v2, v3, :cond_21

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->P:[I

    invoke-static {v0, p0, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->eq(I[I[I)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 99
    :cond_1b
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I)I

    move-result v4

    add-int/2addr v2, v4

    .line 100
    and-int/2addr v2, v3

    .line 102
    :cond_21
    aput v2, p0, v0

    .line 103
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 107
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 108
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 109
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 110
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 116
    const/16 v0, 0x21

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 117
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 118
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    .line 120
    :goto_c
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_17

    .line 122
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->implSquare([I[I)V

    .line 123
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP521R1Field;->reduce([I[I)V

    goto :goto_c

    .line 125
    :cond_17
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 129
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    aget v2, p0, v0

    add-int/2addr v1, v2

    aget v2, p1, v0

    sub-int/2addr v1, v2

    .line 130
    .local v1, "c":I
    if-gez v1, :cond_15

    .line 132
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->dec(I[I)I

    move-result v2

    add-int/2addr v1, v2

    .line 133
    and-int/lit16 v1, v1, 0x1ff

    .line 135
    :cond_15
    aput v1, p2, v0

    .line 136
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 140
    const/16 v0, 0x10

    aget v1, p0, v0

    .line 141
    .local v1, "x16":I
    shl-int/lit8 v2, v1, 0x17

    invoke-static {v0, p0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v2

    shl-int/lit8 v3, v1, 0x1

    or-int/2addr v2, v3

    .line 142
    .local v2, "c":I
    and-int/lit16 v3, v2, 0x1ff

    aput v3, p1, v0

    .line 143
    return-void
.end method
