.class Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

.field final synthetic blacklist val$wnafPreCompP:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Z)V
    .registers 4

    .line 353
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$wnafPreCompP:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    iput-boolean p3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$includeNegated:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 9
    .param p1, "existing"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 356
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 358
    .local v0, "result":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$wnafPreCompP:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    .line 359
    .local v1, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v1, :cond_16

    .line 361
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 362
    .local v2, "twiceQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 365
    .end local v2    # "twiceQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_16
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$wnafPreCompP:Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    .line 366
    .local v2, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v3, v2

    new-array v3, v3, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 367
    .local v3, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_20
    array-length v5, v2

    if-ge v4, v5, :cond_30

    .line 369
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$pointMap:Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    aget-object v6, v2, v4

    invoke-interface {v5, v6}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v3, v4

    .line 367
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    .line 371
    .end local v4    # "i":I
    :cond_30
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 373
    iget-boolean v4, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$1;->val$includeNegated:Z

    if-eqz v4, :cond_4c

    .line 375
    array-length v4, v3

    new-array v4, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 376
    .local v4, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3b
    array-length v6, v4

    if-ge v5, v6, :cond_49

    .line 378
    aget-object v6, v3, v5

    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, v4, v5

    .line 376
    add-int/lit8 v5, v5, 0x1

    goto :goto_3b

    .line 380
    .end local v5    # "i":I
    :cond_49
    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 383
    .end local v4    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_4c
    return-object v0
.end method
