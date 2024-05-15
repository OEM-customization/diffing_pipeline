.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;
.super Ljava/lang/Object;
.source "SecP256K1Field.java"


# static fields
.field static final blacklist P:[I

.field private static final blacklist P7:I = -0x1

.field static final blacklist PExt:[I

.field private static final blacklist PExt15:I = -0x1

.field private static final blacklist PExtInv:[I

.field private static final blacklist PInv33:I = 0x3d1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 15
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1c

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 17
    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_30

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    .line 20
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_54

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    return-void

    :array_1c
    .array-data 4
        -0x3d1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_30
    .array-data 4
        0xe90a1
        0x7a2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x7a2
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_54
    .array-data 4
        -0xe90a1
        -0x7a3
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7a1
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

    .line 28
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 29
    .local v0, "c":I
    if-nez v0, :cond_14

    const/4 v1, 0x7

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1b

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 31
    :cond_14
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 33
    :cond_1b
    return-void
.end method

.method public static blacklist addExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 37
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->add(I[I[I[I)I

    move-result v1

    .line 38
    .local v1, "c":I
    if-nez v1, :cond_17

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 40
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 42
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 45
    :cond_26
    return-void
.end method

.method public static blacklist addOne([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 49
    const/16 v0, 0x8

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->inc(I[I[I)I

    move-result v1

    .line 50
    .local v1, "c":I
    if-nez v1, :cond_16

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 52
    :cond_16
    const/16 v2, 0x3d1

    invoke-static {v0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 54
    :cond_1b
    return-void
.end method

.method public static blacklist fromBigInteger(Ljava/math/BigInteger;)[I
    .registers 4
    .param p0, "x"    # Ljava/math/BigInteger;

    .line 58
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    .line 59
    .local v0, "z":[I
    const/4 v1, 0x7

    aget v1, v0, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_17

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 61
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->subFrom([I[I)I

    .line 63
    :cond_17
    return-object v0
.end method

.method public static blacklist half([I[I)V
    .registers 5
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 68
    const/4 v0, 0x0

    aget v1, p0, v0

    and-int/lit8 v1, v1, 0x1

    const/16 v2, 0x8

    if-nez v1, :cond_d

    .line 70
    invoke-static {v2, p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II[I)I

    goto :goto_16

    .line 74
    :cond_d
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p0, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->add([I[I[I)I

    move-result v0

    .line 75
    .local v0, "c":I
    invoke-static {v2, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    .line 77
    .end local v0    # "c":I
    :goto_16
    return-void
.end method

.method public static blacklist multiply([I[I[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 81
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 82
    .local v0, "tt":[I
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    .line 83
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 84
    return-void
.end method

.method public static blacklist multiplyAddToExt([I[I[I)V
    .registers 7
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "zz"    # [I

    .line 88
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mulAddTo([I[I[I)I

    move-result v0

    .line 89
    .local v0, "c":I
    const/16 v1, 0x10

    if-nez v0, :cond_17

    const/16 v2, 0xf

    aget v2, p2, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_26

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExt:[I

    invoke-static {v1, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 91
    :cond_17
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->addTo(I[I[I)I

    move-result v2

    if-eqz v2, :cond_26

    .line 93
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v1, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->incAt(I[II)I

    .line 96
    :cond_26
    return-void
.end method

.method public static blacklist negate([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 100
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 102
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->zero([I)V

    goto :goto_f

    .line 106
    :cond_a
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    .line 108
    :goto_f
    return-void
.end method

.method public static blacklist reduce([I[I)V
    .registers 9
    .param p0, "xx"    # [I
    .param p1, "z"    # [I

    .line 112
    const/16 v0, 0x3d1

    const/16 v2, 0x8

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33Add(I[II[II[II)J

    move-result-wide v0

    .line 113
    .local v0, "cc":J
    const/16 v2, 0x3d1

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, p1, v3}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33DWordAdd(IJ[II)I

    move-result v3

    .line 117
    .local v3, "c":I
    if-nez v3, :cond_24

    const/4 v4, 0x7

    aget v4, p1, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_29

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v4}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 119
    :cond_24
    const/16 v4, 0x8

    invoke-static {v4, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 121
    :cond_29
    return-void
.end method

.method public static blacklist reduce32(I[I)V
    .registers 5
    .param p0, "x"    # I
    .param p1, "z"    # [I

    .line 125
    const/16 v0, 0x3d1

    if-eqz p0, :cond_b

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->mul33WordAdd(II[II)I

    move-result v1

    if-nez v1, :cond_19

    :cond_b
    const/4 v1, 0x7

    aget v1, p1, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1e

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    .line 126
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 128
    :cond_19
    const/16 v1, 0x8

    invoke-static {v1, v0, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 130
    :cond_1e
    return-void
.end method

.method public static blacklist square([I[I)V
    .registers 3
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 134
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 135
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 136
    invoke-static {v0, p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 137
    return-void
.end method

.method public static blacklist squareN([II[I)V
    .registers 4
    .param p0, "x"    # [I
    .param p1, "n"    # I
    .param p2, "z"    # [I

    .line 143
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->createExt()[I

    move-result-object v0

    .line 144
    .local v0, "tt":[I
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 145
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    .line 147
    :goto_a
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_15

    .line 149
    invoke-static {p2, v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->square([I[I)V

    .line 150
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->reduce([I[I)V

    goto :goto_a

    .line 152
    :cond_15
    return-void
.end method

.method public static blacklist subtract([I[I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "y"    # [I
    .param p2, "z"    # [I

    .line 156
    invoke-static {p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->sub([I[I[I)I

    move-result v0

    .line 157
    .local v0, "c":I
    if-eqz v0, :cond_d

    .line 159
    const/16 v1, 0x8

    const/16 v2, 0x3d1

    invoke-static {v1, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub33From(II[I)I

    .line 161
    :cond_d
    return-void
.end method

.method public static blacklist subtractExt([I[I[I)V
    .registers 7
    .param p0, "xx"    # [I
    .param p1, "yy"    # [I
    .param p2, "zz"    # [I

    .line 165
    const/16 v0, 0x10

    invoke-static {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->sub(I[I[I[I)I

    move-result v1

    .line 166
    .local v1, "c":I
    if-eqz v1, :cond_17

    .line 168
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v3, v2

    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/math/raw/Nat;->subFrom(I[I[I)I

    move-result v2

    if-eqz v2, :cond_17

    .line 170
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->PExtInv:[I

    array-length v2, v2

    invoke-static {v0, p2, v2}, Lcom/android/org/bouncycastle/math/raw/Nat;->decAt(I[II)I

    .line 173
    :cond_17
    return-void
.end method

.method public static blacklist twice([I[I)V
    .registers 6
    .param p0, "x"    # [I
    .param p1, "z"    # [I

    .line 177
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->shiftUpBit(I[II[I)I

    move-result v1

    .line 178
    .local v1, "c":I
    if-nez v1, :cond_17

    const/4 v2, 0x7

    aget v2, p1, v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    sget-object v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 180
    :cond_17
    const/16 v2, 0x3d1

    invoke-static {v0, v2, p1}, Lcom/android/org/bouncycastle/math/raw/Nat;->add33To(II[I)I

    .line 182
    :cond_1c
    return-void
.end method
