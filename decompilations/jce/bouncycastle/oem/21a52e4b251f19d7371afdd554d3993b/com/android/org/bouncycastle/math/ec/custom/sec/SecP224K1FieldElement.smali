.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP224K1FieldElement.java"


# static fields
.field private static final blacklist PRECOMP_POW2:[I

.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 19
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    return-void

    nop

    :array_e
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 36
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 37
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 25
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 26
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 31
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 32
    return-void

    .line 28
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .line 40
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 42
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 76
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 77
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->add([I[I[I)V

    .line 78
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 83
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 84
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->addOne([I[I)V

    .line 85
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 105
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 106
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    .line 107
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 108
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist core-platform-api test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 229
    if-ne p1, p0, :cond_4

    .line 231
    const/4 v0, 0x1

    return v0

    .line 234
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v0, :cond_a

    .line 236
    const/4 v0, 0x0

    return v0

    .line 239
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    .line 240
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 66
    const-string v0, "SecP224K1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 71
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist core-platform-api test-api hashCode()I
    .registers 5

    .line 245
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 128
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 129
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->P:[I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    .line 130
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 97
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 98
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 99
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 113
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 114
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->negate([I[I)V

    .line 115
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 17

    .line 152
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    .line 153
    .local v1, "x1":[I
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isZero([I)Z

    move-result v2

    if-nez v2, :cond_c0

    invoke-static {v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->isOne([I)Z

    move-result v2

    if-eqz v2, :cond_12

    goto/16 :goto_c0

    .line 158
    :cond_12
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v2

    .line 159
    .local v2, "x2":[I
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 160
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 161
    move-object v3, v2

    .line 162
    .local v3, "x3":[I
    invoke-static {v2, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 163
    invoke-static {v3, v1, v3}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 164
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    .line 165
    .local v4, "x4":[I
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 166
    invoke-static {v4, v1, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 167
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v5

    .line 168
    .local v5, "x8":[I
    const/4 v6, 0x4

    invoke-static {v4, v6, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 169
    invoke-static {v5, v4, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 170
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v7

    .line 171
    .local v7, "x11":[I
    const/4 v8, 0x3

    invoke-static {v5, v8, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 172
    invoke-static {v7, v3, v7}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 173
    move-object v9, v7

    .line 174
    .local v9, "x19":[I
    const/16 v10, 0x8

    invoke-static {v7, v10, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 175
    invoke-static {v9, v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 176
    move-object v10, v5

    .line 177
    .local v10, "x23":[I
    invoke-static {v9, v6, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 178
    invoke-static {v10, v4, v10}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 179
    move-object v11, v4

    .line 180
    .local v11, "x42":[I
    const/16 v12, 0x13

    invoke-static {v10, v12, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 181
    invoke-static {v11, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 182
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v12

    .line 183
    .local v12, "x84":[I
    const/16 v13, 0x2a

    invoke-static {v11, v13, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 184
    invoke-static {v12, v11, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 185
    move-object v13, v11

    .line 186
    .local v13, "x107":[I
    const/16 v14, 0x17

    invoke-static {v12, v14, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 187
    invoke-static {v13, v10, v13}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 188
    move-object v14, v10

    .line 189
    .local v14, "x191":[I
    const/16 v15, 0x54

    invoke-static {v13, v15, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 190
    invoke-static {v14, v12, v14}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 192
    move-object v15, v14

    .line 193
    .local v15, "t1":[I
    const/16 v6, 0x14

    invoke-static {v15, v6, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 194
    invoke-static {v15, v9, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 195
    invoke-static {v15, v8, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 196
    invoke-static {v15, v1, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 197
    const/4 v6, 0x2

    invoke-static {v15, v6, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 198
    invoke-static {v15, v1, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 199
    const/4 v6, 0x4

    invoke-static {v15, v6, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->squareN([II[I)V

    .line 200
    invoke-static {v15, v3, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 201
    invoke-static {v15, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 203
    move-object v6, v12

    .line 204
    .local v6, "t2":[I
    invoke-static {v15, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 206
    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_aa

    .line 208
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    .line 215
    :cond_aa
    sget-object v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->PRECOMP_POW2:[I

    invoke-static {v15, v8, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->multiply([I[I[I)V

    .line 217
    invoke-static {v15, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 219
    invoke-static {v1, v6}, Lcom/android/org/bouncycastle/math/raw/Nat224;->eq([I[I)Z

    move-result v8

    if-eqz v8, :cond_be

    .line 221
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v8, v15}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v8

    .line 224
    :cond_be
    const/4 v8, 0x0

    return-object v8

    .line 155
    .end local v2    # "x2":[I
    .end local v3    # "x3":[I
    .end local v4    # "x4":[I
    .end local v5    # "x8":[I
    .end local v6    # "t2":[I
    .end local v7    # "x11":[I
    .end local v9    # "x19":[I
    .end local v10    # "x23":[I
    .end local v11    # "x42":[I
    .end local v12    # "x84":[I
    .end local v13    # "x107":[I
    .end local v14    # "x191":[I
    .end local v15    # "t1":[I
    :cond_c0
    :goto_c0
    return-object v0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 120
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 121
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->square([I[I)V

    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 90
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v0

    .line 91
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1Field;->subtract([I[I[I)V

    .line 92
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat224;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP224K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat224;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
