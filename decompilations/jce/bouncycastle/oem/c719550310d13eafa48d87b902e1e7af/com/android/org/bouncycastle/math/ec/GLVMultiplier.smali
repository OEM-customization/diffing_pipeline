.class public Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "GLVMultiplier.java"


# instance fields
.field protected final curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected final glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;


# direct methods
.method public constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "glvEndomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    .line 14
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_14

    .line 16
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need curve with known group order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :cond_14
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 20
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    .line 21
    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 10
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    .prologue
    .line 25
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 27
    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    throw v5

    .line 30
    :cond_12
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    .line 31
    .local v3, "n":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v1

    .line 32
    .local v1, "ab":[Ljava/math/BigInteger;
    const/4 v5, 0x0

    aget-object v0, v1, v5

    .local v0, "a":Ljava/math/BigInteger;
    const/4 v5, 0x1

    aget-object v2, v1, v5

    .line 34
    .local v2, "b":Ljava/math/BigInteger;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    move-result-object v4

    .line 35
    .local v4, "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/GLVMultiplier;->glvEndomorphism:Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-interface {v5}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 37
    invoke-static {p1, v0, v4, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5

    .line 40
    :cond_3d
    invoke-interface {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-static {p1, v0, v5, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    return-object v5
.end method
