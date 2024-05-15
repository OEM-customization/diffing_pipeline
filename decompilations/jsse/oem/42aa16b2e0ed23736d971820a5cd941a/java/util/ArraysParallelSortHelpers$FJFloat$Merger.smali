.class final Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJFloat;
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
.field final blacklist a:[F

.field final blacklist gran:I

.field final blacklist lbase:I

.field final blacklist lsize:I

.field final blacklist rbase:I

.field final blacklist rsize:I

.field final blacklist w:[F

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[F[FIIIIII)V
    .registers 10
    .param p2, "a"    # [F
    .param p3, "w"    # [F
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
            "*>;[F[FIIIIII)V"
        }
    .end annotation

    .line 830
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 831
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->a:[F

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->w:[F

    .line 832
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lsize:I

    .line 833
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rsize:I

    .line 834
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->gran:I

    .line 835
    return-void
.end method


# virtual methods
.method public final whitelist core-platform-api test-api compute()V
    .registers 24

    .line 838
    move-object/from16 v10, p0

    iget-object v11, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->a:[F

    .local v11, "a":[F
    iget-object v12, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->w:[F

    .line 839
    .local v12, "w":[F
    iget v13, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lbase:I

    .local v13, "lb":I
    iget v0, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->lsize:I

    .local v0, "ln":I
    iget v14, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rbase:I

    .line 840
    .local v14, "rb":I
    iget v1, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->rsize:I

    .local v1, "rn":I
    iget v15, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->wbase:I

    .local v15, "k":I
    iget v9, v10, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->gran:I

    .line 841
    .local v9, "g":I
    if-eqz v11, :cond_ca

    if-eqz v12, :cond_ca

    if-ltz v13, :cond_ca

    if-ltz v14, :cond_ca

    if-ltz v15, :cond_ca

    move v8, v0

    move v7, v1

    .line 844
    .end local v0    # "ln":I
    .end local v1    # "rn":I
    .local v7, "rn":I
    .local v8, "ln":I
    :goto_1e
    const/4 v6, 0x1

    if-lt v8, v7, :cond_43

    .line 845
    if-gt v8, v9, :cond_24

    .line 846
    goto :goto_46

    .line 847
    :cond_24
    move v0, v7

    .line 848
    .local v0, "rh":I
    ushr-int/lit8 v1, v8, 0x1

    move v2, v1

    .local v2, "lh":I
    add-int/2addr v1, v13

    aget v1, v11, v1

    .line 849
    .local v1, "split":F
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_2c
    if-ge v3, v0, :cond_3e

    .line 850
    add-int v4, v3, v0

    ushr-int/2addr v4, v6

    .line 851
    .local v4, "rm":I
    add-int v5, v4, v14

    aget v5, v11, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_3b

    .line 852
    move v0, v4

    goto :goto_3d

    .line 854
    :cond_3b
    add-int/lit8 v3, v4, 0x1

    .line 855
    .end local v4    # "rm":I
    :goto_3d
    goto :goto_2c

    .line 856
    .end local v1    # "split":F
    .end local v3    # "lo":I
    :cond_3e
    move/from16 v16, v0

    move/from16 v17, v2

    goto :goto_96

    .line 858
    .end local v0    # "rh":I
    .end local v2    # "lh":I
    :cond_43
    if-gt v7, v9, :cond_78

    .line 859
    nop

    .line 879
    :goto_46
    add-int v0, v13, v8

    .local v0, "lf":I
    add-int v1, v14, v7

    .line 880
    .local v1, "rf":I
    :goto_4a
    if-ge v13, v0, :cond_65

    if-ge v14, v1, :cond_65

    .line 882
    aget v2, v11, v13

    move v3, v2

    .local v3, "al":F
    aget v4, v11, v14

    move v5, v4

    .local v5, "ar":F
    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5c

    .line 883
    add-int/lit8 v13, v13, 0x1

    move v2, v3

    .local v2, "t":F
    goto :goto_5f

    .line 886
    .end local v2    # "t":F
    :cond_5c
    add-int/lit8 v14, v14, 0x1

    move v2, v5

    .line 888
    .restart local v2    # "t":F
    :goto_5f
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "k":I
    .local v4, "k":I
    aput v2, v12, v15

    .line 889
    .end local v2    # "t":F
    .end local v3    # "al":F
    .end local v5    # "ar":F
    move v15, v4

    goto :goto_4a

    .line 890
    .end local v4    # "k":I
    .restart local v15    # "k":I
    :cond_65
    if-ge v14, v1, :cond_6d

    .line 891
    sub-int v2, v1, v14

    invoke-static {v11, v14, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_74

    .line 892
    :cond_6d
    if-ge v13, v0, :cond_74

    .line 893
    sub-int v2, v0, v13

    invoke-static {v11, v13, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 894
    :cond_74
    :goto_74
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->tryComplete()V

    .line 895
    return-void

    .line 860
    .end local v0    # "lf":I
    .end local v1    # "rf":I
    :cond_78
    move v0, v8

    .line 861
    .local v0, "lh":I
    ushr-int/lit8 v1, v7, 0x1

    move v2, v1

    .local v2, "rh":I
    add-int/2addr v1, v14

    aget v1, v11, v1

    .line 862
    .local v1, "split":F
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_80
    if-ge v3, v0, :cond_92

    .line 863
    add-int v4, v3, v0

    ushr-int/2addr v4, v6

    .line 864
    .local v4, "lm":I
    add-int v5, v4, v13

    aget v5, v11, v5

    cmpg-float v5, v1, v5

    if-gtz v5, :cond_8f

    .line 865
    move v0, v4

    goto :goto_91

    .line 867
    :cond_8f
    add-int/lit8 v3, v4, 0x1

    .line 868
    .end local v4    # "lm":I
    :goto_91
    goto :goto_80

    .line 862
    :cond_92
    move/from16 v17, v0

    move/from16 v16, v2

    .line 870
    .end local v0    # "lh":I
    .end local v1    # "split":F
    .end local v2    # "rh":I
    .end local v3    # "lo":I
    .local v16, "rh":I
    .local v17, "lh":I
    :goto_96
    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;

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

    .end local v11    # "a":[F
    .local v22, "a":[F
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
    invoke-direct/range {v0 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[F[FIIIIII)V

    .line 873
    .local v0, "m":Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
    move/from16 v7, v16

    .line 874
    .end local v19    # "rn":I
    .restart local v7    # "rn":I
    move/from16 v8, v17

    .line 875
    .end local v20    # "ln":I
    .restart local v8    # "ln":I
    invoke-virtual {v10, v11}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->addToPendingCount(I)V

    .line 876
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 877
    .end local v0    # "m":Ljava/util/ArraysParallelSortHelpers$FJFloat$Merger;
    move-object/from16 v11, v22

    goto/16 :goto_1e

    .line 841
    .end local v7    # "rn":I
    .end local v8    # "ln":I
    .end local v16    # "rh":I
    .end local v17    # "lh":I
    .end local v21    # "g":I
    .end local v22    # "a":[F
    .local v0, "ln":I
    .local v1, "rn":I
    .restart local v9    # "g":I
    .restart local v11    # "a":[F
    :cond_ca
    move/from16 v21, v9

    move-object/from16 v22, v11

    .line 842
    .end local v9    # "g":I
    .end local v11    # "a":[F
    .restart local v21    # "g":I
    .restart local v22    # "a":[F
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
