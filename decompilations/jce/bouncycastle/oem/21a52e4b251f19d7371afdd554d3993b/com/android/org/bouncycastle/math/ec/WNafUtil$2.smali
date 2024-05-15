.class Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

.field final synthetic blacklist val$width:I


# direct methods
.method constructor blacklist <init>(IZLcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .registers 5

    .line 395
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$width:I

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IZ)Z
    .registers 5
    .param p1, "existingWNaf"    # Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "reqPreCompLen"    # I
    .param p3, "includeNegated"    # Z

    .line 543
    if-eqz p1, :cond_1a

    .line 544
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    if-eqz p3, :cond_18

    .line 545
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    .line 543
    :goto_1b
    return v0
.end method

.method private blacklist checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z
    .registers 4
    .param p1, "table"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "reqLen"    # I

    .line 550
    if-eqz p1, :cond_7

    array-length v0, p1

    if-lt v0, p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 16
    .param p1, "existing"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 398
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_8

    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 400
    .local v0, "existingWNaf":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_9
    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$width:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v4, 0x1

    shl-int v1, v4, v1

    .line 402
    .local v1, "reqPreCompLen":I
    iget-boolean v5, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {p0, v0, v1, v5}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IZ)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 404
    return-object v0

    .line 407
    :cond_1e
    const/4 v5, 0x0

    .local v5, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v6, 0x0

    .line 408
    .local v6, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    .line 410
    .local v7, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v0, :cond_2f

    .line 412
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 413
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 414
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 417
    :cond_2f
    const/4 v8, 0x0

    .line 418
    .local v8, "iniPreCompLen":I
    if-nez v5, :cond_37

    .line 420
    # getter for: Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->access$000()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    goto :goto_38

    .line 424
    :cond_37
    array-length v8, v5

    .line 427
    :goto_38
    if-ge v8, v1, :cond_d7

    .line 429
    # invokes: Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v5, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->access$100([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 431
    if-ne v1, v4, :cond_4a

    .line 433
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v5, v3

    goto/16 :goto_d7

    .line 437
    :cond_4a
    move v9, v8

    .line 438
    .local v9, "curPreCompLen":I
    if-nez v9, :cond_52

    .line 440
    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object v10, v5, v3

    .line 441
    const/4 v9, 0x1

    .line 444
    :cond_52
    const/4 v10, 0x0

    .line 446
    .local v10, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-ne v1, v2, :cond_5f

    .line 448
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v5, v4

    goto/16 :goto_d0

    .line 452
    :cond_5f
    move-object v4, v7

    .local v4, "isoTwiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v11, v9, -0x1

    aget-object v11, v5, v11

    .line 453
    .local v11, "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v4, :cond_c3

    .line 455
    aget-object v12, v5, v3

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 456
    move-object v7, v4

    .line 468
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v12

    if-nez v12, :cond_c3

    iget-object v12, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v12}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v12

    if-eqz v12, :cond_c3

    iget-object v12, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v12

    const/16 v13, 0x40

    if-lt v12, v13, :cond_c3

    .line 470
    iget-object v12, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    if-eq v12, v2, :cond_94

    const/4 v2, 0x3

    if-eq v12, v2, :cond_94

    const/4 v2, 0x4

    if-eq v12, v2, :cond_94

    goto :goto_c3

    .line 476
    :cond_94
    invoke-virtual {v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 477
    .end local v10    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v2, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v13

    .line 478
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v13

    .line 477
    invoke-virtual {v10, v12, v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    .line 480
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v10

    .local v10, "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v10, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 481
    .local v12, "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v11, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    invoke-virtual {v13, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 483
    if-nez v8, :cond_c2

    .line 485
    aput-object v11, v5, v3

    .line 493
    .end local v10    # "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c2
    move-object v10, v2

    .end local v2    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .local v10, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c3
    :goto_c3
    if-ge v9, v1, :cond_d0

    .line 499
    add-int/lit8 v2, v9, 0x1

    .end local v9    # "curPreCompLen":I
    .local v2, "curPreCompLen":I
    invoke-virtual {v11, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v11, v3

    aput-object v3, v5, v9

    move v9, v2

    goto :goto_c3

    .line 506
    .end local v2    # "curPreCompLen":I
    .end local v4    # "isoTwiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v11    # "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v9    # "curPreCompLen":I
    :cond_d0
    :goto_d0
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    sub-int v3, v1, v8

    invoke-virtual {v2, v5, v8, v3, v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 510
    .end local v9    # "curPreCompLen":I
    .end local v10    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_d7
    :goto_d7
    iget-boolean v2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v2, :cond_f7

    .line 513
    if-nez v6, :cond_e2

    .line 515
    const/4 v2, 0x0

    .line 516
    .local v2, "pos":I
    new-array v3, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-object v6, v3

    .end local v6    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .local v3, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_ea

    .line 520
    .end local v2    # "pos":I
    .end local v3    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v6    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_e2
    array-length v2, v6

    .line 521
    .restart local v2    # "pos":I
    if-ge v2, v1, :cond_ea

    .line 523
    # invokes: Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v6, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->access$100([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move-object v6, v3

    .line 527
    :cond_ea
    :goto_ea
    if-ge v2, v1, :cond_f7

    .line 529
    aget-object v3, v5, v2

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v6, v2

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_ea

    .line 534
    .end local v2    # "pos":I
    :cond_f7
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 535
    .local v2, "result":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual {v2, v5}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 536
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 537
    invoke-virtual {v2, v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 538
    return-object v2
.end method
