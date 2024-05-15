.class public abstract Lcom/android/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist add([I[I[I[I)V
    .registers 6
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 121
    array-length v0, p0

    .line 122
    .local v0, "len":I
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 123
    .local v1, "c":I
    if-eqz v1, :cond_a

    .line 125
    invoke-static {v0, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 127
    :cond_a
    return-void
.end method

.method private static blacklist getTrailingZeroes(I)I
    .registers 3
    .param p0, "x"    # I

    .line 195
    const/4 v0, 0x0

    .line 196
    .local v0, "count":I
    :goto_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_a

    .line 198
    ushr-int/lit8 p0, p0, 0x1

    .line 199
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 201
    :cond_a
    return v0
.end method

.method public static blacklist inverse32(I)I
    .registers 3
    .param p0, "d"    # I

    .line 16
    move v0, p0

    .line 17
    .local v0, "x":I
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 18
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 19
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 20
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 22
    return v0
.end method

.method private static blacklist inversionResult([II[I[I)V
    .registers 6
    .param p0, "p"    # [I
    .param p1, "ac"    # I
    .param p2, "a"    # [I
    .param p3, "z"    # [I

    .line 141
    if-gez p1, :cond_7

    .line 143
    array-length v0, p0

    invoke-static {v0, p2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    goto :goto_c

    .line 147
    :cond_7
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :goto_c
    return-void
.end method

.method private static blacklist inversionStep([I[II[II)I
    .registers 10
    .param p0, "p"    # [I
    .param p1, "u"    # [I
    .param p2, "uLen"    # I
    .param p3, "x"    # [I
    .param p4, "xc"    # I

    .line 153
    array-length v0, p0

    .line 154
    .local v0, "len":I
    const/4 v1, 0x0

    .line 155
    .local v1, "count":I
    :goto_2
    const/4 v2, 0x0

    aget v3, p1, v2

    if-nez v3, :cond_d

    .line 157
    invoke-static {p2, p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    .line 158
    add-int/lit8 v1, v1, 0x20

    goto :goto_2

    .line 162
    :cond_d
    aget v3, p1, v2

    invoke-static {v3}, Lcom/android/org/bouncycastle/math/raw/Mod;->getTrailingZeroes(I)I

    move-result v3

    .line 163
    .local v3, "zeroes":I
    if-lez v3, :cond_19

    .line 165
    invoke-static {p2, p1, v3, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    .line 166
    add-int/2addr v1, v3

    .line 170
    .end local v3    # "zeroes":I
    :cond_19
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1a
    if-ge v3, v1, :cond_35

    .line 172
    aget v4, p3, v2

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2f

    .line 174
    if-gez p4, :cond_2a

    .line 176
    invoke-static {v0, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v4

    add-int/2addr p4, v4

    goto :goto_2f

    .line 180
    :cond_2a
    invoke-static {v0, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v4

    add-int/2addr p4, v4

    .line 185
    :cond_2f
    :goto_2f
    invoke-static {v0, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 170
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 188
    .end local v3    # "i":I
    :cond_35
    return p4
.end method

.method public static blacklist invert([I[I[I)V
    .registers 12
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .line 27
    array-length v0, p0

    .line 28
    .local v0, "len":I
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v1

    if-nez v1, :cond_7e

    .line 32
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    .line 34
    invoke-static {p1, v2, p2, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    return-void

    .line 38
    :cond_12
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v1

    .line 39
    .local v1, "u":[I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    .line 40
    .local v3, "a":[I
    const/4 v4, 0x1

    aput v4, v3, v2

    .line 41
    const/4 v5, 0x0

    .line 43
    .local v5, "ac":I
    aget v2, v1, v2

    and-int/2addr v2, v4

    if-nez v2, :cond_27

    .line 45
    invoke-static {p0, v1, v0, v3, v5}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v5

    .line 47
    :cond_27
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 49
    invoke-static {p0, v5, v3, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    .line 50
    return-void

    .line 53
    :cond_31
    invoke-static {v0, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v2

    .line 54
    .local v2, "v":[I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 55
    .local v4, "b":[I
    const/4 v6, 0x0

    .line 57
    .local v6, "bc":I
    move v7, v0

    .line 61
    .local v7, "uvLen":I
    :cond_3b
    :goto_3b
    add-int/lit8 v8, v7, -0x1

    aget v8, v1, v8

    if-nez v8, :cond_4a

    add-int/lit8 v8, v7, -0x1

    aget v8, v2, v8

    if-nez v8, :cond_4a

    .line 63
    add-int/lit8 v7, v7, -0x1

    goto :goto_3b

    .line 66
    :cond_4a
    invoke-static {v7, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_67

    .line 68
    invoke-static {v7, v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 70
    invoke-static {v0, v4, v3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v6

    add-int/2addr v5, v8

    .line 71
    invoke-static {p0, v1, v7, v3, v5}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v5

    .line 72
    invoke-static {v7, v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 74
    invoke-static {p0, v5, v3, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    .line 75
    return-void

    .line 80
    :cond_67
    invoke-static {v7, v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 82
    invoke-static {v0, v3, v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v5

    add-int/2addr v6, v8

    .line 83
    invoke-static {p0, v2, v7, v4, v6}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v6

    .line 84
    invoke-static {v7, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 86
    invoke-static {p0, v6, v4, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    .line 87
    return-void

    .line 30
    .end local v1    # "u":[I
    .end local v2    # "v":[I
    .end local v3    # "a":[I
    .end local v4    # "b":[I
    .end local v5    # "ac":I
    .end local v6    # "bc":I
    .end local v7    # "uvLen":I
    :cond_7e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "\'x\' cannot be 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist random([I)[I
    .registers 7
    .param p0, "p"    # [I

    .line 95
    array-length v0, p0

    .line 96
    .local v0, "len":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 97
    .local v1, "rand":Ljava/util/Random;
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 99
    .local v2, "s":[I
    add-int/lit8 v3, v0, -0x1

    aget v3, p0, v3

    .line 100
    .local v3, "m":I
    ushr-int/lit8 v4, v3, 0x1

    or-int/2addr v3, v4

    .line 101
    ushr-int/lit8 v4, v3, 0x2

    or-int/2addr v3, v4

    .line 102
    ushr-int/lit8 v4, v3, 0x4

    or-int/2addr v3, v4

    .line 103
    ushr-int/lit8 v4, v3, 0x8

    or-int/2addr v3, v4

    .line 104
    ushr-int/lit8 v4, v3, 0x10

    or-int/2addr v3, v4

    .line 108
    :goto_1d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-eq v4, v0, :cond_29

    .line 110
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v2, v4

    .line 108
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 112
    .end local v4    # "i":I
    :cond_29
    add-int/lit8 v4, v0, -0x1

    aget v5, v2, v4

    and-int/2addr v5, v3

    aput v5, v2, v4

    .line 114
    invoke-static {v0, v2, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v4

    if-nez v4, :cond_37

    .line 116
    return-object v2

    .line 114
    :cond_37
    goto :goto_1d
.end method

.method public static blacklist subtract([I[I[I[I)V
    .registers 6
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .line 131
    array-length v0, p0

    .line 132
    .local v0, "len":I
    invoke-static {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 133
    .local v1, "c":I
    if-eqz v1, :cond_a

    .line 135
    invoke-static {v0, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 137
    :cond_a
    return-void
.end method
