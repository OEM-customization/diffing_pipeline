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
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x82541ef9af19ae1L


# instance fields
.field final array:[D

.field final fence:I

.field final function:Ljava/util/function/DoubleBinaryOperator;

.field final hi:I

.field in:D

.field left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final lo:I

.field final origin:I

.field out:D

.field right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DII)V
    .registers 10
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .prologue
    const/16 v1, 0x10

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

    .line 423
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_1e

    move v0, v1

    .line 422
    .end local v0    # "p":I
    :cond_1e
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .line 425
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .param p2, "function"    # Ljava/util/function/DoubleBinaryOperator;
    .param p3, "array"    # [D
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .prologue
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
.method public final compute()V
    .registers 39

    .prologue
    .line 441
    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    .local v6, "fn":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v6, :cond_c

    move-object/from16 v0, p0

    iget-object v7, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    .local v7, "a":[D
    if-nez v7, :cond_12

    .line 442
    .end local v7    # "a":[D
    :cond_c
    new-instance v14, Ljava/lang/NullPointerException;

    invoke-direct {v14}, Ljava/lang/NullPointerException;-><init>()V

    throw v14

    .line 443
    .restart local v7    # "a":[D
    :cond_12
    move-object/from16 v0, p0

    iget v10, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .local v10, "th":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    .local v8, "org":I
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 444
    .local v9, "fnc":I
    move-object/from16 v5, p0

    .line 445
    :cond_20
    :goto_20
    iget v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    move/from16 v20, v0

    .local v20, "l":I
    if-ltz v20, :cond_87

    iget v12, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    .local v12, "h":I
    array-length v14, v7

    if-gt v12, v14, :cond_87

    .line 446
    sub-int v14, v12, v20

    if-le v14, v10, :cond_ad

    .line 447
    iget-object v13, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v13, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-object v4, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 448
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v13, :cond_5c

    .line 449
    add-int v14, v20, v12

    ushr-int/lit8 v11, v14, 0x1

    .line 451
    .local v11, "mid":I
    new-instance v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    invoke-direct/range {v4 .. v12}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    .line 450
    iput-object v4, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object/from16 v24, v4

    .line 453
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    new-instance v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v14, v5

    move-object v15, v6

    move-object/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v19, v10

    move/from16 v21, v11

    invoke-direct/range {v13 .. v21}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    .line 452
    iput-object v13, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v5, v13

    .line 485
    .end local v11    # "mid":I
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_56
    if-eqz v24, :cond_20

    .line 486
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_20

    .line 456
    :cond_5c
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move-wide/from16 v32, v0

    .line 457
    .local v32, "pin":D
    move-wide/from16 v0, v32

    iput-wide v0, v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 458
    const/4 v5, 0x0

    .local v5, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    const/16 v24, 0x0

    .line 459
    .local v24, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v4, :cond_7d

    .line 460
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move-wide/from16 v28, v0

    .line 461
    .local v28, "lout":D
    move/from16 v0, v20

    if-ne v0, v8, :cond_88

    .end local v28    # "lout":D
    :goto_71
    move-wide/from16 v0, v28

    iput-wide v0, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 464
    :cond_75
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v23

    .local v23, "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_91

    .line 473
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v23    # "c":I
    :cond_7d
    :goto_7d
    invoke-virtual {v13}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v23

    .restart local v23    # "c":I
    and-int/lit8 v14, v23, 0x1

    if-eqz v14, :cond_9d

    .line 482
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_85
    if-nez v5, :cond_56

    .line 553
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v12    # "h":I
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":D
    :cond_87
    :goto_87
    return-void

    .line 462
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v12    # "h":I
    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v28    # "lout":D
    .restart local v32    # "pin":D
    :cond_88
    move-wide/from16 v0, v32

    move-wide/from16 v2, v28

    invoke-interface {v6, v0, v1, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v28

    goto :goto_71

    .line 466
    .end local v28    # "lout":D
    .restart local v23    # "c":I
    :cond_91
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0, v14}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_75

    .line 467
    move-object v5, v4

    .line 468
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto :goto_7d

    .line 475
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_9d
    or-int/lit8 v14, v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v13, v0, v14}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_7d

    .line 476
    if-eqz v5, :cond_ab

    .line 477
    move-object/from16 v24, v5

    .line 478
    .end local v24    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_ab
    move-object v5, v13

    .line 479
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto :goto_85

    .line 491
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v23    # "c":I
    .end local v32    # "pin":D
    :cond_ad
    invoke-virtual {v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v22

    .local v22, "b":I
    and-int/lit8 v14, v22, 0x4

    if-nez v14, :cond_87

    .line 493
    and-int/lit8 v14, v22, 0x1

    if-eqz v14, :cond_e5

    const/16 v34, 0x4

    .line 495
    .local v34, "state":I
    :goto_bb
    or-int v14, v22, v34

    move/from16 v0, v22

    invoke-virtual {v5, v0, v14}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_ad

    .line 500
    const/4 v14, 0x2

    move/from16 v0, v34

    if-eq v0, v14, :cond_f6

    .line 502
    move/from16 v0, v20

    if-ne v0, v8, :cond_ef

    .line 503
    aget-wide v36, v7, v8

    .line 504
    .local v36, "sum":D
    add-int/lit8 v25, v8, 0x1

    .line 510
    .local v25, "first":I
    :goto_d2
    move/from16 v26, v25

    .local v26, "i":I
    :goto_d4
    move/from16 v0, v26

    if-ge v0, v12, :cond_10f

    .line 511
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v36

    aput-wide v36, v7, v26

    .line 510
    add-int/lit8 v26, v26, 0x1

    goto :goto_d4

    .line 494
    .end local v25    # "first":I
    .end local v26    # "i":I
    .end local v34    # "state":I
    .end local v36    # "sum":D
    :cond_e5
    move/from16 v0, v20

    if-le v0, v8, :cond_ec

    const/16 v34, 0x2

    .restart local v34    # "state":I
    goto :goto_bb

    .end local v34    # "state":I
    :cond_ec
    const/16 v34, 0x6

    .restart local v34    # "state":I
    goto :goto_bb

    .line 507
    :cond_ef
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move-wide/from16 v36, v0

    .line 508
    .restart local v36    # "sum":D
    move/from16 v25, v20

    .restart local v25    # "first":I
    goto :goto_d2

    .line 513
    .end local v25    # "first":I
    .end local v36    # "sum":D
    :cond_f6
    if-ge v12, v9, :cond_10b

    .line 514
    aget-wide v36, v7, v20

    .line 515
    .restart local v36    # "sum":D
    add-int/lit8 v26, v20, 0x1

    .restart local v26    # "i":I
    :goto_fc
    move/from16 v0, v26

    if-ge v0, v12, :cond_10f

    .line 516
    aget-wide v14, v7, v26

    move-wide/from16 v0, v36

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v36

    .line 515
    add-int/lit8 v26, v26, 0x1

    goto :goto_fc

    .line 519
    .end local v26    # "i":I
    .end local v36    # "sum":D
    :cond_10b
    iget-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    move-wide/from16 v36, v0

    .line 520
    .restart local v36    # "sum":D
    :cond_10f
    move-wide/from16 v0, v36

    iput-wide v0, v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 522
    :cond_113
    :goto_113
    invoke-virtual {v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v30

    check-cast v30, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v30, "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v30, :cond_124

    .line 523
    and-int/lit8 v14, v34, 0x4

    if-eqz v14, :cond_87

    .line 524
    invoke-virtual {v5}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->quietlyComplete()V

    goto/16 :goto_87

    .line 527
    :cond_124
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v22

    .line 528
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x4

    if-eqz v14, :cond_131

    .line 529
    move-object/from16 v5, v30

    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    goto :goto_113

    .line 530
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_131
    and-int v14, v22, v34

    and-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_189

    .line 532
    move-object/from16 v0, v30

    iget-object v13, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v13, :cond_151

    .line 533
    move-object/from16 v0, v30

    iget-object v4, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v4, :cond_151

    .line 534
    iget-wide v0, v13, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move-wide/from16 v28, v0

    .line 535
    .restart local v28    # "lout":D
    iget v14, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v14, v9, :cond_17d

    .end local v28    # "lout":D
    :goto_14b
    move-wide/from16 v0, v28

    move-object/from16 v2, v30

    iput-wide v0, v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 538
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_151
    and-int/lit8 v14, v22, 0x1

    if-nez v14, :cond_186

    .line 539
    move-object/from16 v0, v30

    iget v14, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v14, v8, :cond_186

    const/16 v31, 0x1

    .line 540
    .local v31, "refork":I
    :goto_15d
    or-int v14, v22, v34

    or-int v27, v14, v31

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v22

    if-eq v0, v1, :cond_173

    .line 541
    move-object/from16 v0, v30

    move/from16 v1, v22

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    .line 540
    if-eqz v14, :cond_113

    .line 542
    :cond_173
    const/16 v34, 0x2

    .line 543
    move-object/from16 v5, v30

    .line 544
    .restart local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v31, :cond_113

    .line 545
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_113

    .line 536
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v27    # "nextState":I
    .end local v31    # "refork":I
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v28    # "lout":D
    :cond_17d
    iget-wide v14, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    move-wide/from16 v0, v28

    invoke-interface {v6, v0, v1, v14, v15}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v28

    goto :goto_14b

    .line 539
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v28    # "lout":D
    :cond_186
    const/16 v31, 0x0

    .restart local v31    # "refork":I
    goto :goto_15d

    .line 548
    .end local v13    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v31    # "refork":I
    :cond_189
    or-int v14, v22, v34

    move-object/from16 v0, v30

    move/from16 v1, v22

    invoke-virtual {v0, v1, v14}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v14

    if-eqz v14, :cond_113

    goto/16 :goto_87
.end method
