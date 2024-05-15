.class final Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;
.super Ljava/util/concurrent/CountedCompleter;
.source "ArraysParallelSortHelpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ArraysParallelSortHelpers$FJChar;
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
.field final blacklist a:[C

.field final blacklist gran:I

.field final blacklist lbase:I

.field final blacklist lsize:I

.field final blacklist rbase:I

.field final blacklist rsize:I

.field final blacklist w:[C

.field final blacklist wbase:I


# direct methods
.method constructor blacklist <init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V
    .registers 10
    .param p2, "a"    # [C
    .param p3, "w"    # [C
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
            "*>;[C[CIIIIII)V"
        }
    .end annotation

    .line 386
    .local p1, "par":Ljava/util/concurrent/CountedCompleter;, "Ljava/util/concurrent/CountedCompleter<*>;"
    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    .line 387
    iput-object p2, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->a:[C

    iput-object p3, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->w:[C

    .line 388
    iput p4, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->lbase:I

    iput p5, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->lsize:I

    .line 389
    iput p6, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->rbase:I

    iput p7, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->rsize:I

    .line 390
    iput p8, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->wbase:I

    iput p9, p0, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->gran:I

    .line 391
    return-void
.end method


# virtual methods
.method public final whitelist test-api compute()V
    .registers 24

    .line 394
    move-object/from16 v10, p0

    iget-object v11, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->a:[C

    .local v11, "a":[C
    iget-object v12, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->w:[C

    .line 395
    .local v12, "w":[C
    iget v13, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->lbase:I

    .local v13, "lb":I
    iget v0, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->lsize:I

    .local v0, "ln":I
    iget v14, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->rbase:I

    .line 396
    .local v14, "rb":I
    iget v1, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->rsize:I

    .local v1, "rn":I
    iget v15, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->wbase:I

    .local v15, "k":I
    iget v9, v10, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->gran:I

    .line 397
    .local v9, "g":I
    if-eqz v11, :cond_c4

    if-eqz v12, :cond_c4

    if-ltz v13, :cond_c4

    if-ltz v14, :cond_c4

    if-ltz v15, :cond_c4

    move v8, v0

    move v7, v1

    .line 400
    .end local v0    # "ln":I
    .end local v1    # "rn":I
    .local v7, "rn":I
    .local v8, "ln":I
    :goto_1e
    const/4 v6, 0x1

    if-lt v8, v7, :cond_41

    .line 401
    if-gt v8, v9, :cond_24

    .line 402
    goto :goto_44

    .line 403
    :cond_24
    move v0, v7

    .line 404
    .local v0, "rh":I
    ushr-int/lit8 v1, v8, 0x1

    move v2, v1

    .local v2, "lh":I
    add-int/2addr v1, v13

    aget-char v1, v11, v1

    .line 405
    .local v1, "split":C
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_2c
    if-ge v3, v0, :cond_3c

    .line 406
    add-int v4, v3, v0

    ushr-int/2addr v4, v6

    .line 407
    .local v4, "rm":I
    add-int v5, v4, v14

    aget-char v5, v11, v5

    if-gt v1, v5, :cond_39

    .line 408
    move v0, v4

    goto :goto_3b

    .line 410
    :cond_39
    add-int/lit8 v3, v4, 0x1

    .line 411
    .end local v4    # "rm":I
    :goto_3b
    goto :goto_2c

    .line 412
    .end local v1    # "split":C
    .end local v3    # "lo":I
    :cond_3c
    move/from16 v16, v0

    move/from16 v17, v2

    goto :goto_90

    .line 414
    .end local v0    # "rh":I
    .end local v2    # "lh":I
    :cond_41
    if-gt v7, v9, :cond_74

    .line 415
    nop

    .line 435
    :goto_44
    add-int v0, v13, v8

    .local v0, "lf":I
    add-int v1, v14, v7

    .line 436
    .local v1, "rf":I
    :goto_48
    if-ge v13, v0, :cond_61

    if-ge v14, v1, :cond_61

    .line 438
    aget-char v2, v11, v13

    move v3, v2

    .local v3, "al":C
    aget-char v4, v11, v14

    move v5, v4

    .local v5, "ar":C
    if-gt v2, v4, :cond_58

    .line 439
    add-int/lit8 v13, v13, 0x1

    move v2, v3

    .local v2, "t":C
    goto :goto_5b

    .line 442
    .end local v2    # "t":C
    :cond_58
    add-int/lit8 v14, v14, 0x1

    move v2, v5

    .line 444
    .restart local v2    # "t":C
    :goto_5b
    add-int/lit8 v4, v15, 0x1

    .end local v15    # "k":I
    .local v4, "k":I
    aput-char v2, v12, v15

    .line 445
    .end local v2    # "t":C
    .end local v3    # "al":C
    .end local v5    # "ar":C
    move v15, v4

    goto :goto_48

    .line 446
    .end local v4    # "k":I
    .restart local v15    # "k":I
    :cond_61
    if-ge v14, v1, :cond_69

    .line 447
    sub-int v2, v1, v14

    invoke-static {v11, v14, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_70

    .line 448
    :cond_69
    if-ge v13, v0, :cond_70

    .line 449
    sub-int v2, v0, v13

    invoke-static {v11, v13, v12, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 450
    :cond_70
    :goto_70
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->tryComplete()V

    .line 451
    return-void

    .line 416
    .end local v0    # "lf":I
    .end local v1    # "rf":I
    :cond_74
    move v0, v8

    .line 417
    .local v0, "lh":I
    ushr-int/lit8 v1, v7, 0x1

    move v2, v1

    .local v2, "rh":I
    add-int/2addr v1, v14

    aget-char v1, v11, v1

    .line 418
    .local v1, "split":C
    const/4 v3, 0x0

    .local v3, "lo":I
    :goto_7c
    if-ge v3, v0, :cond_8c

    .line 419
    add-int v4, v3, v0

    ushr-int/2addr v4, v6

    .line 420
    .local v4, "lm":I
    add-int v5, v4, v13

    aget-char v5, v11, v5

    if-gt v1, v5, :cond_89

    .line 421
    move v0, v4

    goto :goto_8b

    .line 423
    :cond_89
    add-int/lit8 v3, v4, 0x1

    .line 424
    .end local v4    # "lm":I
    :goto_8b
    goto :goto_7c

    .line 418
    :cond_8c
    move/from16 v17, v0

    move/from16 v16, v2

    .line 426
    .end local v0    # "lh":I
    .end local v1    # "split":C
    .end local v2    # "rh":I
    .end local v3    # "lo":I
    .local v16, "rh":I
    .local v17, "lh":I
    :goto_90
    new-instance v18, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;

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

    .end local v11    # "a":[C
    .local v22, "a":[C
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
    invoke-direct/range {v0 .. v9}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;-><init>(Ljava/util/concurrent/CountedCompleter;[C[CIIIIII)V

    .line 429
    .local v0, "m":Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;
    move/from16 v7, v16

    .line 430
    .end local v19    # "rn":I
    .restart local v7    # "rn":I
    move/from16 v8, v17

    .line 431
    .end local v20    # "ln":I
    .restart local v8    # "ln":I
    invoke-virtual {v10, v11}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->addToPendingCount(I)V

    .line 432
    invoke-virtual {v0}, Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;->fork()Ljava/util/concurrent/ForkJoinTask;

    .line 433
    .end local v0    # "m":Ljava/util/ArraysParallelSortHelpers$FJChar$Merger;
    move-object/from16 v11, v22

    goto/16 :goto_1e

    .line 397
    .end local v7    # "rn":I
    .end local v8    # "ln":I
    .end local v16    # "rh":I
    .end local v17    # "lh":I
    .end local v21    # "g":I
    .end local v22    # "a":[C
    .local v0, "ln":I
    .local v1, "rn":I
    .restart local v9    # "g":I
    .restart local v11    # "a":[C
    :cond_c4
    move/from16 v21, v9

    move-object/from16 v22, v11

    .line 398
    .end local v9    # "g":I
    .end local v11    # "a":[C
    .restart local v21    # "g":I
    .restart local v22    # "a":[C
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
