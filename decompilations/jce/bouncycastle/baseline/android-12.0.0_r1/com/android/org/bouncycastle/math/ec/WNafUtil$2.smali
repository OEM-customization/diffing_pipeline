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

.field final synthetic blacklist val$minWidth:I

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(IZLcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .registers 5

    .line 419
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .registers 7
    .param p1, "existingWNaf"    # Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "width"    # I
    .param p3, "reqPreCompLen"    # I
    .param p4, "includeNegated"    # Z

    .line 580
    if-eqz p1, :cond_28

    .line 581
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_28

    .line 582
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_28

    if-eqz p4, :cond_26

    .line 583
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    .line 580
    :goto_29
    return v0
.end method

.method private blacklist checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z
    .registers 4
    .param p1, "table"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "reqLen"    # I

    .line 588
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
    .registers 19
    .param p1, "existing"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    .line 422
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v2, :cond_c

    move-object v2, v1

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 424
    .local v2, "existingWNaf":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    :goto_d
    iget v3, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    const/16 v4, 0x10

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/4 v5, 0x2

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 425
    .local v3, "width":I
    add-int/lit8 v6, v3, -0x2

    const/4 v7, 0x1

    shl-int v6, v7, v6

    .line 427
    .local v6, "reqPreCompLen":I
    iget-boolean v8, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {v0, v2, v3, v6, v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 429
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    .line 430
    return-object v2

    .line 433
    :cond_2b
    new-instance v8, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    .line 435
    .local v8, "result":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    const/4 v9, 0x0

    .local v9, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v10, 0x0

    .line 436
    .local v10, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v11, 0x0

    .line 438
    .local v11, "twiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v2, :cond_4f

    .line 440
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v12

    .line 441
    .local v12, "promotionCountdown":I
    invoke-virtual {v8, v12}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 443
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v13

    .line 444
    .local v13, "confWidth":I
    invoke-virtual {v8, v13}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    .line 446
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 447
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    .line 448
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 451
    .end local v12    # "promotionCountdown":I
    .end local v13    # "confWidth":I
    :cond_4f
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v12

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v4, v12}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 452
    add-int/lit8 v4, v3, -0x2

    shl-int v4, v7, v4

    .line 454
    .end local v6    # "reqPreCompLen":I
    .local v4, "reqPreCompLen":I
    const/4 v6, 0x0

    .line 455
    .local v6, "iniPreCompLen":I
    if-nez v9, :cond_67

    .line 457
    # getter for: Lcom/android/org/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->access$000()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    goto :goto_68

    .line 461
    :cond_67
    array-length v6, v9

    .line 464
    :goto_68
    if-ge v6, v4, :cond_104

    .line 466
    # invokes: Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v9, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->access$100([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    .line 468
    const/4 v12, 0x0

    if-ne v4, v7, :cond_7b

    .line 470
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v9, v12

    goto/16 :goto_104

    .line 474
    :cond_7b
    move v13, v6

    .line 475
    .local v13, "curPreCompLen":I
    if-nez v13, :cond_83

    .line 477
    iget-object v14, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object v14, v9, v12

    .line 478
    const/4 v13, 0x1

    .line 481
    :cond_83
    const/4 v14, 0x0

    .line 483
    .local v14, "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-ne v4, v5, :cond_90

    .line 485
    iget-object v5, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v9, v7

    goto/16 :goto_fd

    .line 489
    :cond_90
    move-object v5, v11

    .local v5, "isoTwiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v7, v13, -0x1

    aget-object v7, v9, v7

    .line 490
    .local v7, "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-nez v5, :cond_f0

    .line 492
    aget-object v15, v9, v12

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 493
    move-object v11, v5

    .line 505
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v15

    if-nez v15, :cond_f0

    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v15}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v15

    if-eqz v15, :cond_f0

    iget-object v15, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v15

    const/16 v12, 0x40

    if-lt v15, v12, :cond_f0

    .line 507
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v12

    packed-switch v12, :pswitch_data_132

    goto :goto_f0

    .line 513
    :pswitch_c0
    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v14

    .line 514
    iget-object v12, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v16

    .line 515
    invoke-virtual/range {v16 .. v16}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    .line 514
    invoke-virtual {v12, v15, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    .line 517
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .local v1, "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 518
    .local v12, "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v15

    invoke-virtual {v15, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 520
    if-nez v6, :cond_f0

    .line 522
    const/4 v15, 0x0

    aput-object v7, v9, v15

    .line 530
    .end local v1    # "iso2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v12    # "iso3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_f0
    :goto_f0
    if-ge v13, v4, :cond_fd

    .line 536
    add-int/lit8 v1, v13, 0x1

    .end local v13    # "curPreCompLen":I
    .local v1, "curPreCompLen":I
    invoke-virtual {v7, v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    move-object v7, v12

    aput-object v12, v9, v13

    move v13, v1

    goto :goto_f0

    .line 543
    .end local v1    # "curPreCompLen":I
    .end local v5    # "isoTwiceP":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v7    # "last":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v13    # "curPreCompLen":I
    :cond_fd
    :goto_fd
    iget-object v1, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    sub-int v5, v4, v6

    invoke-virtual {v1, v9, v6, v5, v14}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 547
    .end local v13    # "curPreCompLen":I
    .end local v14    # "iso":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_104
    :goto_104
    iget-boolean v1, v0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v1, :cond_124

    .line 550
    if-nez v10, :cond_10f

    .line 552
    const/4 v1, 0x0

    .line 553
    .local v1, "pos":I
    new-array v5, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-object v10, v5

    .end local v10    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .local v5, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_117

    .line 557
    .end local v1    # "pos":I
    .end local v5    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v10    # "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_10f
    array-length v1, v10

    .line 558
    .restart local v1    # "pos":I
    if-ge v1, v4, :cond_117

    .line 560
    # invokes: Lcom/android/org/bouncycastle/math/ec/WNafUtil;->resizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v10, v4}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->access$100([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    move-object v10, v5

    .line 564
    :cond_117
    :goto_117
    if-ge v1, v4, :cond_124

    .line 566
    aget-object v5, v9, v1

    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v10, v1

    .line 567
    add-int/lit8 v1, v1, 0x1

    goto :goto_117

    .line 571
    .end local v1    # "pos":I
    :cond_124
    invoke-virtual {v8, v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 572
    invoke-virtual {v8, v10}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 573
    invoke-virtual {v8, v11}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 574
    invoke-virtual {v8, v3}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    .line 575
    return-object v8

    nop

    :pswitch_data_132
    .packed-switch 0x2
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
    .end packed-switch
.end method
