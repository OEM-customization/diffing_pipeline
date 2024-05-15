.class Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source "SimpleBigDecimal.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final bigInt:Ljava/math/BigInteger;

.field private final scale:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .param p1, "bigInt"    # Ljava/math/BigInteger;
    .param p2, "scale"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gez p2, :cond_e

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_e
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    .line 54
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 55
    return-void
.end method

.method private checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V
    .registers 4
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    .line 59
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-eq v0, v1, :cond_f

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_f
    return-void
.end method

.method public static getInstance(Ljava/math/BigInteger;I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4
    .param p0, "value"    # Ljava/math/BigInteger;
    .param p1, "scale"    # I

    .prologue
    .line 36
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 85
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public add(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 90
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "newScale"    # I

    .prologue
    .line 68
    if-gez p1, :cond_b

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_b
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne p1, v0, :cond_10

    .line 75
    return-object p0

    .line 78
    :cond_10
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public compareTo(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)I
    .registers 4
    .param p1, "val"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 140
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigInteger;)I
    .registers 4
    .param p1, "val"    # Ljava/math/BigInteger;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public divide(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 6
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 123
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 124
    .local v0, "dividend":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v1
.end method

.method public divide(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 129
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 228
    if-ne p0, p1, :cond_5

    .line 230
    return v1

    .line 233
    :cond_5
    instance-of v3, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    if-nez v3, :cond_a

    .line 235
    return v2

    :cond_a
    move-object v0, p1

    .line 238
    check-cast v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .line 239
    .local v0, "other":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v4, v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v4, v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-ne v3, v4, :cond_1e

    :goto_1d
    return v1

    :cond_1e
    move v1, v2

    goto :goto_1d
.end method

.method public floor()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getScale()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    return v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public multiply(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 6
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->checkScale(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)V

    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget-object v2, p1, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 117
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 4

    .prologue
    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public round()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 155
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 156
    .local v0, "oneHalf":Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->adjustScale(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method public shiftLeft(I)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "n"    # I

    .prologue
    .line 134
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 3
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    .prologue
    .line 100
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->negate()Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 5
    .param p1, "b"    # Ljava/math/BigInteger;

    .prologue
    .line 105
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 106
    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    .line 105
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const/4 v13, -0x1

    .line 186
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    if-nez v11, :cond_c

    .line 188
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11

    .line 191
    :cond_c
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->floor()Ljava/math/BigInteger;

    move-result-object v0

    .line 193
    .local v0, "floorBigInt":Ljava/math/BigInteger;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    iget v12, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 194
    .local v1, "fract":Ljava/math/BigInteger;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->bigInt:Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-ne v11, v13, :cond_30

    .line 196
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v12, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 199
    :cond_30
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v11

    if-ne v11, v13, :cond_46

    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_46

    .line 201
    sget-object v11, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 203
    :cond_46
    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 205
    .local v7, "leftOfPoint":Ljava/lang/String;
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    new-array v2, v11, [C

    .line 206
    .local v2, "fractCharArr":[C
    const/4 v11, 0x2

    invoke-virtual {v1, v11}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 207
    .local v4, "fractStr":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 208
    .local v3, "fractLen":I
    iget v11, p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->scale:I

    sub-int v10, v11, v3

    .line 209
    .local v10, "zeroes":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5c
    if-ge v5, v10, :cond_65

    .line 211
    const/16 v11, 0x30

    aput-char v11, v2, v5

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_5c

    .line 213
    :cond_65
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_66
    if-ge v6, v3, :cond_73

    .line 215
    add-int v11, v10, v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aput-char v12, v2, v11

    .line 213
    add-int/lit8 v6, v6, 0x1

    goto :goto_66

    .line 217
    :cond_73
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([C)V

    .line 219
    .local v8, "rightOfPoint":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 220
    .local v9, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v11, "."

    invoke-virtual {v9, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    return-object v11
.end method
