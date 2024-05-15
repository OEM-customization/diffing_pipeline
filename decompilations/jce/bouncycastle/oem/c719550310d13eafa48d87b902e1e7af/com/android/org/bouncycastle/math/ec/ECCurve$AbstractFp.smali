.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .param p1, "q"    # Ljava/math/BigInteger;

    .prologue
    .line 503
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getPrimeField(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    .line 504
    return-void
.end method


# virtual methods
.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    .prologue
    const/4 v4, 0x1

    .line 513
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 514
    .local v1, "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 515
    .local v0, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 520
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-nez v2, :cond_28

    .line 522
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Invalid point compression"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 525
    :cond_28
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v5

    if-ne p1, v4, :cond_3a

    move v3, v4

    :goto_2f
    if-eq v5, v3, :cond_35

    .line 528
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 531
    :cond_35
    invoke-virtual {p0, v1, v2, v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    return-object v3

    .line 525
    :cond_3a
    const/4 v3, 0x0

    goto :goto_2f
.end method

.method public isValidFieldElement(Ljava/math/BigInteger;)Z
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .prologue
    const/4 v0, 0x0

    .line 508
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-ltz v1, :cond_18

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_18

    const/4 v0, 0x1

    :cond_18
    return v0
.end method
