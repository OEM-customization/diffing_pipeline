.class final Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Sorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final blacklist a:[J

.field final blacklist base:I

.field final blacklist gran:I

.field final blacklist size:I

.field final blacklist w:[J

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V
    .registers 8
    .param p2, "a"    # [J
    .param p3, "w"    # [J
    .param p4, "base"    # I
    .param p5, "size"    # I
    .param p6, "wbase"    # I
    .param p7, "gran"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;[J[JIIII)V"
        }
    .end annotation

    .line 685
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 686
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->a:[J

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->w:[J

    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->base:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->size:I

    .line 687
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->wbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->gran:I

    .line 688
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 26

    .line 690
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    .line 691
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    iget-object v15, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->a:[J

    .local v15, "a":[J
    iget-object v14, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->w:[J

    .line 692
    .local v14, "w":[J
    iget v13, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->base:I

    .local v13, "b":I
    iget v2, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->size:I

    .local v2, "n":I
    iget v12, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->wbase:I

    .local v12, "wb":I
    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->gran:I

    move v10, v2

    .line 693
    .end local v2    # "n":I
    .local v10, "n":I
    .local v11, "g":I
    :goto_11
    if-le v10, v11, :cond_c1

    .line 694
    ushr-int/lit8 v16, v10, 0x1

    .local v16, "h":I
    ushr-int/lit8 v17, v16, 0x1

    .local v17, "q":I
    add-int v18, v16, v17

    .line 695
    .local v18, "u":I
    new-instance v9, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v8, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;

    add-int v19, v12, v16

    sub-int v20, v10, v16

    move-object v2, v8

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move v6, v12

    move/from16 v7, v16

    move-object v0, v8

    move/from16 v8, v19

    move-object/from16 v19, v1

    move-object v1, v9

    .end local v1    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v19, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v9, v20

    move/from16 v20, v10

    .end local v10    # "n":I
    .local v20, "n":I
    move v10, v13

    move/from16 v21, v11

    .end local v11    # "g":I
    .local v21, "g":I
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V

    invoke-direct {v1, v0}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move-object v3, v1

    .line 697
    .local v3, "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v1, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;

    add-int v6, v13, v16

    add-int v8, v13, v18

    sub-int v9, v20, v18

    add-int v10, v12, v16

    move-object v2, v1

    move-object v4, v15

    move-object v5, v14

    move/from16 v7, v17

    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V

    invoke-direct {v0, v1}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    move-object v5, v0

    .line 699
    .local v5, "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    add-int v8, v13, v18

    sub-int v9, v20, v18

    add-int v10, v12, v18

    move-object v4, v0

    move-object v6, v15

    move-object v7, v14

    invoke-direct/range {v4 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 700
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    add-int v10, v13, v16

    add-int v1, v12, v16

    move-object v6, v0

    move-object v7, v5

    move-object v8, v15

    move-object v9, v14

    move/from16 v11, v17

    move/from16 v22, v12

    .end local v12    # "wb":I
    .local v22, "wb":I
    move v12, v1

    move v1, v13

    .end local v13    # "b":I
    .local v1, "b":I
    move/from16 v13, v21

    invoke-direct/range {v6 .. v13}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 701
    new-instance v0, Ljava/util/ArraysParallelSortHelpers$Relay;

    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;

    add-int v12, v1, v17

    sub-int v13, v16, v17

    move-object v6, v2

    move-object v7, v3

    move v10, v1

    move-object/from16 v23, v14

    .end local v14    # "w":[J
    .local v23, "w":[J
    move/from16 v14, v22

    move-object/from16 v24, v15

    .end local v15    # "a":[J
    .local v24, "a":[J
    move/from16 v15, v21

    invoke-direct/range {v6 .. v15}, Ljava/util/ArraysParallelSortHelpers$FJLong$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIIIII)V

    invoke-direct {v0, v2}, Ljava/util/ArraysParallelSortHelpers$Relay;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 703
    .local v0, "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;

    add-int v10, v1, v17

    sub-int v11, v16, v17

    add-int v12, v22, v17

    move-object v6, v2

    move-object v7, v0

    move-object/from16 v8, v24

    move-object/from16 v9, v23

    move/from16 v13, v21

    invoke-direct/range {v6 .. v13}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;-><init>(Ljava/util/concurrent/CountedCompleter;[J[JIIII)V

    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJLong$Sorter;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 704
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;

    invoke-direct {v2, v0}, Ljava/util/ArraysParallelSortHelpers$EmptyCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 705
    .end local v19    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .local v2, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    move/from16 v10, v17

    .line 706
    .end local v0    # "bc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v3    # "fc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v5    # "rc":Ljava/util/ArraysParallelSortHelpers$Relay;
    .end local v16    # "h":I
    .end local v17    # "q":I
    .end local v18    # "u":I
    .end local v20    # "n":I
    .restart local v10    # "n":I
    move-object/from16 v0, p0

    move v13, v1

    move-object v1, v2

    move/from16 v11, v21

    move/from16 v12, v22

    move-object/from16 v14, v23

    move-object/from16 v15, v24

    goto/16 :goto_11

    .line 707
    .end local v2    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .end local v21    # "g":I
    .end local v22    # "wb":I
    .end local v23    # "w":[J
    .end local v24    # "a":[J
    .local v1, "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v11    # "g":I
    .restart local v12    # "wb":I
    .restart local v13    # "b":I
    .restart local v14    # "w":[J
    .restart local v15    # "a":[J
    :cond_c1
    move-object/from16 v19, v1

    move/from16 v20, v10

    move/from16 v22, v12

    move v1, v13

    move-object/from16 v23, v14

    move-object/from16 v24, v15

    .end local v10    # "n":I
    .end local v12    # "wb":I
    .end local v13    # "b":I
    .end local v14    # "w":[J
    .end local v15    # "a":[J
    .local v1, "b":I
    .restart local v19    # "s":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    .restart local v20    # "n":I
    .restart local v22    # "wb":I
    .restart local v23    # "w":[J
    .restart local v24    # "a":[J
    add-int v13, v1, v20

    add-int/lit8 v4, v13, -0x1

    move-object/from16 v2, v24

    move v3, v1

    move-object/from16 v5, v23

    move/from16 v6, v22

    move/from16 v7, v20

    invoke-static/range {v2 .. v7}, Ljava/util/DualPivotQuicksort;->sort([JII[JII)V

    .line 708
    invoke-virtual/range {v19 .. v19}, Ljava/util/concurrent/CountedCompleter;->tryComplete()V

    .line 709
    return-void
.end method