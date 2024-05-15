.class public Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;
.super Ljava/lang/Object;
.source "GLVTypeBEndomorphism.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# instance fields
.field protected final blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected final blacklist parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

.field protected final blacklist pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "parameters"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 23
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 24
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;

    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getBeta()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ScaleXPointMap;-><init>(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    .line 25
    return-void
.end method


# virtual methods
.method protected blacklist calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 8
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "g"    # Ljava/math/BigInteger;
    .param p3, "t"    # I

    .line 52
    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 53
    .local v0, "negative":Z
    :goto_9
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 54
    .local v1, "b":Ljava/math/BigInteger;
    add-int/lit8 v2, p3, -0x1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v2

    .line 55
    .local v2, "extra":Z
    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 56
    if-eqz v2, :cond_23

    .line 58
    sget-object v3, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 60
    :cond_23
    if-eqz v0, :cond_2a

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_2b

    :cond_2a
    move-object v3, v1

    :goto_2b
    return-object v3
.end method

.method public blacklist decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 10
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getBits()I

    move-result v0

    .line 30
    .local v0, "bits":I
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 31
    .local v1, "b1":Ljava/math/BigInteger;
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v2

    .line 33
    .local v2, "b2":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->parameters:Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;

    .line 34
    .local v3, "p":Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getV1A()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getV2A()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 35
    .local v4, "a":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getV1B()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->getV2B()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v5

    .line 37
    .local v5, "b":Ljava/math/BigInteger;
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/math/BigInteger;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    const/4 v7, 0x1

    aput-object v5, v6, v7

    return-object v6
.end method

.method public blacklist getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .registers 2

    .line 42
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBEndomorphism;->pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    return-object v0
.end method

.method public blacklist hasEfficientPointMap()Z
    .registers 2

    .line 47
    const/4 v0, 0x1

    return v0
.end method
