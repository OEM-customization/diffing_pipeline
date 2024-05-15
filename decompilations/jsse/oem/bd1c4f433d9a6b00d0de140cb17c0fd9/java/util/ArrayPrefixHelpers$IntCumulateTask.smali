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
        "Ljava/util/concurrent/CountedCompleter",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x33c9dbf10c857601L


# instance fields
.field final array:[I

.field final fence:I

.field final function:Ljava/util/function/IntBinaryOperator;

.field final hi:I

.field in:I

.field left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final lo:I

.field final origin:I

.field out:I

.field right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

.field final threshold:I


# direct methods
.method public constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[III)V
    .registers 10
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "lo"    # I
    .param p5, "hi"    # I

    .prologue
    const/16 v1, 0x10

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

    .line 573
    sub-int v2, p5, p4

    invoke-static {}, Ljava/util/concurrent/ForkJoinPool;->getCommonPoolParallelism()I

    move-result v3

    shl-int/lit8 v3, v3, 0x3

    div-int v0, v2, v3

    .local v0, "p":I
    if-gt v0, v1, :cond_1e

    move v0, v1

    .line 572
    .end local v0    # "p":I
    :cond_1e
    iput v0, p0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .line 575
    return-void
.end method

.method constructor <init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V
    .registers 9
    .param p1, "parent"    # Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .param p2, "function"    # Ljava/util/function/IntBinaryOperator;
    .param p3, "array"    # [I
    .param p4, "origin"    # I
    .param p5, "fence"    # I
    .param p6, "threshold"    # I
    .param p7, "lo"    # I
    .param p8, "hi"    # I

    .prologue
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
.method public final compute()V
    .registers 34

    .prologue
    .line 591
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->function:Ljava/util/function/IntBinaryOperator;

    .local v5, "fn":Ljava/util/function/IntBinaryOperator;
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v6, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->array:[I

    .local v6, "a":[I
    if-nez v6, :cond_12

    .line 592
    .end local v6    # "a":[I
    :cond_c
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 593
    .restart local v6    # "a":[I
    :cond_12
    move-object/from16 v0, p0

    iget v9, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->threshold:I

    .local v9, "th":I
    move-object/from16 v0, p0

    iget v7, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->origin:I

    .local v7, "org":I
    move-object/from16 v0, p0

    iget v8, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fence:I

    .line 594
    .local v8, "fnc":I
    move-object/from16 v4, p0

    .line 595
    :cond_20
    :goto_20
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    move/from16 v19, v0

    .local v19, "l":I
    if-ltz v19, :cond_86

    iget v11, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    .local v11, "h":I
    array-length v13, v6

    if-gt v11, v13, :cond_86

    .line 596
    sub-int v13, v11, v19

    if-le v13, v9, :cond_ac

    .line 597
    iget-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v12, "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    iget-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .line 598
    .local v3, "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v12, :cond_5b

    .line 599
    add-int v13, v19, v11

    ushr-int/lit8 v10, v13, 0x1

    .line 601
    .local v10, "mid":I
    new-instance v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    invoke-direct/range {v3 .. v11}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    .line 600
    iput-object v3, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object/from16 v23, v3

    .line 603
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    new-instance v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v13, v4

    move-object v14, v5

    move-object v15, v6

    move/from16 v16, v7

    move/from16 v17, v8

    move/from16 v18, v9

    move/from16 v20, v10

    invoke-direct/range {v12 .. v20}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;-><init>(Ljava/util/ArrayPrefixHelpers$IntCumulateTask;Ljava/util/function/IntBinaryOperator;[IIIIII)V

    .line 602
    iput-object v12, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    move-object v4, v12

    .line 635
    .end local v10    # "mid":I
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_55
    if-eqz v23, :cond_20

    .line 636
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_20

    .line 606
    :cond_5b
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v29, v0

    .line 607
    .local v29, "pin":I
    move/from16 v0, v29

    iput v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 608
    const/4 v4, 0x0

    .local v4, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    const/16 v23, 0x0

    .line 609
    .local v23, "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v3, :cond_7c

    .line 610
    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v26, v0

    .line 611
    .local v26, "lout":I
    move/from16 v0, v19

    if-ne v0, v7, :cond_87

    .end local v26    # "lout":I
    :goto_70
    move/from16 v0, v26

    iput v0, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    .line 614
    :cond_74
    invoke-virtual {v3}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v22

    .local v22, "c":I
    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_90

    .line 623
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    :cond_7c
    :goto_7c
    invoke-virtual {v12}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v22

    .restart local v22    # "c":I
    and-int/lit8 v13, v22, 0x1

    if-eqz v13, :cond_9c

    .line 632
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :goto_84
    if-nez v4, :cond_55

    .line 703
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v11    # "h":I
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    .end local v29    # "pin":I
    :cond_86
    :goto_86
    return-void

    .line 612
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v11    # "h":I
    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v26    # "lout":I
    .restart local v29    # "pin":I
    :cond_87
    move/from16 v0, v29

    move/from16 v1, v26

    invoke-interface {v5, v0, v1}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v26

    goto :goto_70

    .line 616
    .end local v26    # "lout":I
    .restart local v22    # "c":I
    :cond_90
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v3, v0, v13}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_74

    .line 617
    move-object v4, v3

    .line 618
    .local v4, "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_7c

    .line 625
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_9c
    or-int/lit8 v13, v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v12, v0, v13}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_7c

    .line 626
    if-eqz v4, :cond_aa

    .line 627
    move-object/from16 v23, v4

    .line 628
    .end local v23    # "f":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_aa
    move-object v4, v12

    .line 629
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_84

    .line 641
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v22    # "c":I
    .end local v29    # "pin":I
    :cond_ac
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v21

    .local v21, "b":I
    and-int/lit8 v13, v21, 0x4

    if-nez v13, :cond_86

    .line 643
    and-int/lit8 v13, v21, 0x1

    if-eqz v13, :cond_e4

    const/16 v31, 0x4

    .line 645
    .local v31, "state":I
    :goto_ba
    or-int v13, v21, v31

    move/from16 v0, v21

    invoke-virtual {v4, v0, v13}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_ac

    .line 650
    const/4 v13, 0x2

    move/from16 v0, v31

    if-eq v0, v13, :cond_f5

    .line 652
    move/from16 v0, v19

    if-ne v0, v7, :cond_ee

    .line 653
    aget v32, v6, v7

    .line 654
    .local v32, "sum":I
    add-int/lit8 v24, v7, 0x1

    .line 660
    .local v24, "first":I
    :goto_d1
    move/from16 v25, v24

    .local v25, "i":I
    :goto_d3
    move/from16 v0, v25

    if-ge v0, v11, :cond_10e

    .line 661
    aget v13, v6, v25

    move/from16 v0, v32

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v32

    aput v32, v6, v25

    .line 660
    add-int/lit8 v25, v25, 0x1

    goto :goto_d3

    .line 644
    .end local v24    # "first":I
    .end local v25    # "i":I
    .end local v31    # "state":I
    .end local v32    # "sum":I
    :cond_e4
    move/from16 v0, v19

    if-le v0, v7, :cond_eb

    const/16 v31, 0x2

    .restart local v31    # "state":I
    goto :goto_ba

    .end local v31    # "state":I
    :cond_eb
    const/16 v31, 0x6

    .restart local v31    # "state":I
    goto :goto_ba

    .line 657
    :cond_ee
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v32, v0

    .line 658
    .restart local v32    # "sum":I
    move/from16 v24, v19

    .restart local v24    # "first":I
    goto :goto_d1

    .line 663
    .end local v24    # "first":I
    .end local v32    # "sum":I
    :cond_f5
    if-ge v11, v8, :cond_10a

    .line 664
    aget v32, v6, v19

    .line 665
    .restart local v32    # "sum":I
    add-int/lit8 v25, v19, 0x1

    .restart local v25    # "i":I
    :goto_fb
    move/from16 v0, v25

    if-ge v0, v11, :cond_10e

    .line 666
    aget v13, v6, v25

    move/from16 v0, v32

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v32

    .line 665
    add-int/lit8 v25, v25, 0x1

    goto :goto_fb

    .line 669
    .end local v25    # "i":I
    .end local v32    # "sum":I
    :cond_10a
    iget v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->in:I

    move/from16 v32, v0

    .line 670
    .restart local v32    # "sum":I
    :cond_10e
    move/from16 v0, v32

    iput v0, v4, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 672
    :cond_112
    :goto_112
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getCompleter()Ljava/util/concurrent/CountedCompleter;

    move-result-object v28

    check-cast v28, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .local v28, "par":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-nez v28, :cond_123

    .line 673
    and-int/lit8 v13, v31, 0x4

    if-eqz v13, :cond_86

    .line 674
    invoke-virtual {v4}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->quietlyComplete()V

    goto/16 :goto_86

    .line 677
    :cond_123
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->getPendingCount()I

    move-result v21

    .line 678
    and-int v13, v21, v31

    and-int/lit8 v13, v13, 0x4

    if-eqz v13, :cond_130

    .line 679
    move-object/from16 v4, v28

    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    goto :goto_112

    .line 680
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_130
    and-int v13, v21, v31

    and-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_188

    .line 682
    move-object/from16 v0, v28

    iget-object v12, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->left:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v12, :cond_150

    .line 683
    move-object/from16 v0, v28

    iget-object v3, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->right:Ljava/util/ArrayPrefixHelpers$IntCumulateTask;

    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v3, :cond_150

    .line 684
    iget v0, v12, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v26, v0

    .line 685
    .restart local v26    # "lout":I
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->hi:I

    if-ne v13, v8, :cond_17c

    .end local v26    # "lout":I
    :goto_14a
    move/from16 v0, v26

    move-object/from16 v1, v28

    iput v0, v1, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    .line 688
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    :cond_150
    and-int/lit8 v13, v21, 0x1

    if-nez v13, :cond_185

    .line 689
    move-object/from16 v0, v28

    iget v13, v0, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->lo:I

    if-ne v13, v7, :cond_185

    const/16 v30, 0x1

    .line 690
    .local v30, "refork":I
    :goto_15c
    or-int v13, v21, v31

    or-int v27, v13, v30

    .local v27, "nextState":I
    move/from16 v0, v27

    move/from16 v1, v21

    if-eq v0, v1, :cond_172

    .line 691
    move-object/from16 v0, v28

    move/from16 v1, v21

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v13

    .line 690
    if-eqz v13, :cond_112

    .line 692
    :cond_172
    const/16 v31, 0x2

    .line 693
    move-object/from16 v4, v28

    .line 694
    .restart local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    if-eqz v30, :cond_112

    .line 695
    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto :goto_112

    .line 686
    .end local v4    # "t":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v27    # "nextState":I
    .end local v30    # "refork":I
    .restart local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .restart local v26    # "lout":I
    :cond_17c
    iget v13, v3, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->out:I

    move/from16 v0, v26

    invoke-interface {v5, v0, v13}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v26

    goto :goto_14a

    .line 689
    .end local v3    # "rt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v26    # "lout":I
    :cond_185
    const/16 v30, 0x0

    .restart local v30    # "refork":I
    goto :goto_15c

    .line 698
    .end local v12    # "lt":Ljava/util/ArrayPrefixHelpers$IntCumulateTask;
    .end local v30    # "refork":I
    :cond_188
    or-int v13, v21, v31

    move-object/from16 v0, v28

    move/from16 v1, v21

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayPrefixHelpers$IntCumulateTask;->compareAndSetPendingCount(II)Z

    move-result v13

    if-eqz v13, :cond_112

    goto/16 :goto_86
.end method
