.class final Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJInt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Merger"
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
.field static final serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final a:[I

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[I

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[I[IIIIIII)V
    .registers 10
    .param p2, "a"    # [I
    .param p3, "w"    # [I
    .param p4, "lbase"    # I
    .param p5, "lsize"    # I
    .param p6, "rbase"    # I
    .param p7, "rsize"    # I
    .param p8, "wbase"    # I
    .param p9, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter",
            "<*>;[I[IIIIIII)V"
        }
    .end annotation

    .prologue
    .line 608
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 609
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->a:[I

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->w:[I

    .line 610
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lsize:I

    .line 611
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rsize:I

    .line 612
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->gran:I

    .line 613
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 30

    .prologue
    .line 616
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->a:[I

    .local v4, "a":[I
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->w:[I

    .line 617
    .local v5, "w":[I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lbase:I

    move/from16 v16, v0

    .local v16, "lb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->lsize:I

    move/from16 v20, v0

    .local v20, "ln":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rbase:I

    move/from16 v22, v0

    .line 618
    .local v22, "rb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->rsize:I

    move/from16 v26, v0

    .local v26, "rn":I
    move-object/from16 v0, p0

    iget v14, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->wbase:I

    .local v14, "k":I
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->gran:I

    .line 619
    .local v11, "g":I
    if-eqz v4, :cond_2c

    if-nez v5, :cond_32

    .line 620
    :cond_2c
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 619
    :cond_32
    if-ltz v16, :cond_2c

    if-ltz v22, :cond_2c

    if-ltz v14, :cond_2c

    .line 622
    :goto_38
    move/from16 v0, v20

    move/from16 v1, v26

    if-lt v0, v1, :cond_85

    .line 623
    move/from16 v0, v20

    if-gt v0, v11, :cond_63

    .line 657
    :cond_42
    add-int v17, v16, v20

    .local v17, "lf":I
    add-int v23, v22, v26

    .local v23, "rf":I
    move v15, v14

    .line 658
    .end local v14    # "k":I
    .local v15, "k":I
    :goto_47
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_d2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_d2

    .line 660
    aget v12, v4, v16

    .local v12, "al":I
    aget v13, v4, v22

    .local v13, "ar":I
    if-gt v12, v13, :cond_cd

    .line 661
    add-int/lit8 v16, v16, 0x1

    move/from16 v28, v12

    .line 666
    .local v28, "t":I
    :goto_5d
    add-int/lit8 v14, v15, 0x1

    .end local v15    # "k":I
    .restart local v14    # "k":I
    aput v28, v5, v15

    move v15, v14

    .end local v14    # "k":I
    .restart local v15    # "k":I
    goto :goto_47

    .line 625
    .end local v12    # "al":I
    .end local v13    # "ar":I
    .end local v15    # "k":I
    .end local v17    # "lf":I
    .end local v23    # "rf":I
    .end local v28    # "t":I
    .restart local v14    # "k":I
    :cond_63
    move/from16 v24, v26

    .line 626
    .local v24, "rh":I
    ushr-int/lit8 v18, v20, 0x1

    .local v18, "lh":I
    add-int v3, v18, v16

    aget v27, v4, v3

    .line 627
    .local v27, "split":I
    const/16 v21, 0x0

    .local v21, "lo":I
    :goto_6d
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_ab

    .line 628
    add-int v3, v21, v24

    ushr-int/lit8 v25, v3, 0x1

    .line 629
    .local v25, "rm":I
    add-int v3, v25, v22

    aget v3, v4, v3

    move/from16 v0, v27

    if-gt v0, v3, :cond_82

    .line 630
    move/from16 v24, v25

    goto :goto_6d

    .line 632
    :cond_82
    add-int/lit8 v21, v25, 0x1

    goto :goto_6d

    .line 636
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v25    # "rm":I
    .end local v27    # "split":I
    :cond_85
    move/from16 v0, v26

    if-le v0, v11, :cond_42

    .line 638
    move/from16 v18, v20

    .line 639
    .restart local v18    # "lh":I
    ushr-int/lit8 v24, v26, 0x1

    .restart local v24    # "rh":I
    add-int v3, v24, v22

    aget v27, v4, v3

    .line 640
    .restart local v27    # "split":I
    const/16 v21, 0x0

    .restart local v21    # "lo":I
    :goto_93
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_ab

    .line 641
    add-int v3, v21, v18

    ushr-int/lit8 v19, v3, 0x1

    .line 642
    .local v19, "lm":I
    add-int v3, v19, v16

    aget v3, v4, v3

    move/from16 v0, v27

    if-gt v0, v3, :cond_a8

    .line 643
    move/from16 v18, v19

    goto :goto_93

    .line 645
    :cond_a8
    add-int/lit8 v21, v19, 0x1

    goto :goto_93

    .line 648
    .end local v19    # "lm":I
    :cond_ab
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;

    add-int v6, v16, v18

    sub-int v7, v20, v18

    .line 649
    add-int v8, v22, v24

    sub-int v9, v26, v24

    .line 650
    add-int v3, v14, v18

    add-int v10, v3, v24

    move-object/from16 v3, p0

    .line 648
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[I[IIIIIII)V

    .line 651
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;
    move/from16 v26, v24

    .line 652
    move/from16 v20, v18

    .line 653
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->addToPendingCount(I)V

    .line 654
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_38

    .line 664
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;
    .end local v14    # "k":I
    .end local v18    # "lh":I
    .end local v21    # "lo":I
    .end local v24    # "rh":I
    .end local v27    # "split":I
    .restart local v12    # "al":I
    .restart local v13    # "ar":I
    .restart local v15    # "k":I
    .restart local v17    # "lf":I
    .restart local v23    # "rf":I
    :cond_cd
    add-int/lit8 v22, v22, 0x1

    move/from16 v28, v13

    .restart local v28    # "t":I
    goto :goto_5d

    .line 668
    .end local v12    # "al":I
    .end local v13    # "ar":I
    .end local v28    # "t":I
    :cond_d2
    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_e3

    .line 669
    sub-int v3, v23, v22

    move/from16 v0, v22

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 672
    :cond_df
    :goto_df
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArraysParallelSortHelpers$FJInt$Merger;->tryComplete()V

    .line 673
    return-void

    .line 670
    :cond_e3
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_df

    .line 671
    sub-int v3, v17, v16

    move/from16 v0, v16

    invoke-static {v4, v0, v5, v15, v3}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_df
.end method