.class Lcom/android/org/bouncycastle/math/field/PrimeField;
.super Ljava/lang/Object;
.source "PrimeField.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/FiniteField;


# instance fields
.field protected final characteristic:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/math/BigInteger;)V
    .registers 2
    .param p1, "characteristic"    # Ljava/math/BigInteger;

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 26
    if-ne p0, p1, :cond_4

    .line 28
    const/4 v1, 0x1

    return v1

    .line 30
    :cond_4
    instance-of v1, p1, Lcom/android/org/bouncycastle/math/field/PrimeField;

    if-nez v1, :cond_a

    .line 32
    const/4 v1, 0x0

    return v1

    :cond_a
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/android/org/bouncycastle/math/field/PrimeField;

    .line 35
    .local v0, "other":Lcom/android/org/bouncycastle/math/field/PrimeField;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getDimension()I
    .registers 2

    .prologue
    .line 21
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/PrimeField;->characteristic:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    return v0
.end method
