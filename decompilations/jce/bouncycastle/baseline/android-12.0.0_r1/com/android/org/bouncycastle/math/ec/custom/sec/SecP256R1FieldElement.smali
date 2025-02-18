.class public Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;
.source "SecP256R1FieldElement.java"


# static fields
.field public static final blacklist Q:Ljava/math/BigInteger;


# instance fields
.field protected blacklist x:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 16
    new-instance v0, Ljava/math/BigInteger;

    .line 17
    const-string v1, "FFFFFFFF00000001000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFF"

    invoke-static {v1}, Lcom/android/org/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    .line 16
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 33
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;)V
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 23
    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_1a

    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1a

    .line 28
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->fromBigInteger(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 29
    return-void

    .line 25
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP256R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>([I)V
    .registers 2
    .param p1, "x"    # [I

    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractFp;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 39
    return-void
.end method


# virtual methods
.method public blacklist add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 73
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 74
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->add([I[I[I)V

    .line 75
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 80
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 81
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->addOne([I[I)V

    .line 82
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 102
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 103
    .local v0, "z":[I
    move-object v1, p1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->inv([I[I)V

    .line 104
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0, v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 105
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 176
    if-ne p1, p0, :cond_4

    .line 178
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    if-nez v0, :cond_a

    .line 183
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_a
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    .line 187
    .local v0, "o":Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v1

    return v1
.end method

.method public blacklist getFieldName()Ljava/lang/String;
    .registers 2

    .line 63
    const-string v0, "SecP256R1Field"

    return-object v0
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 68
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 192
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->Q:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-static {v1, v2, v3}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public blacklist invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 125
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 126
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->inv([I[I)V

    .line 127
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist isOne()Z
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v0

    return v0
.end method

.method public blacklist isZero()Z
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v0

    return v0
.end method

.method public blacklist multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 94
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 95
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 96
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 110
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 111
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->negate([I[I)V

    .line 112
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5

    .line 138
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    .line 139
    .local v0, "x1":[I
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isZero([I)Z

    move-result v1

    if-nez v1, :cond_61

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->isOne([I)Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_61

    .line 144
    :cond_f
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v1

    .line 145
    .local v1, "t1":[I
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v2

    .line 147
    .local v2, "t2":[I
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 148
    invoke-static {v1, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 150
    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 151
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 153
    const/4 v3, 0x4

    invoke-static {v2, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 154
    invoke-static {v1, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 156
    const/16 v3, 0x8

    invoke-static {v1, v3, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 157
    invoke-static {v2, v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 159
    const/16 v3, 0x10

    invoke-static {v2, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 160
    invoke-static {v1, v2, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 162
    const/16 v3, 0x20

    invoke-static {v1, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 163
    invoke-static {v1, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 165
    const/16 v3, 0x60

    invoke-static {v1, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 166
    invoke-static {v1, v0, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->multiply([I[I[I)V

    .line 168
    const/16 v3, 0x5e

    invoke-static {v1, v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->squareN([II[I)V

    .line 169
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 171
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/math/raw/Nat256;->eq([I[I)Z

    move-result v3

    if-eqz v3, :cond_5f

    new-instance v3, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v3, v1}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    goto :goto_60

    :cond_5f
    const/4 v3, 0x0

    :goto_60
    return-object v3

    .line 141
    .end local v1    # "t1":[I
    .end local v2    # "t2":[I
    :cond_61
    :goto_61
    return-object p0
.end method

.method public blacklist square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    .line 117
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 118
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->square([I[I)V

    .line 119
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 87
    invoke-static {}, Lcom/android/org/bouncycastle/math/raw/Nat256;->create()[I

    move-result-object v0

    .line 88
    .local v0, "z":[I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    move-object v2, p1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1Field;->subtract([I[I[I)V

    .line 89
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;

    invoke-direct {v1, v0}, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;-><init>([I)V

    return-object v1
.end method

.method public blacklist testBitZero()Z
    .registers 4

    .line 53
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/raw/Nat256;->getBit([II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_b

    move v1, v2

    :cond_b
    return v1
.end method

.method public blacklist toBigInteger()Ljava/math/BigInteger;
    .registers 2

    .line 58
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/custom/sec/SecP256R1FieldElement;->x:[I

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/raw/Nat256;->toBigInteger([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
