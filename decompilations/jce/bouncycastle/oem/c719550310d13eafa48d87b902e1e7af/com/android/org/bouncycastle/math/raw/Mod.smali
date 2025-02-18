.class public abstract Lcom/android/org/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;
.source "Mod.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I[I)V
    .registers 6
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    .line 117
    array-length v1, p0

    .line 118
    .local v1, "len":I
    invoke-static {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v0

    .line 119
    .local v0, "c":I
    if-eqz v0, :cond_a

    .line 121
    invoke-static {v1, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 123
    :cond_a
    return-void
.end method

.method private static getTrailingZeroes(I)I
    .registers 3
    .param p0, "x"    # I

    .prologue
    .line 191
    const/4 v0, 0x0

    .line 192
    .local v0, "count":I
    :goto_1
    and-int/lit8 v1, p0, 0x1

    if-nez v1, :cond_a

    .line 194
    ushr-int/lit8 p0, p0, 0x1

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 197
    :cond_a
    return v0
.end method

.method public static inverse32(I)I
    .registers 3
    .param p0, "d"    # I

    .prologue
    .line 12
    move v0, p0

    .line 13
    .local v0, "x":I
    mul-int v1, p0, p0

    rsub-int/lit8 v1, v1, 0x2

    mul-int v0, p0, v1

    .line 14
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 15
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 16
    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    .line 18
    return v0
.end method

.method private static inversionResult([II[I[I)V
    .registers 6
    .param p0, "p"    # [I
    .param p1, "ac"    # I
    .param p2, "a"    # [I
    .param p3, "z"    # [I

    .prologue
    const/4 v1, 0x0

    .line 137
    if-gez p1, :cond_8

    .line 139
    array-length v0, p0

    invoke-static {v0, p2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    .line 145
    :goto_7
    return-void

    .line 143
    :cond_8
    array-length v0, p0

    invoke-static {p2, v1, p3, v1, v0}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_7
.end method

.method private static inversionStep([I[II[II)I
    .registers 11
    .param p0, "p"    # [I
    .param p1, "u"    # [I
    .param p2, "uLen"    # I
    .param p3, "x"    # [I
    .param p4, "xc"    # I

    .prologue
    const/4 v5, 0x0

    .line 149
    array-length v2, p0

    .line 150
    .local v2, "len":I
    const/4 v0, 0x0

    .line 151
    .local v0, "count":I
    :goto_3
    aget v4, p1, v5

    if-nez v4, :cond_d

    .line 153
    invoke-static {p2, p1, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownWord(I[II)I

    .line 154
    add-int/lit8 v0, v0, 0x20

    goto :goto_3

    .line 158
    :cond_d
    aget v4, p1, v5

    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Mod;->getTrailingZeroes(I)I

    move-result v3

    .line 159
    .local v3, "zeroes":I
    if-lez v3, :cond_19

    .line 161
    invoke-static {p2, p1, v3, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBits(I[III)I

    .line 162
    add-int/2addr v0, v3

    .line 166
    :cond_19
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    if-ge v1, v0, :cond_35

    .line 168
    aget v4, p3, v5

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_29

    .line 170
    if-gez p4, :cond_2f

    .line 172
    invoke-static {v2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v4

    add-int/2addr p4, v4

    .line 181
    :cond_29
    :goto_29
    invoke-static {v2, p3, p4}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 176
    :cond_2f
    invoke-static {v2, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v4

    add-int/2addr p4, v4

    goto :goto_29

    .line 184
    :cond_35
    return p4
.end method

.method public static invert([I[I[I)V
    .registers 13
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "z"    # [I

    .prologue
    const/4 v9, 0x0

    .line 23
    array-length v4, p0

    .line 24
    .local v4, "len":I
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isZero(I[I)Z

    move-result v8

    if-eqz v8, :cond_11

    .line 26
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v9, "\'x\' cannot be 0"

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 28
    :cond_11
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_1b

    .line 30
    invoke-static {p1, v9, p2, v9, v4}, Ljava/lang/System;->arraycopy([II[III)V

    .line 31
    return-void

    .line 34
    :cond_1b
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v5

    .line 35
    .local v5, "u":[I
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v0

    .line 36
    .local v0, "a":[I
    const/4 v8, 0x1

    aput v8, v0, v9

    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, "ac":I
    aget v8, v5, v9

    and-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_31

    .line 41
    invoke-static {p0, v5, v4, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v1

    .line 43
    :cond_31
    invoke-static {v4, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_3b

    .line 45
    invoke-static {p0, v1, v0, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    .line 46
    return-void

    .line 49
    :cond_3b
    invoke-static {v4, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->copy(I[I)[I

    move-result-object v7

    .line 50
    .local v7, "v":[I
    invoke-static {v4}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    .line 51
    .local v2, "b":[I
    const/4 v3, 0x0

    .line 53
    .local v3, "bc":I
    move v6, v4

    .line 57
    .local v6, "uvLen":I
    :cond_45
    :goto_45
    add-int/lit8 v8, v6, -0x1

    aget v8, v5, v8

    if-nez v8, :cond_54

    add-int/lit8 v8, v6, -0x1

    aget v8, v7, v8

    if-nez v8, :cond_54

    .line 59
    add-int/lit8 v6, v6, -0x1

    goto :goto_45

    .line 62
    :cond_54
    invoke-static {v6, v5, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 64
    invoke-static {v6, v7, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 66
    invoke-static {v4, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v3

    add-int/2addr v1, v8

    .line 67
    invoke-static {p0, v5, v6, v0, v1}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v1

    .line 68
    invoke-static {v6, v5}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 70
    invoke-static {p0, v1, v0, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    .line 71
    return-void

    .line 76
    :cond_71
    invoke-static {v6, v5, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    .line 78
    invoke-static {v4, v0, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v8

    sub-int/2addr v8, v1

    add-int/2addr v3, v8

    .line 79
    invoke-static {p0, v7, v6, v2, v3}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionStep([I[II[II)I

    move-result v3

    .line 80
    invoke-static {v6, v7}, Lcom/android/org/bouncycastle/math/raw/Nat;->isOne(I[I)Z

    move-result v8

    if-eqz v8, :cond_45

    .line 82
    invoke-static {p0, v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Mod;->inversionResult([II[I[I)V

    .line 83
    return-void
.end method

.method public static random([I)[I
    .registers 8
    .param p0, "p"    # [I

    .prologue
    .line 91
    array-length v1, p0

    .line 92
    .local v1, "len":I
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 93
    .local v3, "rand":Ljava/util/Random;
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    .line 95
    .local v4, "s":[I
    add-int/lit8 v5, v1, -0x1

    aget v2, p0, v5

    .line 96
    .local v2, "m":I
    ushr-int/lit8 v5, v2, 0x1

    or-int/2addr v2, v5

    .line 97
    ushr-int/lit8 v5, v2, 0x2

    or-int/2addr v2, v5

    .line 98
    ushr-int/lit8 v5, v2, 0x4

    or-int/2addr v2, v5

    .line 99
    ushr-int/lit8 v5, v2, 0x8

    or-int/2addr v2, v5

    .line 100
    ushr-int/lit8 v5, v2, 0x10

    or-int/2addr v2, v5

    .line 104
    :cond_1d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    if-eq v0, v1, :cond_29

    .line 106
    invoke-virtual {v3}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v4, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 108
    :cond_29
    add-int/lit8 v5, v1, -0x1

    aget v6, v4, v5

    and-int/2addr v6, v2

    aput v6, v4, v5

    .line 110
    invoke-static {v1, v4, p0}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v5

    if-nez v5, :cond_1d

    .line 112
    return-object v4
.end method

.method public static subtract([I[I[I[I)V
    .registers 6
    .param p0, "p"    # [I
    .param p1, "x"    # [I
    .param p2, "y"    # [I
    .param p3, "z"    # [I

    .prologue
    .line 127
    array-length v1, p0

    .line 128
    .local v1, "len":I
    invoke-static {v1, p1, p2, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v0

    .line 129
    .local v0, "c":I
    if-eqz v0, :cond_a

    .line 131
    invoke-static {v1, p0, p3}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    .line 133
    :cond_a
    return-void
.end method
