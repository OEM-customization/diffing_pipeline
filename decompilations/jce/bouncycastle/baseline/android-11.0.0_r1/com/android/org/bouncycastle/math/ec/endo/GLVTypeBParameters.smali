.class public Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source "GLVTypeBParameters.java"


# instance fields
.field protected final blacklist beta:Ljava/math/BigInteger;

.field protected final blacklist bits:I

.field protected final blacklist g1:Ljava/math/BigInteger;

.field protected final blacklist g2:Ljava/math/BigInteger;

.field protected final blacklist lambda:Ljava/math/BigInteger;

.field protected final blacklist v1A:Ljava/math/BigInteger;

.field protected final blacklist v1B:Ljava/math/BigInteger;

.field protected final blacklist v2A:Ljava/math/BigInteger;

.field protected final blacklist v2B:Ljava/math/BigInteger;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 11
    .param p1, "beta"    # Ljava/math/BigInteger;
    .param p2, "lambda"    # Ljava/math/BigInteger;
    .param p3, "v1"    # [Ljava/math/BigInteger;
    .param p4, "v2"    # [Ljava/math/BigInteger;
    .param p5, "g1"    # Ljava/math/BigInteger;
    .param p6, "g2"    # Ljava/math/BigInteger;
    .param p7, "bits"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string v0, "v1"

    invoke-static {p3, v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 29
    const-string v0, "v2"

    invoke-static {p4, v0}, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V

    .line 31
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    .line 32
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    .line 33
    const/4 v0, 0x0

    aget-object v1, p3, v0

    iput-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    .line 34
    const/4 v1, 0x1

    aget-object v2, p3, v1

    iput-object v2, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    .line 35
    aget-object v0, p4, v0

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    .line 36
    aget-object v0, p4, v1

    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    .line 37
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    .line 38
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    .line 39
    iput p7, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    .line 40
    return-void
.end method

.method private static blacklist checkVector([Ljava/math/BigInteger;Ljava/lang/String;)V
    .registers 5
    .param p0, "v"    # [Ljava/math/BigInteger;
    .param p1, "name"    # Ljava/lang/String;

    .line 13
    if-eqz p0, :cond_11

    array-length v0, p0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    const/4 v0, 0x0

    aget-object v0, p0, v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    aget-object v0, p0, v0

    if-eqz v0, :cond_11

    .line 17
    return-void

    .line 15
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' must consist of exactly 2 (non-null) values"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getBeta()Ljava/math/BigInteger;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->beta:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getBits()I
    .registers 2

    .line 100
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->bits:I

    return v0
.end method

.method public blacklist getG1()Ljava/math/BigInteger;
    .registers 2

    .line 90
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g1:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getG2()Ljava/math/BigInteger;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->g2:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getLambda()Ljava/math/BigInteger;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->lambda:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV1()[Ljava/math/BigInteger;
    .registers 4

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public blacklist getV1A()Ljava/math/BigInteger;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV1B()Ljava/math/BigInteger;
    .registers 2

    .line 67
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v1B:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV2()[Ljava/math/BigInteger;
    .registers 4

    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public blacklist getV2A()Ljava/math/BigInteger;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2A:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getV2B()Ljava/math/BigInteger;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/endo/GLVTypeBParameters;->v2B:Ljava/math/BigInteger;

    return-object v0
.end method
