.class final Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJDouble;
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
.field final a:[D

.field final gran:I

.field final lbase:I

.field final lsize:I

.field final rbase:I

.field final rsize:I

.field final w:[D

.field final wbase:I


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountedCompleter;[D[DIIIIII)V
    .registers 10
    .param p2, "a"    # [D
    .param p3, "w"    # [D
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
            "<*>;[D[DIIIIII)V"
        }
    .end annotation

    .prologue
    .line 941
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 942
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->a:[D

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->w:[D

    .line 943
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lsize:I

    .line 944
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rsize:I

    .line 945
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->gran:I

    .line 946
    return-void
.end method


# virtual methods
.method public final compute()V
    .registers 35

    .prologue
    .line 949
    move-object/from16 v0, p0

    iget-object v4, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->a:[D

    .local v4, "a":[D
    move-object/from16 v0, p0

    iget-object v5, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->w:[D

    .line 950
    .local v5, "w":[D
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lbase:I

    move/from16 v18, v0

    .local v18, "lb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lsize:I

    move/from16 v22, v0

    .local v22, "ln":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rbase:I

    move/from16 v24, v0

    .line 951
    .local v24, "rb":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rsize:I

    move/from16 v28, v0

    .local v28, "rn":I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->wbase:I

    move/from16 v16, v0

    .local v16, "k":I
    move-object/from16 v0, p0

    iget v11, v0, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->gran:I

    .line 952
    .local v11, "g":I
    if-eqz v4, :cond_2e

    if-nez v5, :cond_34

    .line 953
    :cond_2e
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3

    .line 952
    :cond_34
    if-ltz v18, :cond_2e

    if-ltz v24, :cond_2e

    if-ltz v16, :cond_2e

    .line 955
    :goto_3a
    move/from16 v0, v22

    move/from16 v1, v28

    if-lt v0, v1, :cond_8b

    .line 956
    move/from16 v0, v22

    if-gt v0, v11, :cond_69

    .line 990
    :cond_44
    add-int v19, v18, v22

    .local v19, "lf":I
    add-int v25, v24, v28

    .local v25, "rf":I
    move/from16 v17, v16

    .line 991
    .end local v16    # "k":I
    .local v17, "k":I
    :goto_4a
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_d8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_d8

    .line 993
    aget-wide v12, v4, v18

    .local v12, "al":D
    aget-wide v14, v4, v24

    .local v14, "ar":D
    cmpg-double v3, v12, v14

    if-gtz v3, :cond_d3

    .line 994
    add-int/lit8 v18, v18, 0x1

    move-wide/from16 v32, v12

    .line 999
    .local v32, "t":D
    :goto_62
    add-int/lit8 v16, v17, 0x1

    .end local v17    # "k":I
    .restart local v16    # "k":I
    aput-wide v32, v5, v17

    move/from16 v17, v16

    .end local v16    # "k":I
    .restart local v17    # "k":I
    goto :goto_4a

    .line 958
    .end local v12    # "al":D
    .end local v14    # "ar":D
    .end local v17    # "k":I
    .end local v19    # "lf":I
    .end local v25    # "rf":I
    .end local v32    # "t":D
    .restart local v16    # "k":I
    :cond_69
    move/from16 v26, v28

    .line 959
    .local v26, "rh":I
    ushr-int/lit8 v20, v22, 0x1

    .local v20, "lh":I
    add-int v3, v20, v18

    aget-wide v30, v4, v3

    .line 960
    .local v30, "split":D
    const/16 v23, 0x0

    .local v23, "lo":I
    :goto_73
    move/from16 v0, v23

    move/from16 v1, v26

    if-ge v0, v1, :cond_b1

    .line 961
    add-int v3, v23, v26

    ushr-int/lit8 v27, v3, 0x1

    .line 962
    .local v27, "rm":I
    add-int v3, v27, v24

    aget-wide v6, v4, v3

    cmpg-double v3, v30, v6

    if-gtz v3, :cond_88

    .line 963
    move/from16 v26, v27

    goto :goto_73

    .line 965
    :cond_88
    add-int/lit8 v23, v27, 0x1

    goto :goto_73

    .line 969
    .end local v20    # "lh":I
    .end local v23    # "lo":I
    .end local v26    # "rh":I
    .end local v27    # "rm":I
    .end local v30    # "split":D
    :cond_8b
    move/from16 v0, v28

    if-le v0, v11, :cond_44

    .line 971
    move/from16 v20, v22

    .line 972
    .restart local v20    # "lh":I
    ushr-int/lit8 v26, v28, 0x1

    .restart local v26    # "rh":I
    add-int v3, v26, v24

    aget-wide v30, v4, v3

    .line 973
    .restart local v30    # "split":D
    const/16 v23, 0x0

    .restart local v23    # "lo":I
    :goto_99
    move/from16 v0, v23

    move/from16 v1, v20

    if-ge v0, v1, :cond_b1

    .line 974
    add-int v3, v23, v20

    ushr-int/lit8 v21, v3, 0x1

    .line 975
    .local v21, "lm":I
    add-int v3, v21, v18

    aget-wide v6, v4, v3

    cmpg-double v3, v30, v6

    if-gtz v3, :cond_ae

    .line 976
    move/from16 v20, v21

    goto :goto_99

    .line 978
    :cond_ae
    add-int/lit8 v23, v21, 0x1

    goto :goto_99

    .line 981
    .end local v21    # "lm":I
    :cond_b1
    new-instance v2, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;

    add-int v6, v18, v20

    sub-int v7, v22, v20

    .line 982
    add-int v8, v24, v26

    sub-int v9, v28, v26

    .line 983
    add-int v3, v16, v20

    add-int v10, v3, v26

    move-object/from16 v3, p0

    .line 981
    invoke-direct/range {v2 .. v11}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIIIII)V

    .line 984
    .local v2, "m":Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;
    move/from16 v28, v26

    .line 985
    move/from16 v22, v20

    .line 986
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->addToPendingCount(I)V

    .line 987
    invoke-virtual {v2}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    goto/16 :goto_3a

    .line 997
    .end local v2    # "m":Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;
    .end local v16    # "k":I
    .end local v20    # "lh":I
    .end local v23    # "lo":I
    .end local v26    # "rh":I
    .end local v30    # "split":D
    .restart local v12    # "al":D
    .restart local v14    # "ar":D
    .restart local v17    # "k":I
    .restart local v19    # "lf":I
    .restart local v25    # "rf":I
    :cond_d3
    add-int/lit8 v24, v24, 0x1

    move-wide/from16 v32, v14

    .restart local v32    # "t":D
    goto :goto_62

    .line 1001
    .end local v12    # "al":D
    .end local v14    # "ar":D
    .end local v32    # "t":D
    :cond_d8
    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_eb

    .line 1002
    sub-int v3, v25, v24

    move/from16 v0, v24

    move/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([DI[DII)V

    .line 1005
    :cond_e7
    :goto_e7
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->tryComplete()V

    .line 1006
    return-void

    .line 1003
    :cond_eb
    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_e7

    .line 1004
    sub-int v3, v19, v18

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v4, v0, v5, v1, v3}, Ljava/lang/System;->arraycopy([DI[DII)V

    goto :goto_e7
.end method
