.class final Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DoubleCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = -0x82541ef9af19ae1L


# instance fields
.field final blacklist array:[D

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/DoubleBinaryOperator;

.field final blacklist hi:I

.field blacklist in:D

.field blacklist left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:D

.field blacklist right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .line 418
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 419
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 420
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 422
    nop

    .line 424
    sub-int v0, p5, p4

    .line 423
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 424
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 425
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .line 431
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 432
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .line 433
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 434
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 435
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .line 436
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 24

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v1, :cond_1e1

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    move-object v12, v1

    .local v12, "a":[D
    if-eqz v1, :cond_1e1

    .line 443
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 444
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 445
    .local v15, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_15
    iget v2, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_1de

    iget v2, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_1d9

    .line 446
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_cc

    .line 447
    iget-object v8, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v8, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-object v7, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 448
    .local v7, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v8, :cond_65

    .line 449
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 450
    .local v16, "mid":I
    new-instance v6, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v17, v0

    .line 452
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    new-instance v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v21, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v8, v0

    .line 454
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v8    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v15, v0

    move-object/from16 v7, v17

    move/from16 v10, v20

    move-object/from16 v0, v21

    goto/16 :goto_c3

    .line 456
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v7    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_65
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v18    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget-wide v4, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 457
    .local v4, "pin":D
    move-object/from16 v0, v18

    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iput-wide v4, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 458
    const/4 v2, 0x0

    move-object v6, v2

    .line 459
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v2, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v6, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    nop

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v7    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v7, :cond_9f

    .line 460
    iget-wide v8, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 461
    .local v8, "lout":D
    move/from16 v10, v20

    .end local v20    # "l":I
    .restart local v10    # "l":I
    if-ne v10, v13, :cond_82

    move-wide/from16 v20, v4

    move-wide v3, v8

    goto :goto_89

    .line 462
    :cond_82
    invoke-interface {v11, v4, v5, v8, v9}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v15

    move-wide/from16 v20, v4

    move-wide v3, v15

    .end local v4    # "pin":D
    .local v20, "pin":D
    :goto_89
    iput-wide v3, v7, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 464
    :cond_8b
    invoke-virtual {v7}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    .local v4, "c":I
    and-int/2addr v3, v5

    if-eqz v3, :cond_95

    .line 465
    goto :goto_a3

    .line 466
    :cond_95
    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v7, v4, v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 467
    move-object v6, v7

    .line 468
    goto :goto_a3

    .line 459
    .end local v8    # "lout":D
    .end local v10    # "l":I
    .local v4, "pin":D
    .local v20, "l":I
    :cond_9f
    move/from16 v10, v20

    move-wide/from16 v20, v4

    .line 473
    .end local v4    # "pin":D
    .restart local v10    # "l":I
    .local v20, "pin":D
    :cond_a3
    :goto_a3
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v3

    move v4, v3

    const/4 v5, 0x1

    .local v4, "c":I
    and-int/2addr v3, v5

    if-eqz v3, :cond_ae

    .line 474
    move-object v15, v6

    goto :goto_bb

    .line 475
    :cond_ae
    or-int/lit8 v3, v4, 0x1

    invoke-virtual {v0, v4, v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_a3

    .line 476
    if-eqz v6, :cond_b9

    .line 477
    move-object v2, v6

    .line 478
    :cond_b9
    move-object v3, v0

    .line 479
    .end local v6    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v15, v3

    .line 482
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v4    # "c":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_bb
    if-nez v15, :cond_c1

    .line 483
    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 482
    :cond_c1
    move-object v8, v0

    move-object v0, v2

    .line 485
    .end local v2    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v20    # "pin":D
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v8, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_c3
    if-eqz v0, :cond_c8

    .line 486
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 487
    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_c8
    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 446
    .end local v19    # "h":I
    .restart local v9    # "h":I
    :cond_cc
    move v5, v3

    move/from16 v19, v9

    .line 491
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :goto_cf
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v3, 0x4

    and-int/2addr v0, v3

    if-eqz v0, :cond_dc

    .line 492
    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 493
    :cond_dc
    and-int/lit8 v0, v2, 0x1

    const/4 v4, 0x2

    if-eqz v0, :cond_e3

    move v0, v3

    goto :goto_e8

    .line 494
    :cond_e3
    if-le v10, v13, :cond_e7

    move v0, v4

    goto :goto_e8

    :cond_e7
    const/4 v0, 0x6

    :goto_e8
    nop

    .line 495
    .local v0, "state":I
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_1d4

    .line 496
    nop

    .line 500
    .end local v2    # "b":I
    if-eq v0, v4, :cond_114

    .line 502
    if-ne v10, v13, :cond_fb

    .line 503
    aget-wide v6, v12, v13

    .line 504
    .local v6, "sum":D
    add-int/lit8 v2, v13, 0x1

    .local v2, "first":I
    goto :goto_fe

    .line 507
    .end local v2    # "first":I
    .end local v6    # "sum":D
    :cond_fb
    iget-wide v6, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 508
    .restart local v6    # "sum":D
    move v2, v10

    .line 510
    .restart local v2    # "first":I
    :goto_fe
    move v8, v2

    .local v8, "i":I
    :goto_ff
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v8, v9, :cond_113

    .line 511
    aget-wide v4, v12, v8

    invoke-interface {v11, v6, v7, v4, v5}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v4

    move-wide v6, v4

    aput-wide v4, v12, v8

    .line 510
    add-int/lit8 v8, v8, 0x1

    move/from16 v19, v9

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto :goto_ff

    .line 512
    .end local v2    # "first":I
    .end local v8    # "i":I
    :cond_113
    goto :goto_12b

    .line 513
    .end local v6    # "sum":D
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_114
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_129

    .line 514
    aget-wide v4, v12, v10

    .line 515
    .local v4, "sum":D
    add-int/lit8 v2, v10, 0x1

    move-wide v6, v4

    .end local v4    # "sum":D
    .local v2, "i":I
    .restart local v6    # "sum":D
    :goto_11d
    if-ge v2, v9, :cond_128

    .line 516
    aget-wide v4, v12, v2

    invoke-interface {v11, v6, v7, v4, v5}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v6

    .line 515
    add-int/lit8 v2, v2, 0x1

    goto :goto_11d

    .end local v2    # "i":I
    :cond_128
    goto :goto_12b

    .line 519
    .end local v6    # "sum":D
    :cond_129
    iget-wide v6, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 520
    .restart local v6    # "sum":D
    :goto_12b
    iput-wide v6, v15, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 522
    :goto_12d
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v4, v2

    .local v4, "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v2, :cond_145

    .line 523
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_141

    .line 524
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->quietlyComplete()V

    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 523
    :cond_141
    move/from16 v18, v1

    goto/16 :goto_1e0

    .line 527
    :cond_145
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v2

    .line 528
    .local v2, "b":I
    and-int v5, v2, v0

    and-int/2addr v5, v3

    if-eqz v5, :cond_158

    .line 529
    move-object v5, v4

    move/from16 v18, v1

    move-object v15, v5

    move-wide/from16 v21, v6

    move/from16 v19, v9

    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto/16 :goto_1cb

    .line 530
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_158
    and-int v5, v2, v0

    const/4 v8, 0x2

    and-int/2addr v5, v8

    if-eqz v5, :cond_1bc

    .line 532
    iget-object v5, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v16, v5

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v5, :cond_194

    iget-object v5, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v18, v5

    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v5, :cond_189

    .line 534
    move/from16 v19, v9

    move-object/from16 v5, v16

    .end local v9    # "h":I
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v5, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v19    # "h":I
    iget-wide v8, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 535
    .local v8, "lout":D
    move-object/from16 v3, v18

    move/from16 v18, v1

    .end local v1    # "th":I
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "th":I
    iget v1, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v1, v14, :cond_17d

    move-object v1, v5

    move-wide/from16 v21, v6

    move-wide v5, v8

    goto :goto_186

    .line 536
    :cond_17d
    move-object v1, v5

    move-wide/from16 v21, v6

    .end local v5    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v6    # "sum":D
    .local v1, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v21, "sum":D
    iget-wide v5, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    invoke-interface {v11, v8, v9, v5, v6}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v5

    :goto_186
    iput-wide v5, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    goto :goto_19c

    .line 532
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "lout":D
    .end local v19    # "h":I
    .end local v21    # "sum":D
    .local v1, "th":I
    .restart local v6    # "sum":D
    .restart local v9    # "h":I
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_189
    move-wide/from16 v21, v6

    move/from16 v19, v9

    move-object/from16 v3, v18

    move/from16 v18, v1

    move-object/from16 v1, v16

    .end local v6    # "sum":D
    .end local v9    # "h":I
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v1, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":D
    goto :goto_19c

    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "th":I
    .end local v19    # "h":I
    .end local v21    # "sum":D
    .local v1, "th":I
    .restart local v6    # "sum":D
    .restart local v9    # "h":I
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_194
    move/from16 v18, v1

    move-wide/from16 v21, v6

    move/from16 v19, v9

    move-object/from16 v1, v16

    .line 538
    .end local v6    # "sum":D
    .end local v9    # "h":I
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v1, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":D
    :goto_19c
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1a6

    iget v3, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v3, v13, :cond_1a6

    .line 539
    const/4 v5, 0x1

    goto :goto_1a7

    :cond_1a6
    const/4 v5, 0x0

    :goto_1a7
    move v3, v5

    .line 540
    .local v3, "refork":I
    or-int v5, v2, v0

    or-int/2addr v5, v3

    move v6, v5

    .local v6, "nextState":I
    if-eq v5, v2, :cond_1b4

    .line 541
    invoke-virtual {v4, v2, v6}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v5

    if-eqz v5, :cond_1bb

    .line 542
    :cond_1b4
    const/4 v0, 0x2

    .line 543
    move-object v15, v4

    .line 544
    if-eqz v3, :cond_1bb

    .line 545
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 547
    .end local v1    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v3    # "refork":I
    .end local v6    # "nextState":I
    :cond_1bb
    goto :goto_1cb

    .line 548
    .end local v18    # "th":I
    .end local v19    # "h":I
    .end local v21    # "sum":D
    .local v1, "th":I
    .local v6, "sum":D
    .restart local v9    # "h":I
    :cond_1bc
    move/from16 v18, v1

    move-wide/from16 v21, v6

    move/from16 v19, v9

    .end local v1    # "th":I
    .end local v6    # "sum":D
    .end local v9    # "h":I
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    .restart local v21    # "sum":D
    or-int v1, v2, v0

    invoke-virtual {v4, v2, v1}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v1

    if-eqz v1, :cond_1cb

    .line 549
    goto :goto_1e0

    .line 550
    .end local v2    # "b":I
    :cond_1cb
    :goto_1cb
    move/from16 v1, v18

    move/from16 v9, v19

    move-wide/from16 v6, v21

    const/4 v3, 0x4

    goto/16 :goto_12d

    .line 495
    .end local v4    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "th":I
    .end local v21    # "sum":D
    .restart local v1    # "th":I
    .restart local v2    # "b":I
    :cond_1d4
    move/from16 v18, v1

    .end local v1    # "th":I
    .restart local v18    # "th":I
    const/4 v5, 0x1

    goto/16 :goto_cf

    .line 445
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v18    # "th":I
    .end local v19    # "h":I
    .restart local v1    # "th":I
    .restart local v9    # "h":I
    :cond_1d9
    move/from16 v18, v1

    move/from16 v19, v9

    .end local v1    # "th":I
    .end local v9    # "h":I
    .restart local v18    # "th":I
    .restart local v19    # "h":I
    goto :goto_1e0

    .end local v18    # "th":I
    .end local v19    # "h":I
    .restart local v1    # "th":I
    :cond_1de
    move/from16 v18, v1

    .line 553
    .end local v1    # "th":I
    .restart local v18    # "th":I
    :goto_1e0
    return-void

    .line 442
    .end local v10    # "l":I
    .end local v12    # "a":[D
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "th":I
    :cond_1e1
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
