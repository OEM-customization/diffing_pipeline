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
.method public final whitelist core-platform-api test-api compute()V
    .registers 25

    .line 441
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->function:Ljava/util/function/DoubleBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/DoubleBinaryOperator;
    if-eqz v1, :cond_1da

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->array:[D

    move-object v13, v1

    .local v13, "a":[D
    if-eqz v1, :cond_1d9

    .line 443
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->threshold:I

    .local v1, "th":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->origin:I

    .local v14, "org":I
    iget v15, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fence:I

    .line 444
    .local v15, "fnc":I
    move-object/from16 v2, p0

    move-object v10, v2

    .line 445
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_15
    iget v2, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    move v9, v2

    .local v9, "l":I
    if-ltz v2, :cond_1d2

    iget v2, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    move v8, v2

    .local v8, "h":I
    array-length v3, v13

    if-gt v2, v3, :cond_1cb

    .line 446
    sub-int v2, v8, v9

    const/4 v3, 0x1

    if-le v2, v1, :cond_d2

    .line 447
    iget-object v7, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget-object v6, v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    .line 448
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v7, :cond_68

    .line 449
    add-int v2, v9, v8

    ushr-int/lit8 v16, v2, 0x1

    .line 450
    .local v16, "mid":I
    new-instance v5, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v2, v5

    move-object v3, v10

    move-object v4, v11

    move-object v12, v5

    move-object v5, v13

    move-object v0, v6

    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move v6, v14

    move-object/from16 v18, v0

    move-object v0, v7

    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move v7, v15

    move/from16 v19, v8

    .end local v8    # "h":I
    .local v19, "h":I
    move v8, v1

    move/from16 v20, v9

    .end local v9    # "l":I
    .local v20, "l":I
    move/from16 v9, v16

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v21, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v12, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v18, v12

    .line 452
    .local v12, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    new-instance v10, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v2, v10

    move-object v3, v0

    move/from16 v9, v20

    move/from16 v22, v1

    move-object v1, v10

    .end local v1    # "th":I
    .local v22, "th":I
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;Ljava/util/function/DoubleBinaryOperator;[DIIIII)V

    iput-object v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v7, v1

    .end local v21    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v7    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    move-object v0, v1

    .line 454
    .end local v16    # "mid":I
    move-object v10, v0

    move-object/from16 v6, v18

    move/from16 v5, v20

    goto/16 :goto_c7

    .line 456
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v22    # "th":I
    .restart local v1    # "th":I
    .restart local v6    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v8    # "h":I
    .restart local v9    # "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_68
    move/from16 v22, v1

    move-object/from16 v18, v6

    move-object/from16 v21, v7

    move/from16 v19, v8

    move/from16 v20, v9

    move-object v0, v10

    .end local v1    # "th":I
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    .restart local v21    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v22    # "th":I
    iget-wide v1, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 457
    .local v1, "pin":D
    move-object/from16 v4, v21

    .end local v21    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v4, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iput-wide v1, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 458
    const/4 v5, 0x0

    move-object v0, v5

    move-object v6, v5

    .line 459
    .local v6, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v18, :cond_a1

    .line 460
    iget-wide v7, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 461
    .local v7, "lout":D
    move/from16 v5, v20

    .end local v20    # "l":I
    .local v5, "l":I
    if-ne v5, v14, :cond_86

    move-wide v9, v7

    goto :goto_8a

    .line 462
    :cond_86
    invoke-interface {v11, v1, v2, v7, v8}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v9

    :goto_8a
    move-object/from16 v12, v18

    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v12, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iput-wide v9, v12, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 464
    :cond_8e
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v9

    move v10, v9

    .local v10, "c":I
    and-int/2addr v9, v3

    if-eqz v9, :cond_97

    .line 465
    goto :goto_a5

    .line 466
    :cond_97
    or-int/lit8 v9, v10, 0x1

    invoke-virtual {v12, v10, v9}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 467
    move-object v0, v12

    .line 468
    goto :goto_a5

    .line 459
    .end local v5    # "l":I
    .end local v7    # "lout":D
    .end local v10    # "c":I
    .end local v12    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v18    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v20    # "l":I
    :cond_a1
    move-object/from16 v12, v18

    move/from16 v5, v20

    .line 473
    .end local v18    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v20    # "l":I
    .restart local v5    # "l":I
    .restart local v12    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_a5
    :goto_a5
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v7

    move v8, v7

    .local v8, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_af

    .line 474
    move-object v10, v0

    goto :goto_bc

    .line 475
    :cond_af
    or-int/lit8 v7, v8, 0x1

    invoke-virtual {v4, v8, v7}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_a5

    .line 476
    if-eqz v0, :cond_ba

    .line 477
    move-object v6, v0

    .line 478
    :cond_ba
    move-object v0, v4

    .line 479
    move-object v10, v0

    .line 482
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "c":I
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_bc
    if-nez v10, :cond_c1

    .line 483
    move-object v9, v13

    goto/16 :goto_1d8

    .line 482
    :cond_c1
    move-object v7, v4

    move-object/from16 v23, v12

    move-object v12, v6

    move-object/from16 v6, v23

    .line 485
    .end local v1    # "pin":D
    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v12, "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_c7
    if-eqz v12, :cond_cc

    .line 486
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 487
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_cc
    move-object/from16 v0, p0

    move/from16 v1, v22

    goto/16 :goto_15

    .line 446
    .end local v5    # "l":I
    .end local v19    # "h":I
    .end local v22    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .restart local v9    # "l":I
    :cond_d2
    move/from16 v22, v1

    move/from16 v19, v8

    move v5, v9

    move-object v0, v10

    .line 491
    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v5    # "l":I
    .restart local v19    # "h":I
    .restart local v22    # "th":I
    :goto_d8
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-eqz v1, :cond_e4

    .line 492
    move-object v9, v13

    goto/16 :goto_1d7

    .line 493
    :cond_e4
    and-int/lit8 v1, v2, 0x1

    const/4 v6, 0x2

    if-eqz v1, :cond_eb

    move v1, v4

    goto :goto_f0

    .line 494
    :cond_eb
    if-le v5, v14, :cond_ef

    move v1, v6

    goto :goto_f0

    :cond_ef
    const/4 v1, 0x6

    :goto_f0
    nop

    .line 495
    .local v1, "state":I
    or-int v7, v2, v1

    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_1c5

    .line 496
    nop

    .line 500
    .end local v2    # "b":I
    if-eq v1, v6, :cond_11c

    .line 502
    if-ne v5, v14, :cond_103

    .line 503
    aget-wide v7, v13, v14

    .line 504
    .local v7, "sum":D
    add-int/lit8 v2, v14, 0x1

    .local v2, "first":I
    goto :goto_106

    .line 507
    .end local v2    # "first":I
    .end local v7    # "sum":D
    :cond_103
    iget-wide v7, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 508
    .restart local v7    # "sum":D
    move v2, v5

    .line 510
    .restart local v2    # "first":I
    :goto_106
    move v9, v2

    .local v9, "i":I
    :goto_107
    move/from16 v10, v19

    .end local v19    # "h":I
    .local v10, "h":I
    if-ge v9, v10, :cond_11b

    .line 511
    aget-wide v3, v13, v9

    invoke-interface {v11, v7, v8, v3, v4}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v3

    move-wide v7, v3

    aput-wide v3, v13, v9

    .line 510
    add-int/lit8 v9, v9, 0x1

    move/from16 v19, v10

    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_107

    .line 512
    .end local v2    # "first":I
    .end local v9    # "i":I
    :cond_11b
    goto :goto_133

    .line 513
    .end local v7    # "sum":D
    .end local v10    # "h":I
    .restart local v19    # "h":I
    :cond_11c
    move/from16 v10, v19

    .end local v19    # "h":I
    .restart local v10    # "h":I
    if-ge v10, v15, :cond_131

    .line 514
    aget-wide v2, v13, v5

    .line 515
    .local v2, "sum":D
    add-int/lit8 v9, v5, 0x1

    move-wide v7, v2

    .end local v2    # "sum":D
    .restart local v7    # "sum":D
    .restart local v9    # "i":I
    :goto_125
    if-ge v9, v10, :cond_130

    .line 516
    aget-wide v2, v13, v9

    invoke-interface {v11, v7, v8, v2, v3}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v7

    .line 515
    add-int/lit8 v9, v9, 0x1

    goto :goto_125

    .end local v9    # "i":I
    :cond_130
    goto :goto_133

    .line 519
    .end local v7    # "sum":D
    :cond_131
    iget-wide v7, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->in:D

    .line 520
    .restart local v7    # "sum":D
    :goto_133
    iput-wide v7, v0, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 522
    :goto_135
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object v3, v2

    .local v3, "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-nez v2, :cond_14b

    .line 523
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_148

    .line 524
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->quietlyComplete()V

    move-object v9, v13

    goto/16 :goto_1bd

    .line 523
    :cond_148
    move-object v9, v13

    goto/16 :goto_1bd

    .line 527
    :cond_14b
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->getPendingCount()I

    move-result v2

    .line 528
    .local v2, "b":I
    and-int v4, v2, v1

    const/4 v9, 0x4

    and-int/2addr v4, v9

    if-eqz v4, :cond_15b

    .line 529
    move-object v0, v3

    move-wide/from16 v18, v7

    move-object v9, v13

    goto/16 :goto_1bf

    .line 530
    :cond_15b
    and-int v4, v2, v1

    and-int/2addr v4, v6

    if-eqz v4, :cond_1b1

    .line 532
    iget-object v4, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v16, v4

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v4, :cond_18d

    iget-object v4, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;

    move-object/from16 v17, v4

    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    if-eqz v4, :cond_185

    .line 534
    move-wide/from16 v18, v7

    move-object/from16 v4, v16

    .end local v7    # "sum":D
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v18, "sum":D
    iget-wide v6, v4, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    .line 535
    .local v6, "lout":D
    move-object/from16 v8, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .local v8, "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    iget v9, v8, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->hi:I

    if-ne v9, v15, :cond_17b

    move-object v9, v13

    move-wide v12, v6

    goto :goto_182

    .line 536
    :cond_17b
    move-object v9, v13

    .end local v13    # "a":[D
    .local v9, "a":[D
    iget-wide v12, v8, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    invoke-interface {v11, v6, v7, v12, v13}, Ljava/util/function/DoubleBinaryOperator;->applyAsDouble(DD)D

    move-result-wide v12

    :goto_182
    iput-wide v12, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->out:D

    goto :goto_192

    .line 532
    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v6    # "lout":D
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v9    # "a":[D
    .end local v18    # "sum":D
    .restart local v7    # "sum":D
    .restart local v13    # "a":[D
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_185
    move-wide/from16 v18, v7

    move-object v9, v13

    move-object/from16 v4, v16

    move-object/from16 v8, v17

    .end local v7    # "sum":D
    .end local v13    # "a":[D
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v8    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v9    # "a":[D
    .restart local v18    # "sum":D
    goto :goto_192

    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v9    # "a":[D
    .end local v18    # "sum":D
    .restart local v7    # "sum":D
    .restart local v13    # "a":[D
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :cond_18d
    move-wide/from16 v18, v7

    move-object v9, v13

    move-object/from16 v4, v16

    .line 538
    .end local v7    # "sum":D
    .end local v13    # "a":[D
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v9    # "a":[D
    .restart local v18    # "sum":D
    :goto_192
    and-int/lit8 v6, v2, 0x1

    if-nez v6, :cond_19c

    iget v6, v3, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->lo:I

    if-ne v6, v14, :cond_19c

    .line 539
    const/4 v6, 0x1

    goto :goto_19d

    :cond_19c
    const/4 v6, 0x0

    .line 540
    .local v6, "refork":I
    :goto_19d
    or-int v7, v2, v1

    or-int/2addr v7, v6

    move v8, v7

    .local v8, "nextState":I
    if-eq v7, v2, :cond_1a9

    .line 541
    invoke-virtual {v3, v2, v8}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_1b0

    .line 542
    :cond_1a9
    const/4 v1, 0x2

    .line 543
    move-object v0, v3

    .line 544
    if-eqz v6, :cond_1b0

    .line 545
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 547
    .end local v4    # "lt":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v6    # "refork":I
    .end local v8    # "nextState":I
    :cond_1b0
    goto :goto_1bf

    .line 548
    .end local v9    # "a":[D
    .end local v18    # "sum":D
    .restart local v7    # "sum":D
    .restart local v13    # "a":[D
    :cond_1b1
    move-wide/from16 v18, v7

    move-object v9, v13

    .end local v7    # "sum":D
    .end local v13    # "a":[D
    .restart local v9    # "a":[D
    .restart local v18    # "sum":D
    or-int v4, v2, v1

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_1bf

    .line 549
    nop

    .line 553
    .end local v1    # "state":I
    .end local v2    # "b":I
    .end local v3    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v9    # "a":[D
    .end local v10    # "h":I
    .end local v18    # "sum":D
    .restart local v13    # "a":[D
    :goto_1bd
    move-object v10, v0

    .end local v13    # "a":[D
    .restart local v9    # "a":[D
    goto :goto_1d8

    .line 550
    .restart local v1    # "state":I
    .restart local v3    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v10    # "h":I
    .restart local v18    # "sum":D
    :cond_1bf
    :goto_1bf
    move-object v13, v9

    move-wide/from16 v7, v18

    const/4 v6, 0x2

    goto/16 :goto_135

    .line 495
    .end local v3    # "par":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v9    # "a":[D
    .end local v10    # "h":I
    .end local v18    # "sum":D
    .restart local v2    # "b":I
    .restart local v13    # "a":[D
    .restart local v19    # "h":I
    :cond_1c5
    move-object v9, v13

    move/from16 v10, v19

    .end local v13    # "a":[D
    .end local v19    # "h":I
    .restart local v9    # "a":[D
    .restart local v10    # "h":I
    const/4 v3, 0x1

    goto/16 :goto_d8

    .line 445
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v2    # "b":I
    .end local v5    # "l":I
    .end local v22    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .local v9, "l":I
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v13    # "a":[D
    :cond_1cb
    move/from16 v22, v1

    move v5, v9

    move-object v0, v10

    move-object v9, v13

    move v10, v8

    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v13    # "a":[D
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v5    # "l":I
    .local v9, "a":[D
    .local v10, "h":I
    .restart local v22    # "th":I
    goto :goto_1d7

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v5    # "l":I
    .end local v22    # "th":I
    .restart local v1    # "th":I
    .local v9, "l":I
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v13    # "a":[D
    :cond_1d2
    move/from16 v22, v1

    move v5, v9

    move-object v0, v10

    move-object v9, v13

    .line 553
    .end local v1    # "th":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v13    # "a":[D
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v5    # "l":I
    .local v9, "a":[D
    .restart local v22    # "th":I
    :goto_1d7
    move-object v10, v0

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    :goto_1d8
    return-void

    .line 441
    .end local v5    # "l":I
    .end local v9    # "a":[D
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$DoubleCumulateTask;
    .end local v14    # "org":I
    .end local v15    # "fnc":I
    .end local v22    # "th":I
    .restart local v13    # "a":[D
    :cond_1d9
    move-object v9, v13

    .line 442
    .end local v13    # "a":[D
    :cond_1da
    const/4 v0, 0x0

    throw v0
.end method
