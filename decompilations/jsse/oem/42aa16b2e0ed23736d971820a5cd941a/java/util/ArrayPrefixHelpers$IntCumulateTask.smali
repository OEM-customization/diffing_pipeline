.class final Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArrayPrefixHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArrayPrefixHelpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntCumulateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x33c9dbf10c857601L


# instance fields
.field final blacklist array:[I

.field final blacklist fence:I

.field final blacklist function:Ljava/util/function/IntBinaryOperator;

.field final blacklist hi:I

.field blacklist in:I

.field blacklist left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final blacklist lo:I

.field final blacklist origin:I

.field blacklist out:I

.field blacklist right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final blacklist threshold:I


# direct methods
.method public constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .line 568
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 569
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 570
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 572
    nop

    .line 574
    sub-int v0, p5, p4

    .line 573
    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v1

    shl-int/lit8 v1, v1, 0x3

    div-int/2addr v0, v1

    move v1, v0

    .local v1, "p":I
    const/16 v2, 0x10

    if-gt v0, v2, :cond_1f

    .line 574
    goto :goto_20

    :cond_1f
    move v2, v1

    :goto_20
    iput v2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 575
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .line 581
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 582
    iput-object p2, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    iput-object p3, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .line 583
    iput p4, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    iput p5, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 584
    iput p6, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 585
    iput p7, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    iput p8, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .line 586
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 23

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/IntBinaryOperator;
    if-eqz v1, :cond_1b0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    move-object v13, v1

    .local v13, "a":[I
    if-eqz v1, :cond_1b0

    .line 593
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .local v1, "th":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    .local v14, "org":I
    iget v15, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 594
    .local v15, "fnc":I
    move-object/from16 v2, p0

    move-object v10, v2

    .line 595
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_15
    iget v2, v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move v9, v2

    .local v9, "l":I
    if-ltz v2, :cond_1aa

    iget v2, v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    move v8, v2

    .local v8, "h":I
    array-length v3, v13

    if-gt v2, v3, :cond_1a4

    .line 596
    sub-int v2, v8, v9

    const/4 v3, 0x1

    if-le v2, v1, :cond_ce

    .line 597
    iget-object v7, v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v6, v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 598
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v7, :cond_66

    .line 599
    add-int v2, v9, v8

    ushr-int/lit8 v16, v2, 0x1

    .line 600
    .local v16, "mid":I
    new-instance v5, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v5

    move-object v3, v10

    move-object v4, v11

    move-object v12, v5

    move-object v5, v13

    move-object v0, v6

    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move v6, v14

    move-object/from16 v17, v0

    move-object v0, v7

    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move v7, v15

    move/from16 v18, v8

    .end local v8    # "h":I
    .local v18, "h":I
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "l":I
    .local v19, "l":I
    move/from16 v9, v16

    move-object/from16 v20, v0

    move-object v0, v10

    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v20, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move/from16 v10, v18

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v12, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v17, v12

    .line 602
    .local v12, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v10

    move-object v3, v0

    move/from16 v9, v19

    move/from16 v21, v1

    move-object v1, v10

    .end local v1    # "th":I
    .local v21, "th":I
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v7, v1

    .end local v20    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v7    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v0, v1

    .line 604
    .end local v16    # "mid":I
    move-object v10, v0

    move/from16 v6, v19

    goto/16 :goto_c3

    .line 606
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v18    # "h":I
    .end local v19    # "l":I
    .end local v21    # "th":I
    .restart local v1    # "th":I
    .restart local v6    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v8    # "h":I
    .restart local v9    # "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_66
    move/from16 v21, v1

    move-object/from16 v17, v6

    move-object/from16 v20, v7

    move/from16 v18, v8

    move/from16 v19, v9

    move-object v0, v10

    .end local v1    # "th":I
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v18    # "h":I
    .restart local v19    # "l":I
    .restart local v20    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v21    # "th":I
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 607
    .local v1, "pin":I
    move-object/from16 v2, v20

    .end local v20    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v2, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iput v1, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 608
    const/4 v4, 0x0

    move-object v0, v4

    move-object v5, v4

    .line 609
    .local v5, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v17, :cond_9f

    .line 610
    iget v4, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 611
    .local v4, "lout":I
    move/from16 v6, v19

    .end local v19    # "l":I
    .local v6, "l":I
    if-ne v6, v14, :cond_84

    move v7, v4

    goto :goto_88

    .line 612
    :cond_84
    invoke-interface {v11, v1, v4}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v7

    :goto_88
    move-object/from16 v8, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v8, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iput v7, v8, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 614
    :cond_8c
    invoke-virtual {v8}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v7

    move v9, v7

    .local v9, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_95

    .line 615
    goto :goto_a3

    .line 616
    :cond_95
    or-int/lit8 v7, v9, 0x1

    invoke-virtual {v8, v9, v7}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_8c

    .line 617
    move-object v0, v8

    .line 618
    goto :goto_a3

    .line 609
    .end local v4    # "lout":I
    .end local v6    # "l":I
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "c":I
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v19    # "l":I
    :cond_9f
    move-object/from16 v8, v17

    move/from16 v6, v19

    .line 623
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v19    # "l":I
    .restart local v6    # "l":I
    .restart local v8    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_a3
    :goto_a3
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v4

    move v7, v4

    .local v7, "c":I
    and-int/2addr v4, v3

    if-eqz v4, :cond_ae

    .line 624
    move-object v10, v0

    move-object v12, v5

    goto :goto_bc

    .line 625
    :cond_ae
    or-int/lit8 v4, v7, 0x1

    invoke-virtual {v2, v7, v4}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_a3

    .line 626
    if-eqz v0, :cond_b9

    .line 627
    move-object v5, v0

    .line 628
    :cond_b9
    move-object v0, v2

    .line 629
    move-object v10, v0

    move-object v12, v5

    .line 632
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v5    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v7    # "c":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v12    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_bc
    if-nez v10, :cond_c0

    .line 633
    goto/16 :goto_1af

    .line 632
    :cond_c0
    move-object v7, v2

    move-object/from16 v17, v8

    .line 635
    .end local v1    # "pin":I
    .end local v2    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v8    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v7, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_c3
    if-eqz v12, :cond_c8

    .line 636
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 637
    .end local v7    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v12    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_c8
    move-object/from16 v0, p0

    move/from16 v1, v21

    goto/16 :goto_15

    .line 596
    .end local v6    # "l":I
    .end local v18    # "h":I
    .end local v21    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .local v9, "l":I
    :cond_ce
    move/from16 v21, v1

    move/from16 v18, v8

    move v6, v9

    move-object v0, v10

    .line 641
    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v6    # "l":I
    .restart local v18    # "h":I
    .restart local v21    # "th":I
    :goto_d4
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v1

    move v2, v1

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v1, v4

    if-eqz v1, :cond_df

    .line 642
    goto/16 :goto_1ae

    .line 643
    :cond_df
    and-int/lit8 v1, v2, 0x1

    const/4 v5, 0x2

    if-eqz v1, :cond_e6

    move v1, v4

    goto :goto_eb

    .line 644
    :cond_e6
    if-le v6, v14, :cond_ea

    move v1, v5

    goto :goto_eb

    :cond_ea
    const/4 v1, 0x6

    :goto_eb
    nop

    .line 645
    .local v1, "state":I
    or-int v7, v2, v1

    invoke-virtual {v0, v2, v7}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_19f

    .line 646
    nop

    .line 650
    .end local v2    # "b":I
    if-eq v1, v5, :cond_116

    .line 652
    if-ne v6, v14, :cond_fe

    .line 653
    aget v2, v13, v14

    .line 654
    .local v2, "sum":I
    add-int/lit8 v7, v14, 0x1

    .local v7, "first":I
    goto :goto_101

    .line 657
    .end local v2    # "sum":I
    .end local v7    # "first":I
    :cond_fe
    iget v2, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 658
    .restart local v2    # "sum":I
    move v7, v6

    .line 660
    .restart local v7    # "first":I
    :goto_101
    move v8, v7

    .local v8, "i":I
    :goto_102
    move/from16 v9, v18

    .end local v18    # "h":I
    .local v9, "h":I
    if-ge v8, v9, :cond_114

    .line 661
    aget v10, v13, v8

    invoke-interface {v11, v2, v10}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v10

    move v2, v10

    aput v10, v13, v8

    .line 660
    add-int/lit8 v8, v8, 0x1

    move/from16 v18, v9

    goto :goto_102

    .line 662
    .end local v7    # "first":I
    .end local v8    # "i":I
    :cond_114
    move v7, v2

    goto :goto_12e

    .line 663
    .end local v2    # "sum":I
    .end local v9    # "h":I
    .restart local v18    # "h":I
    :cond_116
    move/from16 v9, v18

    .end local v18    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v15, :cond_12b

    .line 664
    aget v2, v13, v6

    .line 665
    .restart local v2    # "sum":I
    add-int/lit8 v7, v6, 0x1

    .local v7, "i":I
    :goto_11e
    if-ge v7, v9, :cond_129

    .line 666
    aget v8, v13, v7

    invoke-interface {v11, v2, v8}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v2

    .line 665
    add-int/lit8 v7, v7, 0x1

    goto :goto_11e

    :cond_129
    move v7, v2

    .end local v7    # "i":I
    goto :goto_12e

    .line 669
    .end local v2    # "sum":I
    :cond_12b
    iget v2, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move v7, v2

    .line 670
    .local v7, "sum":I
    :goto_12e
    iput v7, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move-object v10, v0

    .line 672
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_131
    invoke-virtual {v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v0

    .local v2, "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v0, :cond_143

    .line 673
    and-int/lit8 v0, v1, 0x4

    if-eqz v0, :cond_1af

    .line 674
    invoke-virtual {v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->quietlyComplete()V

    goto/16 :goto_1af

    .line 677
    :cond_143
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v0

    .line 678
    .local v0, "b":I
    and-int v8, v0, v1

    and-int/2addr v8, v4

    if-eqz v8, :cond_14f

    .line 679
    move-object v8, v2

    move-object v10, v8

    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v8, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_19c

    .line 680
    .end local v8    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_14f
    and-int v8, v0, v1

    and-int/2addr v8, v5

    if-eqz v8, :cond_193

    .line 682
    iget-object v8, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v12, v8

    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v8, :cond_174

    iget-object v8, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v16, v8

    .local v16, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v8, :cond_172

    .line 684
    iget v8, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 685
    .local v8, "lout":I
    move-object/from16 v3, v16

    .end local v16    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v4, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v4, v15, :cond_169

    move v4, v8

    goto :goto_16f

    .line 686
    :cond_169
    iget v4, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    invoke-interface {v11, v8, v4}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v4

    :goto_16f
    iput v4, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    goto :goto_174

    .line 682
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v8    # "lout":I
    .restart local v16    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_172
    move-object/from16 v3, v16

    .line 688
    .end local v16    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_174
    :goto_174
    and-int/lit8 v3, v0, 0x1

    if-nez v3, :cond_17e

    iget v3, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v3, v14, :cond_17e

    .line 689
    const/4 v3, 0x1

    goto :goto_17f

    :cond_17e
    const/4 v3, 0x0

    .line 690
    .local v3, "refork":I
    :goto_17f
    or-int v4, v0, v1

    or-int/2addr v4, v3

    move v8, v4

    .local v8, "nextState":I
    if-eq v4, v0, :cond_18b

    .line 691
    invoke-virtual {v2, v0, v8}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_192

    .line 692
    :cond_18b
    const/4 v1, 0x2

    .line 693
    move-object v10, v2

    .line 694
    if-eqz v3, :cond_192

    .line 695
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 697
    .end local v3    # "refork":I
    .end local v8    # "nextState":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_192
    goto :goto_19c

    .line 698
    :cond_193
    or-int v3, v0, v1

    invoke-virtual {v2, v0, v3}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_19c

    .line 699
    goto :goto_1af

    .line 700
    .end local v0    # "b":I
    :cond_19c
    :goto_19c
    const/4 v3, 0x1

    const/4 v4, 0x4

    goto :goto_131

    .line 645
    .end local v7    # "sum":I
    .end local v9    # "h":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v2, "b":I
    .restart local v18    # "h":I
    :cond_19f
    move/from16 v9, v18

    .end local v18    # "h":I
    .restart local v9    # "h":I
    const/4 v3, 0x1

    goto/16 :goto_d4

    .line 595
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v2    # "b":I
    .end local v6    # "l":I
    .end local v21    # "th":I
    .local v1, "th":I
    .local v8, "h":I
    .local v9, "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1a4
    move/from16 v21, v1

    move v6, v9

    move-object v0, v10

    move v9, v8

    .end local v1    # "th":I
    .end local v8    # "h":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v6    # "l":I
    .local v9, "h":I
    .restart local v21    # "th":I
    goto :goto_1ae

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v6    # "l":I
    .end local v21    # "th":I
    .restart local v1    # "th":I
    .local v9, "l":I
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1aa
    move/from16 v21, v1

    move v6, v9

    move-object v0, v10

    .line 703
    .end local v1    # "th":I
    .end local v9    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v6    # "l":I
    .restart local v21    # "th":I
    :goto_1ae
    move-object v10, v0

    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1af
    :goto_1af
    return-void

    .line 592
    .end local v6    # "l":I
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v13    # "a":[I
    .end local v14    # "org":I
    .end local v15    # "fnc":I
    .end local v21    # "th":I
    :cond_1b0
    const/4 v0, 0x0

    throw v0
.end method
