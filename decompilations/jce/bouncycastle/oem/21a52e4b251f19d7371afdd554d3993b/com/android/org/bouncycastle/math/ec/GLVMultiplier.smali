.class public Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected final blacklist glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "glvEndomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 17
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 18
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 24
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 25
    return-void

    .line 20
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected blacklist multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 9
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .line 29
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 34
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 35
    .local v0, "n":Ljava/math/BigInteger;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 36
    .local v1, "ab":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .local v2, "a":Ljava/math/BigInteger;
    const/4 v3, 0x1

    aget-object v3, v1, v3

    .line 38
    .local v3, "b":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v4

    .line 39
    .local v4, "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v5

    if-eqz v5, :cond_37

    .line 41
    invoke-static {p1, v2, v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 44
    :cond_37
    invoke-interface {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {p1, v2, v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 31
    .end local v0    # "n":Ljava/math/BigInteger;
    .end local v1    # "ab":[Ljava/math/BigInteger;
    .end local v2    # "a":Ljava/math/BigInteger;
    .end local v3    # "b":Ljava/math/BigInteger;
    .end local v4    # "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    :cond_40
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
