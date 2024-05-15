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
        "Ljava/util/concurrent/CountedCompleter<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field static final whitelist serialVersionUID:J = 0x21f3ddce4497ab4cL


# instance fields
.field final blacklist a:[D

.field final blacklist gran:I

.field final blacklist lbase:I

.field final blacklist lsize:I

.field final blacklist rbase:I

.field final blacklist rsize:I

.field final blacklist w:[D

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[D[DIIIIII)V
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
            "Ljava/util/concurrent/CountedCompleter<",
            "*>;[D[DIIIIII)V"
        }
    .end annotation

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
.method public final whitelist core-platform-api test-api compute()V
    .registers 24

    .line 949
    move-object/from16 v10, p0

    iget-object v11, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->a:[D

    .local v11, "a":[D
    iget-object v12, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->w:[D

    .line 950
    .local v12, "w":[D
    iget v13, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lbase:I

    .local v13, "lb":I
    iget v0, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->lsize:I

    .local v0, "ln":I
    iget v14, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rbase:I

    .line 951
    .local v14, "rb":I
    iget v1, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->rsize:I

    .local v1, "rn":I
    iget v15, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->wbase:I

    .local v15, "k":I
    iget v9, v10, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->gran:I

    .line 952
    .local v9, "g":I
    if-eqz v11, :cond_cc

    if-eqz v12, :cond_cc

    if-ltz v13, :cond_cc

    if-ltz v14, :cond_cc

    if-ltz v15, :cond_cc

    move v8, v0

    move v7, v1

    .line 955
    .end local v0    # "ln":I
    .end local v1    # "rn":I
    .local v7, "rn":I
    .local v8, "ln":I
    :goto_1e
    const/4 v6, 0x1

    if-lt v8, v7, :cond_43

    .line 956
    if-gt v8, v9, :cond_24

    .line 957
    goto :goto_46

    .line 958
    :cond_24
    move v0, v7

    .line 959
    .local v0, "rh":I
    ushr-int/lit8 v1, v8, 0x1

    move v2, v1

    .local v2, "lh":I
    add-int/2addr v1, v13

    aget-wide v3, v11, v1

    .line 960
    .local v3, "split":D
    const/4 v1, 0x0

    .local v1, "lo":I
    :goto_2c
    if-ge v1, v0, :cond_3e

    .line 961
    add-int v5, v1, v0

    ushr-int/2addr v5, v6

    .line 962
    .local v5, "rm":I
    add-int v16, v5, v14

    aget-wide v16, v11, v16

    cmpg-double v16, v3, v16

    if-gtz v16, :cond_3b

    .line 963
    move v0, v5

    goto :goto_3d

    .line 965
    :cond_3b
    add-int/lit8 v1, v5, 0x1

    .line 966
    .end local v5    # "rm":I
    :goto_3d
    goto :goto_2c

    .line 967
    .end local v1    # "lo":I
    .end local v3    # "split":D
    :cond_3e
    move/from16 v16, v0

    move/from16 v17, v2

    goto :goto_98

    .line 969
    .end local v0    # "rh":I
    .end local v2    # "lh":I
    :cond_43
    if-gt v7, v9, :cond_7a

    .line 970
    nop

    .line 990
    :goto_46
    add-int v0, v13, v8

    .local v0, "lf":I
    add-int v1, v14, v7

    .line 991
    .local v1, "rf":I
    :goto_4a
    if-ge v13, v0, :cond_67

    if-ge v14, v1, :cond_67

    .line 993
    aget-wide v2, v11, v13

    move-wide v4, v2

    .local v4, "al":D
    aget-wide v16, v11, v14

    move-wide/from16 v18, v16

    .local v18, "ar":D
    cmpg-double v2, v2, v16

    if-gtz v2, :cond_5d

    .line 994
    add-int/lit8 v13, v13, 0x1

    move-wide v2, v4

    .local v2, "t":D
    goto :goto_61

    .line 997
    .end local v2    # "t":D
    :cond_5d
    add-int/lit8 v14, v14, 0x1

    move-wide/from16 v2, v18

    .line 999
    .restart local v2    # "t":D
    :goto_61
    add-int/lit8 v6, v15, 0x1

    .end local v15    # "k":I
    .local v6, "k":I
    aput-wide v2, v12, v15

    .line 1000
    .end local v2    # "t":D
    .end local v4    # "al":D
    .end local v18    # "ar":D
    move v15, v6

    goto :goto_4a

    .line 1001
    .end local v6    # "k":I
    .restart local v15    # "k":I
    :cond_67
    if-ge v14, v1, :cond_6f

    .line 1002
    sub-int v2, v1, v14

    invoke-static {v11, v14, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_76

    .line 1003
    :cond_6f
    if-ge v13, v0, :cond_76

    .line 1004
    sub-int v2, v0, v13

    invoke-static {v11, v13, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1005
    :cond_76
    :goto_76
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->tryComplete()V

    .line 1006
    return-void

    .line 971
    .end local v0    # "lf":I
    .end local v1    # "rf":I
    :cond_7a
    move v0, v8

    .line 972
    .local v0, "lh":I
    ushr-int/lit8 v1, v7, 0x1

    move v2, v1

    .local v2, "rh":I
    add-int/2addr v1, v14

    aget-wide v3, v11, v1

    .line 973
    .restart local v3    # "split":D
    const/4 v1, 0x0

    .local v1, "lo":I
    :goto_82
    if-ge v1, v0, :cond_94

    .line 974
    add-int v5, v1, v0

    ushr-int/2addr v5, v6

    .line 975
    .local v5, "lm":I
    add-int v16, v5, v13

    aget-wide v16, v11, v16

    cmpg-double v16, v3, v16

    if-gtz v16, :cond_91

    .line 976
    move v0, v5

    goto :goto_93

    .line 978
    :cond_91
    add-int/lit8 v1, v5, 0x1

    .line 979
    .end local v5    # "lm":I
    :goto_93
    goto :goto_82

    .line 973
    :cond_94
    move/from16 v17, v0

    move/from16 v16, v2

    .line 981
    .end local v0    # "lh":I
    .end local v1    # "lo":I
    .end local v2    # "rh":I
    .end local v3    # "split":D
    .local v16, "rh":I
    .local v17, "lh":I
    :goto_98
    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;

    add-int v4, v13, v17

    sub-int v5, v8, v17

    add-int v19, v14, v16

    sub-int v20, v7, v16

    add-int v0, v15, v17

    add-int v21, v0, v16

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v12

    move-object/from16 v22, v11

    move v11, v6

    .end local v11    # "a":[D
    .local v22, "a":[D
    move/from16 v6, v19

    move/from16 v19, v7

    .end local v7    # "rn":I
    .local v19, "rn":I
    move/from16 v7, v20

    move/from16 v20, v8

    .end local v8    # "ln":I
    .local v20, "ln":I
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9    # "g":I
    .local v21, "g":I
    invoke-direct/range {v0 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[D[DIIIIII)V

    .line 984
    .local v0, "m":Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;
    move/from16 v7, v16

    .line 985
    .end local v19    # "rn":I
    .restart local v7    # "rn":I
    move/from16 v8, v17

    .line 986
    .end local v20    # "ln":I
    .restart local v8    # "ln":I
    invoke-virtual {v10, v11}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->addToPendingCount(I)V

    .line 987
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 988
    .end local v0    # "m":Ljava/util/ArraysParallelSortHelpers$FJDouble$Merger;
    move-object/from16 v11, v22

    goto/16 :goto_1e

    .line 952
    .end local v7    # "rn":I
    .end local v8    # "ln":I
    .end local v16    # "rh":I
    .end local v17    # "lh":I
    .end local v21    # "g":I
    .end local v22    # "a":[D
    .local v0, "ln":I
    .local v1, "rn":I
    .restart local v9    # "g":I
    .restart local v11    # "a":[D
    :cond_cc
    move/from16 v21, v9

    move-object/from16 v22, v11

    .line 953
    .end local v9    # "g":I
    .end local v11    # "a":[D
    .restart local v21    # "g":I
    .restart local v22    # "a":[D
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
