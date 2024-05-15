.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "SecP256K1FieldElement.java"


# static fields
.field public static final Q:Ljava/math/BigInteger;


# instance fields
.field protected x:[I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 12
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Curve;->q:Ljava/math/BigInteger;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 28
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 18
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_14

    .line 20
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "x value invalid for SecP256K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_14
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_b

    .line 23
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 24
    return-void
.end method

.method protected constructor <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 34
    return-void
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 68
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 69
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->add([I[I[I)V

    .line 70
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .prologue
    .line 75
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 76
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->addOne([I[I)V

    .line 77
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 97
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 98
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    .line 99
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 100
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 197
    if-ne p1, p0, :cond_4

    .line 199
    const/4 v1, 0x1

    return v1

    .line 202
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    if-nez v1, :cond_a

    .line 204
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 207
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .line 208
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public getFieldName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    const-string/jumbo v0, "SecP256K1Field"

    return-object v0
.end method

.method public getFieldSize()I
    .registers 2

    .prologue
    .line 63
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 213
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .prologue
    .line 120
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 121
    .local v0, "z":[I
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->P:[I

    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/raw/Mod;->invert([I[I[I)V

    .line 122
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public isOne()Z
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public isZero()Z
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 89
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 90
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 91
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .prologue
    .line 105
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 106
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->negate([I[I)V

    .line 107
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 16

    .prologue
    .line 142
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    .line 143
    .local v2, "x1":[I
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v14

    if-nez v14, :cond_e

    invoke-static {v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v14

    if-eqz v14, :cond_f

    .line 145
    :cond_e
    return-object p0

    .line 148
    :cond_f
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v5

    .line 149
    .local v5, "x2":[I
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 150
    invoke-static {v5, v2, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 151
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v9

    .line 152
    .local v9, "x3":[I
    invoke-static {v5, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 153
    invoke-static {v9, v2, v9}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 154
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v11

    .line 155
    .local v11, "x6":[I
    const/4 v14, 0x3

    invoke-static {v9, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 156
    invoke-static {v11, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 157
    move-object v13, v11

    .line 158
    .local v13, "x9":[I
    const/4 v14, 0x3

    invoke-static {v11, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 159
    invoke-static {v11, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 160
    move-object v3, v11

    .line 161
    .local v3, "x11":[I
    const/4 v14, 0x2

    invoke-static {v11, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 162
    invoke-static {v11, v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 163
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v6

    .line 164
    .local v6, "x22":[I
    const/16 v14, 0xb

    invoke-static {v11, v14, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 165
    invoke-static {v6, v11, v6}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 166
    move-object v10, v11

    .line 167
    .local v10, "x44":[I
    const/16 v14, 0x16

    invoke-static {v6, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 168
    invoke-static {v11, v6, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 169
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v12

    .line 170
    .local v12, "x88":[I
    const/16 v14, 0x2c

    invoke-static {v11, v14, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 171
    invoke-static {v12, v11, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 172
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v4

    .line 173
    .local v4, "x176":[I
    const/16 v14, 0x58

    invoke-static {v12, v14, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 174
    invoke-static {v4, v12, v4}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 175
    move-object v7, v12

    .line 176
    .local v7, "x220":[I
    const/16 v14, 0x2c

    invoke-static {v4, v14, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 177
    invoke-static {v12, v11, v12}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 178
    move-object v8, v11

    .line 179
    .local v8, "x223":[I
    const/4 v14, 0x3

    invoke-static {v12, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 180
    invoke-static {v11, v9, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 182
    move-object v0, v11

    .line 183
    .local v0, "t1":[I
    const/16 v14, 0x17

    invoke-static {v11, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 184
    invoke-static {v11, v6, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 185
    const/4 v14, 0x6

    invoke-static {v11, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 186
    invoke-static {v11, v5, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->multiply([I[I[I)V

    .line 187
    const/4 v14, 0x2

    invoke-static {v11, v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->squareN([II[I)V

    .line 189
    move-object v1, v5

    .line 190
    .local v1, "t2":[I
    invoke-static {v11, v5}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 192
    invoke-static {v2, v5}, Lcom/android/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v14

    if-eqz v14, :cond_a0

    new-instance v14, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v14, v11}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    :goto_9f
    return-object v14

    :cond_a0
    const/4 v14, 0x0

    goto :goto_9f
.end method

.method public square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .prologue
    .line 112
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 113
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->square([I[I)V

    .line 114
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .prologue
    .line 82
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 83
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    .end local p1    # "b":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1Field;->subtract([I[I[I)V

    .line 84
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public testBitZero()Z
    .registers 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v2, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->getBit([II)I

    move-result v2

    if-ne v2, v0, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256K1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
