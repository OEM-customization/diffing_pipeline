.class Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;
.super Ljava/lang/Object;
.source "GenericPolynomialExtensionField.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;


# instance fields
.field protected final minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

.field protected final subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/math/field/FiniteField;Lcom/android/org/bouncycastle/math/field/Polynomial;)V
    .registers 3
    .param p1, "subfield"    # Lcom/android/org/bouncycastle/math/field/FiniteField;
    .param p2, "polynomial"    # Lcom/android/org/bouncycastle/math/field/Polynomial;

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    .line 15
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    .line 16
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 45
    if-ne p0, p1, :cond_5

    .line 47
    const/4 v1, 0x1

    return v1

    .line 49
    :cond_5
    instance-of v2, p1, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    if-nez v2, :cond_a

    .line 51
    return v1

    :cond_a
    move-object v0, p1

    .line 53
    check-cast v0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;

    .line 54
    .local v0, "other":Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    iget-object v3, v0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    iget-object v2, v0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    :cond_1f
    return v1
.end method

.method public getCharacteristic()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getDegree()I
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v0

    return v0
.end method

.method public getDimension()I
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/field/Polynomial;->getDegree()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinimalPolynomial()Lcom/android/org/bouncycastle/math/field/Polynomial;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    return-object v0
.end method

.method public getSubfield()Lcom/android/org/bouncycastle/math/field/FiniteField;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->subfield:Lcom/android/org/bouncycastle/math/field/FiniteField;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 60
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/field/GenericPolynomialExtensionField;->minimalPolynomial:Lcom/android/org/bouncycastle/math/field/Polynomial;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v1

    .line 59
    xor-int/2addr v0, v1

    return v0
.end method
