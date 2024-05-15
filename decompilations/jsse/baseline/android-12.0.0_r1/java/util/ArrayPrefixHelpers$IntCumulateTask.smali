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
.method public final whitelist test-api compute()V
    .registers 23

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    move-object v11, v1

    .local v11, "fn":Ljava/util/function/IntBinaryOperator;
    if-eqz v1, :cond_1a2

    iget-object v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    move-object v12, v1

    .local v12, "a":[I
    if-eqz v1, :cond_1a2

    .line 593
    iget v1, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .local v1, "th":I
    iget v13, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    .local v13, "org":I
    iget v14, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 594
    .local v14, "fnc":I
    move-object/from16 v2, p0

    move-object v15, v2

    .line 595
    .local v15, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_15
    iget v2, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move v10, v2

    .local v10, "l":I
    if-ltz v2, :cond_1a0

    iget v2, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    move v9, v2

    .local v9, "h":I
    array-length v3, v12

    if-gt v2, v3, :cond_19e

    .line 596
    sub-int v2, v9, v10

    const/4 v3, 0x1

    if-le v2, v1, :cond_c3

    .line 597
    iget-object v8, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v8, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v7, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 598
    .local v7, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v8, :cond_66

    .line 599
    add-int v2, v10, v9

    ushr-int/lit8 v16, v2, 0x1

    .line 600
    .local v16, "mid":I
    new-instance v6, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v6

    move-object v3, v15

    move-object v4, v11

    move-object v5, v12

    move-object v0, v6

    move v6, v13

    move-object/from16 v17, v7

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v17, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move v7, v14

    move-object/from16 v18, v8

    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v18, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move v8, v1

    move/from16 v19, v9

    .end local v9    # "h":I
    .local v19, "h":I
    move/from16 v9, v16

    move/from16 v20, v10

    .end local v10    # "l":I
    .local v20, "l":I
    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v17, v0

    .line 602
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v2, v10

    move/from16 v9, v20

    move-object/from16 v21, v0

    move-object v0, v10

    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v21, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move/from16 v10, v16

    invoke-direct/range {v2 .. v10}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    iput-object v0, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v8, v0

    .line 604
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v16    # "mid":I
    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v8    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v15, v0

    move-object v2, v8

    move-object/from16 v7, v17

    move/from16 v8, v20

    move-object/from16 v0, v21

    goto/16 :goto_ba

    .line 606
    .end local v0    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v19    # "h":I
    .end local v20    # "l":I
    .end local v21    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v7    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v9    # "h":I
    .restart local v10    # "l":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_66
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move/from16 v19, v9

    move/from16 v20, v10

    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v8    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v18    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v19    # "h":I
    .restart local v20    # "l":I
    iget v0, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 607
    .local v0, "pin":I
    move-object/from16 v2, v18

    .end local v18    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v2, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iput v0, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 608
    const/4 v4, 0x0

    move-object v5, v4

    .line 609
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v4, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v5, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object/from16 v6, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v6, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v6, :cond_9b

    .line 610
    iget v7, v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 611
    .local v7, "lout":I
    move/from16 v8, v20

    .end local v20    # "l":I
    .local v8, "l":I
    if-ne v8, v13, :cond_82

    move v9, v7

    goto :goto_86

    .line 612
    :cond_82
    invoke-interface {v11, v0, v7}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v9

    :goto_86
    iput v9, v6, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 614
    :cond_88
    invoke-virtual {v6}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v9

    move v10, v9

    .local v10, "c":I
    and-int/2addr v9, v3

    if-eqz v9, :cond_91

    .line 615
    goto :goto_9d

    .line 616
    :cond_91
    or-int/lit8 v9, v10, 0x1

    invoke-virtual {v6, v10, v9}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v9

    if-eqz v9, :cond_88

    .line 617
    move-object v5, v6

    .line 618
    goto :goto_9d

    .line 609
    .end local v7    # "lout":I
    .end local v8    # "l":I
    .end local v10    # "c":I
    .restart local v20    # "l":I
    :cond_9b
    move/from16 v8, v20

    .line 623
    .end local v20    # "l":I
    .restart local v8    # "l":I
    :cond_9d
    :goto_9d
    invoke-virtual {v2}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v7

    move v9, v7

    .local v9, "c":I
    and-int/2addr v7, v3

    if-eqz v7, :cond_a7

    .line 624
    move-object v15, v5

    goto :goto_b4

    .line 625
    :cond_a7
    or-int/lit8 v7, v9, 0x1

    invoke-virtual {v2, v9, v7}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 626
    if-eqz v5, :cond_b2

    .line 627
    move-object v4, v5

    .line 628
    :cond_b2
    move-object v3, v2

    .line 629
    .end local v5    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v3, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v15, v3

    .line 632
    .end local v3    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "c":I
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_b4
    if-nez v15, :cond_b8

    .line 633
    goto/16 :goto_1a1

    .line 632
    :cond_b8
    move-object v0, v4

    move-object v7, v6

    .line 635
    .end local v4    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v6    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v0, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v7, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_ba
    if-eqz v0, :cond_bf

    .line 636
    invoke-virtual {v0}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 637
    .end local v0    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v2    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v7    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_bf
    move-object/from16 v0, p0

    goto/16 :goto_15

    .line 596
    .end local v8    # "l":I
    .end local v19    # "h":I
    .local v9, "h":I
    .local v10, "l":I
    :cond_c3
    move/from16 v19, v9

    move v8, v10

    .line 641
    .end local v9    # "h":I
    .end local v10    # "l":I
    .restart local v8    # "l":I
    .restart local v19    # "h":I
    :goto_c6
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v0

    move v2, v0

    .local v2, "b":I
    const/4 v4, 0x4

    and-int/2addr v0, v4

    if-eqz v0, :cond_d1

    .line 642
    goto/16 :goto_1a1

    .line 643
    :cond_d1
    and-int/lit8 v0, v2, 0x1

    const/4 v5, 0x2

    if-eqz v0, :cond_d8

    move v0, v4

    goto :goto_dd

    .line 644
    :cond_d8
    if-le v8, v13, :cond_dc

    move v0, v5

    goto :goto_dd

    :cond_dc
    const/4 v0, 0x6

    :goto_dd
    nop

    .line 645
    .local v0, "state":I
    or-int v6, v2, v0

    invoke-virtual {v15, v2, v6}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v6

    if-eqz v6, :cond_199

    .line 646
    nop

    .line 650
    .end local v2    # "b":I
    if-eq v0, v5, :cond_108

    .line 652
    if-ne v8, v13, :cond_f0

    .line 653
    aget v2, v12, v13

    .line 654
    .local v2, "sum":I
    add-int/lit8 v6, v13, 0x1

    .local v6, "first":I
    goto :goto_f3

    .line 657
    .end local v2    # "sum":I
    .end local v6    # "first":I
    :cond_f0
    iget v2, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 658
    .restart local v2    # "sum":I
    move v6, v8

    .line 660
    .restart local v6    # "first":I
    :goto_f3
    move v7, v6

    .local v7, "i":I
    :goto_f4
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v7, v9, :cond_106

    .line 661
    aget v10, v12, v7

    invoke-interface {v11, v2, v10}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v10

    move v2, v10

    aput v10, v12, v7

    .line 660
    add-int/lit8 v7, v7, 0x1

    move/from16 v19, v9

    goto :goto_f4

    .line 662
    .end local v6    # "first":I
    .end local v7    # "i":I
    :cond_106
    move v6, v2

    goto :goto_120

    .line 663
    .end local v2    # "sum":I
    .end local v9    # "h":I
    .restart local v19    # "h":I
    :cond_108
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    if-ge v9, v14, :cond_11d

    .line 664
    aget v2, v12, v8

    .line 665
    .restart local v2    # "sum":I
    add-int/lit8 v10, v8, 0x1

    .local v10, "i":I
    :goto_110
    if-ge v10, v9, :cond_11b

    .line 666
    aget v6, v12, v10

    invoke-interface {v11, v2, v6}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v2

    .line 665
    add-int/lit8 v10, v10, 0x1

    goto :goto_110

    :cond_11b
    move v6, v2

    .end local v10    # "i":I
    goto :goto_120

    .line 669
    .end local v2    # "sum":I
    :cond_11d
    iget v2, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move v6, v2

    .line 670
    .local v6, "sum":I
    :goto_120
    iput v6, v15, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 672
    :goto_122
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object v7, v2

    .local v7, "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v2, :cond_134

    .line 673
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_1a1

    .line 674
    invoke-virtual {v15}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->quietlyComplete()V

    goto/16 :goto_1a1

    .line 677
    :cond_134
    invoke-virtual {v7}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v2

    .line 678
    .local v2, "b":I
    and-int v10, v2, v0

    and-int/2addr v10, v4

    if-eqz v10, :cond_140

    .line 679
    move-object v10, v7

    move-object v15, v10

    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v10, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_195

    .line 680
    .end local v10    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_140
    and-int v10, v2, v0

    and-int/2addr v10, v5

    if-eqz v10, :cond_18c

    .line 682
    iget-object v10, v7, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v16, v10

    .local v16, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v10, :cond_16b

    iget-object v10, v7, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    move-object/from16 v17, v10

    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v10, :cond_166

    .line 684
    move-object/from16 v10, v16

    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v10, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v3, v10, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 685
    .local v3, "lout":I
    move-object/from16 v4, v17

    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .local v4, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget v5, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v5, v14, :cond_15d

    move v5, v3

    goto :goto_163

    .line 686
    :cond_15d
    iget v5, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    invoke-interface {v11, v3, v5}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v5

    :goto_163
    iput v5, v7, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    goto :goto_16d

    .line 682
    .end local v3    # "lout":I
    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v10    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_166
    move-object/from16 v10, v16

    move-object/from16 v4, v17

    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v17    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v4    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_16d

    .end local v4    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v10    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_16b
    move-object/from16 v10, v16

    .line 688
    .end local v16    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v10    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_16d
    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_177

    iget v3, v7, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v3, v13, :cond_177

    .line 689
    const/4 v3, 0x1

    goto :goto_178

    :cond_177
    const/4 v3, 0x0

    .line 690
    .local v3, "refork":I
    :goto_178
    or-int v4, v2, v0

    or-int/2addr v4, v3

    move v5, v4

    .local v5, "nextState":I
    if-eq v4, v2, :cond_184

    .line 691
    invoke-virtual {v7, v2, v5}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v4

    if-eqz v4, :cond_18b

    .line 692
    :cond_184
    const/4 v0, 0x2

    .line 693
    move-object v15, v7

    .line 694
    if-eqz v3, :cond_18b

    .line 695
    invoke-virtual {v7}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 697
    .end local v3    # "refork":I
    .end local v5    # "nextState":I
    .end local v10    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_18b
    goto :goto_195

    .line 698
    :cond_18c
    or-int v3, v2, v0

    invoke-virtual {v7, v2, v3}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v3

    if-eqz v3, :cond_195

    .line 699
    goto :goto_1a1

    .line 700
    .end local v2    # "b":I
    :cond_195
    :goto_195
    const/4 v3, 0x1

    const/4 v4, 0x4

    const/4 v5, 0x2

    goto :goto_122

    .line 645
    .end local v6    # "sum":I
    .end local v7    # "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v9    # "h":I
    .restart local v2    # "b":I
    .restart local v19    # "h":I
    :cond_199
    move/from16 v9, v19

    .end local v19    # "h":I
    .restart local v9    # "h":I
    const/4 v3, 0x1

    goto/16 :goto_c6

    .line 595
    .end local v0    # "state":I
    .end local v2    # "b":I
    .end local v8    # "l":I
    .local v10, "l":I
    :cond_19e
    move v8, v10

    .end local v10    # "l":I
    .restart local v8    # "l":I
    goto :goto_1a1

    .end local v8    # "l":I
    .end local v9    # "h":I
    .restart local v10    # "l":I
    :cond_1a0
    move v8, v10

    .line 703
    .end local v10    # "l":I
    .restart local v8    # "l":I
    :cond_1a1
    :goto_1a1
    return-void

    .line 592
    .end local v1    # "th":I
    .end local v8    # "l":I
    .end local v12    # "a":[I
    .end local v13    # "org":I
    .end local v14    # "fnc":I
    .end local v15    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_1a2
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
